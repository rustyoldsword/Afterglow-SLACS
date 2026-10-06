Scriptname SLPPlusUBECum Hidden
{
	SexLab P+ UBE Cum Overlay Patch (RaceCompatibilityCondition).

	SexLab P+ builds its cum overlay texture path in sslActorLibrary.BeginOverlay() as
		"SexLab/CumFx/<Type>/<Set>/<Layer>.dds"
	which are CBBE UV maps. UBE bodies use a different UV layout, so those overlays land
	in the wrong places on UBE races.

	The shipped sslActorLibrary.pex is patched (one CallStatic inserted right after
	texturePath is assigned) so that it asks this script for the final path. For UBE
	actors we return the UBE variant under "SexLab/CumFx/UBE/...", everyone else keeps
	the stock CBBE path.

	The actor's real race is read through RaceCompatibilityCondition, because with
	GetSetRaceHook enabled Actor.GetRace() reports the vanilla proxy race instead of the
	UBE one.
}

; ------------------------------------------------------------------ ;
; --- Constants                                                  --- ;
; ------------------------------------------------------------------ ;

String Function StockRoot() Global
	Return "SexLab/CumFx/"
EndFunction

String Function UBERoot() Global
	Return "SexLab/CumFx/UBE/"
EndFunction

; Set folder this patch ships. Used whenever the set SexLab picked has no UBE variant.
String Function ShippedSet() Global
	Return "SLACS"
EndFunction

String Function UBEPlugin() Global
	Return "UBE_AllRace.esp"
EndFunction

String Function DebugKey() Global
	Return "SLPPlusUBECum_Debug"
EndFunction

String Function RaceCacheKey() Global
	Return "SLPPlusUBECum_IsUBERace"
EndFunction

String Function NativeKey() Global
	Return "SLPPlusUBECum_NativeOverlays"
EndFunction

String Function RebuildKey() Global
	Return "SLPPlusUBECum_Rebuild3D"
EndFunction

; ------------------------------------------------------------------ ;
; --- Native overlay gate (called from patched ApplyOverlay)     --- ;
; ------------------------------------------------------------------ ;
; sslActorLibrary.ApplyOverlay() is patched to return immediately when this is false.
; Everything else in SexLab P+ (spells, layer bookkeeping, timers, SexLabApplyCum /
; SexLabClearCum events) keeps running, so SLACS can draw the overlays instead.
; Default 0 = SexLab P+'s own overlays OFF (SLACS SCO handles them).
Bool Function NativeOverlaysEnabled() Global
	Return StorageUtil.GetIntValue(None, NativeKey(), 0) == 1
EndFunction

Function SetNative(Int aiEnabled) Global
	StorageUtil.SetIntValue(None, NativeKey(), aiEnabled)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLab P+ native cum overlays " + BoolWord(aiEnabled == 1) + " (SLACS SCO draws them when this is no)")
EndFunction

; ------------------------------------------------------------------ ;
; --- 3D rebuild gate (called from SLACS_Main)                   --- ;
; ------------------------------------------------------------------ ;
; After applying or clearing cum, SLACS calls Actor.QueueNiNodeUpdate() so the new overlay shows
; up at once. That rebuild is also the most expensive thing in the whole chain: it re-runs HDT-SMP
; and CBPC physics, BodySlide morphs, TNG and every RaceMenu overlay on the actor, which is the
; hitch people see at the moment of the cumshot. With this switched off only
; NiOverride.ApplyNodeOverrides is used, and the head refresh event for WetFunction is not raised.
; Default 1 = rebuild, i.e. the behaviour of the previous build.
Bool Function RebuildEnabled() Global
	Return StorageUtil.GetIntValue(None, RebuildKey(), 1) == 1
EndFunction

Function SetRebuild(Int aiEnabled) Global
	StorageUtil.SetIntValue(None, RebuildKey(), aiEnabled)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] 3D rebuild after applying cum: " + BoolWord(aiEnabled == 1) + " (off is faster; check that cum still shows up immediately)")
EndFunction

; ------------------------------------------------------------------ ;
; --- Entry point called from the patched sslActorLibrary.pex    --- ;
; ------------------------------------------------------------------ ;

; asDefaultPath is the path SexLab P+ just built. Returning it unchanged is always safe.
String Function ResolveTexturePath(Actor akTarget, Int aiType, String asSet, Int aiLayer, String asDefaultPath) Global
	If (akTarget == None || asDefaultPath == "")
		Return asDefaultPath
	EndIf

	String typeStr = TypeToString(aiType)
	If (typeStr == "")
		Return asDefaultPath
	EndIf

	If (!IsUBEActor(akTarget))
		Trace(akTarget, "non-UBE race, keeping " + asDefaultPath)
		Return asDefaultPath
	EndIf

	; Does file probing work in this setup? If the path SexLab itself just built cannot be
	; seen, MiscUtil.FileExists is not usable here and we fall back to the shipped layout.
	Bool canProbe = MiscUtil.FileExists("Data/textures/" + asDefaultPath)

	If (asSet != "")
		String samePath = UBERoot() + typeStr + "/" + asSet + "/" + aiLayer + ".dds"
		If (canProbe && MiscUtil.FileExists("Data/textures/" + samePath))
			Trace(akTarget, "UBE race, using " + samePath)
			Return samePath
		EndIf
	EndIf

	String shippedPath = UBERoot() + typeStr + "/" + ShippedSet() + "/" + aiLayer + ".dds"
	If (!canProbe || MiscUtil.FileExists("Data/textures/" + shippedPath))
		Trace(akTarget, "UBE race, using " + shippedPath)
		Return shippedPath
	EndIf

	Trace(akTarget, "UBE race, but no UBE texture for set " + asSet + " layer " + aiLayer + ", keeping " + asDefaultPath)
	Return asDefaultPath
EndFunction

; ------------------------------------------------------------------ ;
; --- Race detection                                             --- ;
; ------------------------------------------------------------------ ;

Bool Function IsUBEActor(Actor akTarget) Global
	If (akTarget == None)
		Return False
	EndIf

	; 1) Native race editor id. Reads the actor's real race in C++, so the papyrus
	;    GetRace hook of RaceCompatibilityCondition does not hide the UBE race here.
	If (StringUtil.Find(MiscUtil.GetActorRaceEditorID(akTarget), "UBE") >= 0)
		Return True
	EndIf

	; 2) Real race straight from RaceCompatibilityCondition.
	Race realRace = RaceCompatibilityCondition.GetRaceActor(akTarget)
	If (realRace == None)
		ActorBase base = akTarget.GetActorBase()
		If (base != None)
			realRace = RaceCompatibilityCondition.GetRaceActorBase(base)
		EndIf
	EndIf
	If (realRace == None)
		realRace = akTarget.GetRace()
	EndIf
	If (realRace == None)
		Return False
	EndIf

	Return IsUBERace(realRace)
EndFunction

Bool Function IsUBERace(Race akRace) Global
	If (akRace == None)
		Return False
	EndIf

	Int cached = StorageUtil.GetIntValue(akRace, RaceCacheKey(), -1)
	If (cached >= 0)
		Return cached == 1
	EndIf

	Bool result = StringUtil.Find(MiscUtil.GetRaceEditorID(akRace), "UBE") >= 0
	If (!result)
		result = IsUBEPluginRace(akRace)
	EndIf

	StorageUtil.SetIntValue(akRace, RaceCacheKey(), result as Int)
	Return result
EndFunction

; Fallback for setups where race editor ids are not available at runtime: compare against
; every race UBE_AllRace.esp declares.
Bool Function IsUBEPluginRace(Race akRace) Global
	Int[] ids = new Int[18]
	ids[0]  = 0x005734	; 00UBE_BretonRace
	ids[1]  = 0x005735	; 00UBE_BretonRaceVampire
	ids[2]  = 0x05A179	; 00UBE_ImperialRace
	ids[3]  = 0x05A17A	; 00UBE_ImperialRaceVampire
	ids[4]  = 0x05A184	; 00UBE_NordRace
	ids[5]  = 0x05A185	; 00UBE_NordRaceVampire
	ids[6]  = 0x05A18E	; 00UBE_RedguardRace
	ids[7]  = 0x05A18F	; 00UBE_RedguardRaceVampire
	ids[8]  = 0x05A198	; 00UBE_DarkElfRace
	ids[9]  = 0x05A199	; 00UBE_DarkElfRaceVampire
	ids[10] = 0x05A1A2	; 00UBE_HighElfRace
	ids[11] = 0x05A1A3	; 00UBE_HighElfRaceVampire
	ids[12] = 0x05A1AC	; 00UBE_WoodElfRace
	ids[13] = 0x05A1AD	; 00UBE_WoodElfRaceVampire
	ids[14] = 0x05A1B0	; 00UBE_OrcRace
	ids[15] = 0x05A1B1	; 00UBE_OrcRaceVampire
	ids[16] = 0x07A4D5	; 00UBE_CustomRace01
	ids[17] = 0x07A4D6	; 00UBE_CustomRace02

	Int i = 0
	While (i < ids.Length)
		If (Game.GetFormFromFile(ids[i], UBEPlugin()) == akRace as Form)
			Return True
		EndIf
		i += 1
	EndWhile
	Return False
EndFunction

; ------------------------------------------------------------------ ;
; --- Helpers                                                    --- ;
; ------------------------------------------------------------------ ;

; Mirrors sslActorLibrary.TypeToString(). 0 vaginal, 1 anal, 2 oral.
String Function TypeToString(Int aiType) Global
	If (aiType == 0)
		Return "Vaginal"
	ElseIf (aiType == 1)
		Return "Anal"
	ElseIf (aiType == 2)
		Return "Oral"
	EndIf
	Return ""
EndFunction

; Same, but also names the "every type at once" value sslActorLibrary calls FX_ALL.
String Function TypeLabel(Int aiType) Global
	If (aiType == -1)
		Return "All"
	EndIf
	String label = TypeToString(aiType)
	If (label == "")
		Return "Unknown"
	EndIf
	Return label
EndFunction

Function Trace(Actor akTarget, String asMessage) Global
	TraceLine(GetName(akTarget) + ": " + asMessage)
EndFunction

; Every line goes to the Papyrus log, to the console (when debug is on) and to an own file
; that does not depend on Papyrus logging being enabled:
;   Data\SKSE\Plugins\SLPPlusUBECum.log   (with MO2 this lands in the overwrite folder)
Function TraceLine(String asMessage) Global
	String line = "[SLP+ UBE Cum] " + asMessage
	Debug.Trace(line)
	MiscUtil.WriteToFile(LogFile(), line + "\n", true, true)
	If (IsDebug())
		MiscUtil.PrintConsole(line)
	EndIf
EndFunction

String Function LogFile() Global
	Return "Data/SKSE/Plugins/SLPPlusUBECum.log"
EndFunction

String Function GetName(Actor akTarget) Global
	If (akTarget == None)
		Return "None"
	EndIf
	Return akTarget.GetLeveledActorBase().GetName()
EndFunction

; ------------------------------------------------------------------ ;
; --- Console helpers (SKSE/CustomConsole/SLPPlusUBECum.yaml)    --- ;
; ------------------------------------------------------------------ ;

Bool Function IsDebug() Global
	Return StorageUtil.GetIntValue(None, DebugKey(), 1) == 1
EndFunction

Function SetDebug(Int aiEnabled) Global
	StorageUtil.SetIntValue(None, DebugKey(), aiEnabled)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] console logging " + BoolWord(aiEnabled == 1))
EndFunction

Function Status() Global
	Actor player = Game.GetPlayer()
	MiscUtil.PrintConsole("[SLP+ UBE Cum] patch loaded, console logging " + BoolWord(IsDebug()) + ", SexLab P+ native overlays " + BoolWord(NativeOverlaysEnabled()) + ", 3D rebuild " + BoolWord(RebuildEnabled()))
	MiscUtil.PrintConsole("[SLP+ UBE Cum] player race editor id (native): " + MiscUtil.GetActorRaceEditorID(player))
	Race realRace = RaceCompatibilityCondition.GetRaceActor(player)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] race via RaceCompatibilityCondition: " + realRace + " " + MiscUtil.GetRaceEditorID(realRace))
	MiscUtil.PrintConsole("[SLP+ UBE Cum] race via Actor.GetRace(): " + player.GetRace() + " " + MiscUtil.GetRaceEditorID(player.GetRace()))
	MiscUtil.PrintConsole("[SLP+ UBE Cum] treated as UBE: " + BoolWord(IsUBEActor(player)))
	MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLab P+ sex of player: raw " + SexWord(SexLabRegistry.GetSex(player, true)) + " / with override " + SexWord(SexLabRegistry.GetSex(player, false)) + "  (cum is applied BY male/futa onto partners; only female/CrtFemale receive)")
	MiscUtil.PrintConsole("[SLP+ UBE Cum] would use: " + ResolveTexturePath(player, 1, ShippedSet(), 1, StockRoot() + "Anal/" + ShippedSet() + "/1.dds"))
EndFunction

String Function BoolWord(Bool abValue) Global
	If (abValue)
		Return "yes"
	EndIf
	Return "no"
EndFunction

; SexLab P+ mapping: Male = 0 | Female = 1 | Futa = 2 | CrtMale = 3 | CrtFemale = 4
String Function SexWord(Int aiSex) Global
	If (aiSex == 0)
		Return "Male(0)"
	ElseIf (aiSex == 1)
		Return "Female(1)"
	ElseIf (aiSex == 2)
		Return "Futa(2)"
	ElseIf (aiSex == 3)
		Return "CrtMale(3)"
	ElseIf (aiSex == 4)
		Return "CrtFemale(4)"
	EndIf
	Return "Unknown(" + aiSex + ")"
EndFunction

; Console: what is really on the head mesh right now (diagnostics for WetFunction & co).
; Reports the player and, if something is selected in the console / under the crosshair, that actor.
Function HeadInfo() Global
	DumpHead(Game.GetPlayer())
	Actor other = Game.GetCurrentCrosshairRef() as Actor
	If (other != None && other != Game.GetPlayer())
		DumpHead(other)
	EndIf
EndFunction

Function DumpHead(Actor akActor) Global
	If (akActor == None)
		Return
	EndIf
	String who = GetName(akActor)
	ActorBase base = akActor.GetLeveledActorBase()
	Bool fem = base.GetSex() == 1
	MiscUtil.PrintConsole("[SLP+ UBE Cum] head of " + who + " (female=" + fem + ", UBE=" + IsUBEActor(akActor) + ")")
	Int n = base.GetNumHeadParts()
	Int i = 0
	While (i < n)
		HeadPart hp = base.GetNthHeadPart(i)
		String part = hp.GetPartName()
		If (StringUtil.Find(part, "Head") >= 0 || StringUtil.Find(part, "head") >= 0)
			DumpHeadNode(akActor, fem, part)
		EndIf
		i += 1
	EndWhile
	; UBE / PSQ node names the WetFunction UBE patch writes to
	If (IsUBEActor(akActor))
		DumpHeadNode(akActor, fem, "00UBE_FemaleHead")
	EndIf
EndFunction

Function DumpHeadNode(Actor akActor, Bool fem, String node) Global
	String d = NiOverride.GetNodePropertyString(akActor, false, node, 9, 0)
	String nrm = NiOverride.GetNodePropertyString(akActor, false, node, 9, 1)
	String spc = NiOverride.GetNodePropertyString(akActor, false, node, 9, 7)
	Float gloss = NiOverride.GetNodePropertyFloat(akActor, false, node, 2, -1)
	Float specStr = NiOverride.GetNodePropertyFloat(akActor, false, node, 3, -1)
	Bool ovN = NiOverride.HasNodeOverride(akActor, fem, node, 9, 1)
	Bool ovS = NiOverride.HasNodeOverride(akActor, fem, node, 9, 7)
	If (d == "" && nrm == "" && spc == "")
		MiscUtil.PrintConsole("[SLP+ UBE Cum]   node [" + node + "]: NOT FOUND on the loaded 3D (override stored: n=" + ovN + " s=" + ovS + ")")
	Else
		MiscUtil.PrintConsole("[SLP+ UBE Cum]   node [" + node + "]: diffuse=" + d)
		MiscUtil.PrintConsole("[SLP+ UBE Cum]     normal(1)=" + nrm + "  override=" + ovN)
		MiscUtil.PrintConsole("[SLP+ UBE Cum]     specular(7)=" + spc + "  override=" + ovS)
		MiscUtil.PrintConsole("[SLP+ UBE Cum]     glossiness=" + gloss + "  specStrength=" + specStr)
	EndIf
EndFunction

; Console: force how SexLab P+ treats the player's sex (0 male, 1 female, 2 futa).
Function TreatAs(Int aiSex) Global
	SexLabFramework sexLab = GetSexLab()
	Actor player = Game.GetPlayer()
	If (sexLab == None)
		MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLab framework not found")
		Return
	EndIf
	sexLab.TreatAsSex(player, aiSex)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLab P+ now treats the player as " + SexWord(aiSex) + "; raw " + SexWord(SexLabRegistry.GetSex(player, true)) + " / with override " + SexWord(SexLabRegistry.GetSex(player, false)))
EndFunction

; ------------------------------------------------------------------ ;
; --- Cum test commands                                          --- ;
; ------------------------------------------------------------------ ;
; These drive the real SexLab P+ code path (AddCumFx -> BeginOverlay -> the patch),
; so what you see in game is exactly what a finished animation would apply.
;
; SexLabFramework is compiled against a build-time stub (see Source\Scripts\
; SexLabFramework.stub.psc). Only the function names and signatures matter: the papyrus
; VM resolves them against the real SexLabQuestFramework script at runtime.

SexLabFramework Function GetSexLab() Global
	Return Game.GetFormFromFile(0x00000D62, "SexLab.esm") as SexLabFramework
EndFunction

Function Apply(Int aiType, Int aiLayers) Global
	SexLabFramework sexLab = GetSexLab()
	If (sexLab == None)
		MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLabQuestFramework (SexLab.esm 000D62) not found - is SexLab P+ enabled?")
		Return
	EndIf
	If (aiLayers < 1)
		aiLayers = 1
	EndIf
	MiscUtil.PrintConsole("[SLP+ UBE Cum] applying " + aiLayers + " " + TypeLabel(aiType) + " layer(s) to the player")
	sexLab.AddCumFxLayers(Game.GetPlayer(), aiType, aiLayers)
EndFunction

Function Vaginal(Int aiLayers) Global
	Apply(0, aiLayers)
EndFunction

Function Anal(Int aiLayers) Global
	Apply(1, aiLayers)
EndFunction

Function Oral(Int aiLayers) Global
	Apply(2, aiLayers)
EndFunction

Function All(Int aiLayers) Global
	Apply(-1, aiLayers)
EndFunction

Function Clear() Global
	SexLabFramework sexLab = GetSexLab()
	If (sexLab == None)
		MiscUtil.PrintConsole("[SLP+ UBE Cum] SexLabQuestFramework (SexLab.esm 000D62) not found - is SexLab P+ enabled?")
		Return
	EndIf
	sexLab.RemoveCumFx(Game.GetPlayer(), -1)
	MiscUtil.PrintConsole("[SLP+ UBE Cum] cleared all cum fx from the player")
EndFunction
