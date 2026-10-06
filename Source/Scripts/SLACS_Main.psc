Scriptname SLACS_Main extends Quest

; === CONFIGURABLE START SLOTS ===
; CHANGED: Default start slots changed from 41 to 7 for all groups
int Property StartSlotBody = 7 Auto Hidden      ; Body overlays start at slot 7 (Vaginal, Anal, Breast, Footjob)
int Property StartSlotFace = 7 Auto Hidden      ; Face overlays start at slot 7 (Oral)
int Property StartSlotHands = 7 Auto Hidden     ; Hands overlays start at slot 7 (Handjob)
int Property StartSlotFeet = 7 Auto Hidden      ; Feet overlays start at slot 7 (Footjob)

; === SYSTEM PROPERTIES ===
Actor Property PlayerRef Auto
SexLabFramework Property Sexlab Auto
FormList Property SLACS_AffectedActors Auto
String[] Property Areas Auto
int Property skeeVersion Auto Hidden
bool Property TexturesInitialized Auto Hidden
SLACS_SpellHandler Property SpellHandler Auto
bool Property FadeOutEnabled Auto
bool Property MegaCumForAll = false Auto
FormList Property SLACS_MegaCumRaces Auto
SLACS_MCM Property MCM Auto

; === UBE INTEGRATION ===
bool Property UBE_Enabled Auto Hidden

Event OnInit()
    if !Self.IsRunning()
        Self.Start()
    endif
    Maintenance()
EndEvent

; Called from OnInit and from SLACS_MCM.OnGameReload, so registrations survive save/load
; and also reach saves made with the original SLACS build.
Function Maintenance()
    ; legacy public API (other mods may send these)
    RegisterForModEvent("Sexlab_AddCum", "AddCum")
    RegisterForModEvent("Sexlab_ClearCum", "ClearCum")
    ; --- SexLab P+ 2.18 patch: hook the framework's own cum bookkeeping instead of the
    ;     stale MGEF overrides + SLACS_CumEffectHandler the original ESP used.
    ;     sslActorLibrary.AddCumFx()    -> "SexLabApplyCum"  (Form actor, int type)
    ;     sslActorLibrary.RemoveCumFx() -> "SexLabClearCum"  (Form actor, int type)
    ;     type: 0 vaginal, 1 anal, 2 oral, -1 all
    RegisterForModEvent("SexLabApplyCum", "OnSexLabApplyCum")
    RegisterForModEvent("SexLabClearCum", "OnSexLabClearCum")
    ; The ESP does not fill PlayerRef (seen in the log: the player was treated as "NPC in
    ; scene" and never got its 3D rebuilt). Never trust the property.
    if !PlayerRef
        PlayerRef = Game.GetPlayer()
    endif
    ; timeline logging only (SLPPlusUBECum.log): when does P+ raise orgasms / cum / scene end
    RegisterForModEvent("SexLabOrgasm", "OnLogSexLabOrgasm")
    RegisterForModEvent("SexLabApplyCumFX", "OnLogSexLabApplyCumFX")
    RegisterForModEvent("HookOrgasmStart", "OnLogHookOrgasmStart")
    RegisterForModEvent("HookOrgasmEnd", "OnLogHookOrgasmEnd")
    RegisterForModEvent("HookStageEnd", "OnLogHookStageEnd")
    RegisterForModEvent("HookAnimationEnd", "OnLogHookAnimationEnd")
    RegisterForModEvent("HookAnimationStart", "OnLogHookAnimationStart")
    SLPPlusUBECum.TraceLine("SLACS_Main.Maintenance(): events registered, skee=" + SKSE.GetPluginVersion("skee") + " UBE=" + Game.IsPluginInstalled("UBE_AllRace.esp"))
    skeeVersion = SKSE.GetPluginVersion("skee")
    if skeeVersion < 0
        return
    EndIf
    InitializeProps()
    InitializeUBE()
    CheckTextures()
    bool hasBIS = Game.IsPluginInstalled("Bathing in Skyrim.esp")
    if hasBIS
        RegisterForModEvent("BiS_CleanActorDirt", "OnBISCleaned")
        RegisterForModEvent("BiS_WashActorFinish", "OnBISWashFinish")
    endif
    bool hasDnB = Game.IsPluginInstalled("Dirt and Blood - Dynamic Visuals.esp")
    if hasDnB
        RegisterForModEvent("DnB_CleanActorDirt", "OnDnBCleaned")
    endif
EndFunction

Function InitializeUBE()
    UBE_Enabled = Game.IsPluginInstalled("UBE_AllRace.esp")
EndFunction

bool Function IsUBERace(Actor akTarget)
    if !UBE_Enabled || !akTarget
        return false
    endif
    ; SexLab P+ / RaceCompatibilityCondition patch: papyrus GetRace() returns the vanilla proxy
    ; race for UBE actors, so ask SLPPlusUBECum (native editor id / RaceCompatibilityCondition).
    if SLPPlusUBECum.IsUBEActor(akTarget)
        return true
    endif
    Race targetRace = akTarget.GetLeveledActorBase().GetRace()
    if !targetRace
        return false
    endif
    int[] ubeFormIDs = new int[18]
    ubeFormIDs[0] = 0x0005734
    ubeFormIDs[1] = 0x0005735
    ubeFormIDs[2] = 0x005A179
    ubeFormIDs[3] = 0x005A17A
    ubeFormIDs[4] = 0x005A184
    ubeFormIDs[5] = 0x005A185
    ubeFormIDs[6] = 0x005A18E
    ubeFormIDs[7] = 0x005A18F
    ubeFormIDs[8] = 0x005A198
    ubeFormIDs[9] = 0x005A199
    ubeFormIDs[10] = 0x005A1A2
    ubeFormIDs[11] = 0x005A1A3
    ubeFormIDs[12] = 0x005A1AC
    ubeFormIDs[13] = 0x005A1AD
    ubeFormIDs[14] = 0x005A1B0
    ubeFormIDs[15] = 0x005A1B1
    ubeFormIDs[16] = 0x007A4D5
    ubeFormIDs[17] = 0x007A4D6
    int i = 0
    while i < ubeFormIDs.Length
        Form testForm = Game.GetFormFromFile(ubeFormIDs[i], "UBE_AllRace.esp")
        if testForm && testForm == targetRace
            return true
        endif
        i += 1
    endWhile
    return false
EndFunction

String Function GetTextureBasePath(Actor akTarget, String part)
    if IsUBERace(akTarget)
        return "data\\textures\\slacs2_ube\\" + part + "\\"
    else
        return "data\\textures\\slacs2\\" + part + "\\"
    endif
EndFunction

; Bathing in Skyrim integration
Event OnBISCleaned(Form akTarget, Float timeToClean, Float interval, Bool usedSoap)
    Actor akActor = akTarget as Actor
    if akActor
        ClearCum(akActor)
    endif
EndEvent

Event OnBISWashFinish(Form akBathingActor, Form akWashProp, Bool abUsingSoap)
    Actor akActor = akBathingActor as Actor
    if akActor
        ClearCum(akActor)
    endif
EndEvent

; Dirt and Blood integration
Event OnDnBCleaned(Form akTarget)
    Actor akActor = akTarget as Actor
    if akActor
        ClearCum(akActor)
    endif
EndEvent

Function InitializeProps()
    Areas = new String[4]
    Areas[0] = "Body"
    Areas[1] = "Hands"
    Areas[2] = "Feet"
    Areas[3] = "Face"
EndFunction

; Verify all texture files exist
Function CheckTextures()
    String[] parts = new String[12]
    parts[0] = "Vaginal"
    parts[1] = "Oral"
    parts[2] = "Anal"
    parts[3] = "Breast"
    parts[4] = "Handjob"
    parts[5] = "Footjob"
    parts[6] = "VaginalCum"
    parts[7] = "Facial"
    parts[8] = "AnalCum"
    parts[9] = "ChestCum"
    parts[10] = "HandsCum"
    parts[11] = "FeetCum"

    String[] prefixesToCheck = new String[2]
    prefixesToCheck[0] = ""
    prefixesToCheck[1] = "m_"

    int i = 0
    while i < parts.Length
        String part = parts[i]
        String[] prefixes
        int textureCount
        if part == "Oral" || part == "Facial"
            prefixes = new String[1]
            prefixes[0] = "head"
            textureCount = 12
        elseif part == "Breast" || part == "ChestCum"
            prefixes = new String[1]
            prefixes[0] = "chest"
            textureCount = 12
        elseif part == "Handjob" || part == "HandsCum"
            prefixes = new String[1]
            prefixes[0] = "hands"
            textureCount = 4
        elseif part == "Footjob" || part == "FeetCum"
            prefixes = new String[2]
            prefixes[0] = "feet"
            prefixes[1] = "legs"
            textureCount = 4
        else
            prefixes = new String[1]
            prefixes[0] = "body"
            textureCount = 12
        endif
        int k = 0
        while k < prefixes.Length
            String prefix = prefixes[k]
            int p = 0
            while p < prefixesToCheck.Length
                String filePrefix = prefixesToCheck[p]
                int j = 0
                while j < textureCount
                    String basePath = "data\\textures\\slacs2\\" + part + "\\"
                    String texPath = basePath + filePrefix + prefix + (j + 1) + ".dds"
                    if !MiscUtil.FileExists(texPath)
                        ; Debug.Trace("Missing: " + texPath)
                    endif

                    ; === NORMAL MAP CHECK (NEW) ===
                    String normalPath = basePath + filePrefix + prefix + (j + 1) + "_n.dds"
                    if !MiscUtil.FileExists(normalPath)
                        ; Debug.Trace("Missing normal: " + normalPath)
                    endif

                    if UBE_Enabled
                        String ubePath = "data\\textures\\slacs2_ube\\" + part + "\\" + filePrefix + prefix + (j + 1) + ".dds"
                        if !MiscUtil.FileExists(ubePath)
                            ; Debug.Trace("Missing UBE: " + ubePath)
                        endif

                        ; === UBE NORMAL CHECK (NEW) ===
                        String ubeNormalPath = "data\\textures\\slacs2_ube\\" + part + "\\" + filePrefix + prefix + (j + 1) + "_n.dds"
                        if !MiscUtil.FileExists(ubeNormalPath)
                            ; Debug.Trace("Missing UBE normal: " + ubeNormalPath)
                        endif
                    endif
                    j += 1
                endWhile
                p += 1
            endWhile
            k += 1
        endWhile
        i += 1
    endWhile
    TexturesInitialized = true
EndFunction

String Function GetTexturePrefix(String part, String area)
    if part == "Oral"
        return "head"
    elseif part == "Breast"
        return "chest"
    elseif part == "Handjob"
        return "hands"
    elseif part == "Footjob"
        if area == "Feet"
            return "feet"
        elseif area == "Body"
            return "legs"
        endif
    else
        return "body"
    endif
EndFunction

; Main cum application function
bool Function AddCum(Form akTarget, bool vaginal, bool oral, bool anal, bool breast, bool hand, bool foot, Actor source = None)
    Actor actorRef = akTarget as Actor
    if !actorRef || skeeVersion < 0
        return false
    EndIf
    if !TexturesInitialized
        CheckTextures()
    EndIf

    bool success = false
    if vaginal
        success = UpdateCumCount(actorRef, "Vaginal", "Body", 12, source) || success
    EndIf
    if oral
        success = UpdateCumCount(actorRef, "Oral", "Face", 12, source) || success
    EndIf
    if anal
        success = UpdateCumCount(actorRef, "Anal", "Body", 12, source) || success
    EndIf
    if breast
        success = UpdateCumCount(actorRef, "Breast", "Body", 12, source) || success
    EndIf
    if hand
        success = UpdateCumCount(actorRef, "Handjob", "Hands", 4, source) || success
    EndIf
    if foot
        success = UpdateCumCount(actorRef, "Footjob", "Feet", 4, source) || success
        success = UpdateCumCount(actorRef, "Footjob", "Body", 4, source) || success
    EndIf

    if success
        SLACS_AffectedActors.AddForm(actorRef)
        if actorRef.Is3DLoaded()
            if actorRef != PlayerRef && !NiOverride.HasOverlays(actorRef)
                NiOverride.AddOverlays(actorRef)
                Utility.Wait(0.2)
            endif
            NiOverride.ApplyNodeOverrides(actorRef)
            ForceFaceOverlayRefresh(actorRef)
        endif
        SpellHandler.ApplySpells(actorRef)
    EndIf
    return success
EndFunction

; ------------------------------------------------------------------
; SexLab P+ 2.18 integration (replaces SLACS_CumEffectHandler)
; ------------------------------------------------------------------

Event OnSexLabApplyCum(Form akActorForm, int aiType)
    Actor akActor = akActorForm as Actor
    if !akActor
        return
    endif
    if IsMaleTarget(akActor)
        SLPPlusUBECum.Trace(akActor, "SLACS SexLabApplyCum type=" + aiType + " skipped: target is male (SexLab sex " + Sexlab.GetSex(akActor) + ")")
        return
    endif
    ; already painted by the orgasm/tag path a moment ago (see OnLogSexLabOrgasm)
    if Utility.GetCurrentRealTime() - StorageUtil.GetFloatValue(akActor, "SLACS_OrgasmApplied", -1000.0) < 5.0
        SLPPlusUBECum.Trace(akActor, "SLACS SexLabApplyCum type=" + aiType + " skipped: handled by the orgasm/tag path")
        return
    endif
    bool vaginal = (aiType == 0 || aiType == -1)
    bool anal    = (aiType == 1 || aiType == -1)
    bool oral    = (aiType == 2 || aiType == -1)
    bool breast  = false
    bool hand    = false
    bool foot    = false
    Actor source = None

    ; P+ raises this from inside the scene (orgasm), so the thread is normally still alive:
    ; use it for the extra categories and the cum source, exactly like the old effect script.
    sslThreadController thread = None
    if Sexlab
        thread = Sexlab.ThreadSlots.GetActorController(akActor)
    endif
    if thread
        sslBaseAnimation animation = thread.Animation
        if animation
            ; Animation tags first, like the original SLACS: P+'s own type comes from collision
            ; detection which falls back to "anal" whenever nothing is detected and the scene
            ; is not PosTagged (seen in the log: vaginal scenes -> anal cum).
            bool tV = animation.HasTag("Vaginal") || animation.HasTag("VaginalCum")
            bool tA = animation.HasTag("Anal") || animation.HasTag("AnalCum")
            bool tO = animation.HasTag("Oral") || animation.HasTag("Facial") || animation.HasTag("Blowjob")
            if aiType != -1 && (tV || tA || tO)
                vaginal = tV
                anal = tA
                oral = tO
            endif
            breast = animation.HasTag("Breast") || animation.HasTag("Boobjob") || animation.HasTag("ChestCum")
            hand   = animation.HasTag("Handjob") || animation.HasTag("HandsCum")
            foot   = animation.HasTag("Footjob") || animation.HasTag("FeetCum")
            if hand
                if animation.HasTag("Breast")
                    breast = true
                endif
                if animation.HasTag("Anal")
                    anal = true
                endif
                if animation.HasTag("Facial")
                    oral = true
                endif
            endif
            if foot && (animation.HasTag("AnalCum") || animation.HasTag("Anal"))
                anal = true
            endif
        endif
        Actor[] positions = thread.Positions
        int i = 0
        while i < positions.Length
            Actor posActor = positions[i]
            if posActor && posActor != akActor && posActor.GetLeveledActorBase().GetSex() == 0
                source = posActor
            endif
            i += 1
        endwhile
    endif
    if oral
        breast = true
    endif
    SLPPlusUBECum.Trace(akActor, "SLACS SexLabApplyCum type=" + aiType + " V=" + vaginal + " A=" + anal + " O=" + oral + " B=" + breast + " H=" + hand + " F=" + foot + " UBE=" + IsUBERace(akActor))
    AddCum(akActor, vaginal, oral, anal, breast, hand, foot, source)
EndEvent

Event OnSexLabClearCum(Form akActorForm, int aiType)
    Actor akActor = akActorForm as Actor
    if !akActor
        return
    endif
    ; P+ expires each type on its own timer (fCumTimer, swimming, ...). Mirror it per type and
    ; wipe everything else (hands/feet/breast, clothes spells, tracking list) once no P+ cum
    ; type is left on the actor.
    if aiType == 0
        FadeAndRemoveOverlay(akActor, "Vaginal", "Body", StartSlotBody, StartSlotBody + 5)
        ClearUsedIndices(akActor, "Vaginal", "Body")
    elseif aiType == 1
        FadeAndRemoveOverlay(akActor, "Anal", "Body", StartSlotBody + 6, StartSlotBody + 11)
        ClearUsedIndices(akActor, "Anal", "Body")
    elseif aiType == 2
        FadeAndRemoveOverlay(akActor, "Oral", "Face", StartSlotFace, StartSlotFace + 5)
        ClearUsedIndices(akActor, "Oral", "Face")
        FadeAndRemoveOverlay(akActor, "Breast", "Body", StartSlotBody + 12, StartSlotBody + 17)
        ClearUsedIndices(akActor, "Breast", "Body")
    endif
    int remaining = 1
    if Sexlab
        remaining = Sexlab.CountCumFx(akActor, -1)
    endif
    if aiType == -1 || remaining <= 0
        ClearCum(akActor)
    else
        if akActor.Is3DLoaded()
            NiOverride.ApplyNodeOverrides(akActor)
        endif
        SpellHandler.ApplySpells(akActor)
    endif
EndEvent

Function ClearUsedIndices(Actor akActor, String part, String area)
    StorageUtil.IntListClear(akActor, "SLACS_UsedIndices_" + akActor.GetFormID() + "_" + part + "_" + area)
EndFunction

; --- primary trigger: an orgasm, typed by the animation tags (original SLACS logic) ---
; SexLab P+'s own cum types come from collision detection that is not registered in most
; setups; it then only trusts "PosTagged" scenes and otherwise reports nothing (or anal), and it
; has no hand/foot/breast types at all. So: whenever a male/futa orgasms, read the scene tags
; and paint every non-male partner. "SexLabApplyCum" stays as fallback for untagged scenes.
Event OnLogSexLabOrgasm(Form akActorForm, int aiEnjoyment, int aiCount)
    Actor src = akActorForm as Actor
    if !src || !Sexlab
        return
    endif
    int sex = Sexlab.GetSex(src)
    SLPPlusUBECum.TraceLine("P+ SexLabOrgasm actor=" + SLPPlusUBECum.GetName(src) + " sex=" + sex + " count=" + aiCount)
    if sex != 0 && sex != 2
        return
    endif
    sslThreadController thread = Sexlab.ThreadSlots.GetActorController(src)
    if !thread
        return
    endif
    sslBaseAnimation animation = thread.Animation
    if !animation
        return
    endif
    bool[] t = TagFlags(animation)
    if !(t[0] || t[1] || t[2] || t[3] || t[4] || t[5])
        SLPPlusUBECum.Trace(src, "SLACS orgasm: scene has no cum tags, leaving it to SexLab P+ detection")
        return
    endif
    Actor[] positions = thread.Positions
    int i = 0
    while i < positions.Length
        Actor tgt = positions[i]
        if tgt && tgt != src && !IsMaleTarget(tgt)
            StorageUtil.SetFloatValue(tgt, "SLACS_OrgasmApplied", Utility.GetCurrentRealTime())
            SLPPlusUBECum.Trace(tgt, "SLACS orgasm of " + SLPPlusUBECum.GetName(src) + " -> tags V=" + t[0] + " A=" + t[1] + " O=" + t[2] + " B=" + t[3] + " H=" + t[4] + " F=" + t[5] + " UBE=" + IsUBERace(tgt))
            AddCum(tgt, t[0], t[2], t[1], t[3], t[4], t[5], src)
        endif
        i += 1
    endwhile
EndEvent

; [0] vaginal [1] anal [2] oral [3] breast [4] hand [5] foot - from the installed tag vocabulary
bool[] Function TagFlags(sslBaseAnimation animation)
    bool[] t = new bool[6]
    t[0] = animation.HasTag("Vaginal") || animation.HasTag("Creampie") || animation.HasTag("VaginalCum")
    t[1] = animation.HasTag("Anal") || animation.HasTag("AnalCreampie") || animation.HasTag("AnalCum")
    t[2] = animation.HasTag("Oral") || animation.HasTag("Blowjob") || animation.HasTag("Facial") || animation.HasTag("CumInMouth")
    t[3] = animation.HasTag("Boobjob") || animation.HasTag("Titjob") || animation.HasTag("Breast") || animation.HasTag("ChestCum")
    t[4] = animation.HasTag("Handjob") || animation.HasTag("HandsCum")
    t[5] = animation.HasTag("Footjob") || animation.HasTag("FeetCum")
    if t[2]
        t[3] = true
    endif
    return t
EndFunction
Event OnLogSexLabApplyCumFX(Form akTargetForm, Form akSourceForm, int aiType)
    SLPPlusUBECum.TraceLine("P+ SexLabApplyCumFX target=" + SLPPlusUBECum.GetName(akTargetForm as Actor) + " source=" + SLPPlusUBECum.GetName(akSourceForm as Actor) + " type=" + aiType)
EndEvent
Event OnLogHookOrgasmStart(int tid, bool hasPlayer)
    SLPPlusUBECum.TraceLine("P+ HookOrgasmStart tid=" + tid + " player=" + hasPlayer)
EndEvent
Event OnLogHookOrgasmEnd(int tid, bool hasPlayer)
    SLPPlusUBECum.TraceLine("P+ HookOrgasmEnd tid=" + tid + " player=" + hasPlayer)
EndEvent
Event OnLogHookStageEnd(int tid, bool hasPlayer)
    SLPPlusUBECum.TraceLine("P+ HookStageEnd tid=" + tid + " player=" + hasPlayer)
EndEvent
Event OnLogHookAnimationEnd(int tid, bool hasPlayer)
    SLPPlusUBECum.TraceLine("P+ HookAnimationEnd tid=" + tid + " player=" + hasPlayer)
EndEvent
Event OnLogHookAnimationStart(int tid, bool hasPlayer)
    SLPPlusUBECum.TraceLine("P+ HookAnimationStart tid=" + tid + " player=" + hasPlayer)
EndEvent

; Force face overlay refresh for better visibility.
; SexLab P+ 2.18 patch:
;  - Player: always rebuilt. Overlays added to the player's already-installed overlay nodes do
;    not render until the 3D is rebuilt (they showed up only at the next scene's strip), so the
;    expression hiccup is the lesser evil; P+ re-applies expressions on its own loop anyway.
;  - NPCs: skipped inside a SexLab scene (rebuild there resets the facial expression -
;    LoversLab thread, ZakkBaker); NiOverride.AddOverlays/ApplyNodeOverrides is enough for them.
;  - A rebuild drops non-persistent NiOverride overrides of other mods. WetFunction Redux (UBE
;    patch) listens to "WetFunction_ForceHeadRefresh" and redoes its whole wet pass, so it is
;    raised after every rebuild we cause.
Function ForceFaceOverlayRefresh(Actor akActor)
    bool inScene = InSexLabScene(akActor)
    if akActor != PlayerRef && inScene
        SLPPlusUBECum.Trace(akActor, "SLACS refresh skipped (NPC in scene)")
        return
    endif
    ; The rebuild re-runs physics, morphs and every overlay on the actor and is the main source of
    ; the hitch at the moment of the cumshot. "slpube rebuild 0" turns it off; the overlays are then
    ; only pushed with NiOverride.ApplyNodeOverrides, which AddCum/ClearCum already did.
    if !SLPPlusUBECum.RebuildEnabled()
        SLPPlusUBECum.Trace(akActor, "SLACS rebuild skipped (slpube rebuild 0)")
        return
    endif
    SLPPlusUBECum.Trace(akActor, "SLACS QueueNiNodeUpdate (inScene=" + inScene + ")")
    akActor.QueueNiNodeUpdate()
    ; the rebuild is queued for the next frame(s); let it land before WetFunction repaints,
    ; otherwise its non-persistent overrides get wiped a second time
    Utility.Wait(1.0)
    SendModEvent("WetFunction_ForceHeadRefresh")
EndFunction

; SexLab P+ hands cum FROM whoever orgasms TO the partners, and it decides who orgasms from the
; raw genital sex (SexLabRegistry.GetSex(actor, true) - the MCM "treat as" override is ignored
; there). A female character with a TNG/GenderBender schlong is a futa to it and cums on the
; man. Nobody wants cum overlays on a male, so drop such targets here. Uses the override-aware
; sex, so an actor the user marked as female in the SexLab MCM still receives.
bool Property SkipMaleTargets = true Auto Hidden

bool Function IsMaleTarget(Actor akActor)
    if !SkipMaleTargets || !Sexlab || !akActor
        return false
    endif
    int sex = Sexlab.GetSex(akActor)
    return sex == 0 || sex == 3
EndFunction

bool Function InSexLabScene(Actor akActor)
    if !Sexlab || !akActor
        return false
    endif
    return Sexlab.ThreadSlots.GetActorController(akActor) != None
EndFunction

; Apply single cum texture to specific slot
Bool Function UpdateCumCount(Actor akTarget, String part, String area, int textureCount, Actor source = None)
    Bool Gender = akTarget.GetLeveledActorBase().GetSex() as Bool
    int slot = GetNextSlot(akTarget, Gender, area, part, source)
    if slot == -1
        return false
    endif
    string storageKey = "SLACS_UsedIndices_" + akTarget.GetFormID() + "_" + part + "_" + area
    int[] usedIndices = StorageUtil.IntListToArray(akTarget, storageKey)
    int i = 0
    int availCount = 0
    int[] available = new int[128]
    while i < textureCount
        int idx = i + 1
        bool isUsed = false
        int u = 0
        while u < usedIndices.Length
            if usedIndices[u] == idx
                isUsed = true
            endif
            u += 1
        endwhile
        if !isUsed
            available[availCount] = idx
            availCount += 1
        endif
        i += 1
    endwhile
    int chosenIndex
    if availCount > 0
        int rand = Utility.RandomInt(0, availCount - 1)
        chosenIndex = available[rand]
    else
        if usedIndices.Length > 0
            int rand = Utility.RandomInt(0, usedIndices.Length - 1)
            chosenIndex = usedIndices[rand]
        else
            chosenIndex = 1
        endif
    endif
    bool alreadyUsed = false
    i = 0
    while i < usedIndices.Length
        if usedIndices[i] == chosenIndex
            alreadyUsed = true
        endif
        i += 1
    endwhile
    if !alreadyUsed
        StorageUtil.IntListAdd(akTarget, storageKey, chosenIndex, false)
    endif
    String Node = area + " [ovl" + slot + "]"
    String filePrefix = ""
    if MegaCumForAll || (source && IsMegaCumRace(source))
        filePrefix = "m_"
    endif
    String basePath = GetTextureBasePath(akTarget, part)
    String prefix = GetTexturePrefix(part, area)

    ; Apply main texture
    String texPath = basePath + filePrefix + prefix + chosenIndex + ".dds"
    NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 0, texPath, true)
    NiOverride.AddNodeOverrideFloat(akTarget, Gender, Node, 8, -1, 1.0, true)

    ; Apply overlay opacity from MCM
    if MCM
       float alpha = MCM.OverlayOpacity as float / 100.0
       NiOverride.AddNodeOverrideFloat(akTarget, Gender, Node, 8, -1, alpha, true)
    endif

    ; Apply normal map if exists
    String normalTexPath = basePath + filePrefix + prefix + chosenIndex + "_n.dds"
    if MiscUtil.FileExists(normalTexPath)
        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 1, normalTexPath, true)
    endif

    ; Apply specular map if exists (ubojstvo, SLACS 2 v0.79.5u)
    String specularTexPath = basePath + filePrefix + prefix + chosenIndex + "_s.dds"
    if MiscUtil.FileExists(specularTexPath)
        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 2, specularTexPath, true)
    endif

    return true
EndFunction

; Clear all cum overlays with fade effect
Function ClearCum(Form akTarget)
    Actor actorRef = akTarget as Actor
    if !actorRef || skeeVersion < 0
        return
    EndIf

    Bool Gender = actorRef.GetLeveledActorBase().GetSex() as Bool

    ; Clear all overlay groups
    FadeAndRemoveOverlay(actorRef, "Vaginal", "Body", StartSlotBody, StartSlotBody + 5)
    FadeAndRemoveOverlay(actorRef, "Anal", "Body", StartSlotBody + 6, StartSlotBody + 11)
    FadeAndRemoveOverlay(actorRef, "Oral", "Face", StartSlotFace, StartSlotFace + 5)
    FadeAndRemoveOverlay(actorRef, "Breast", "Body", StartSlotBody + 12, StartSlotBody + 17)
    FadeAndRemoveOverlay(actorRef, "Handjob", "Hands", StartSlotHands, StartSlotHands + 1)
    FadeAndRemoveOverlay(actorRef, "Footjob", "Feet", StartSlotFeet, StartSlotFeet + 1)
    FadeAndRemoveOverlay(actorRef, "Footjob", "Body", StartSlotBody + 18, StartSlotBody + 19)

    ; Clear storage for all parts and areas
    string[] partsToClear = new string[6]
    partsToClear[0] = "Vaginal"
    partsToClear[1] = "Anal"
    partsToClear[2] = "Oral"
    partsToClear[3] = "Breast"
    partsToClear[4] = "Handjob"
    partsToClear[5] = "Footjob"
    string[] areasToClear = new string[4]
    areasToClear[0] = "Body"
    areasToClear[1] = "Face"
    areasToClear[2] = "Hands"
    areasToClear[3] = "Feet"
    int p = 0
    while p < partsToClear.Length
        string part = partsToClear[p]
        int a = 0
        while a < areasToClear.Length
            string area = areasToClear[a]
            int minSlot = GetMinSlot(area, part)
            if minSlot != -1
                string storageKey = "SLACS_UsedIndices_" + actorRef.GetFormID() + "_" + part + "_" + area
                StorageUtil.IntListClear(actorRef, storageKey)
            endif
            a += 1
        endwhile
        p += 1
    endwhile
    if actorRef.Is3DLoaded()
        NiOverride.ApplyNodeOverrides(actorRef)
        ForceFaceOverlayRefresh(actorRef)
    endif
    SLACS_AffectedActors.RemoveAddedForm(actorRef)
    SpellHandler.RemoveAllSpells(actorRef)
    SpellHandler.ApplySpells(actorRef)
EndFunction

; Find next available slot for cum texture
Int Function GetNextSlot(Actor akTarget, Bool Gender, String area, String part, Actor source = None)
    int minSlot = GetMinSlot(area, part)
    int maxSlot = GetMaxSlot(area, part)
    if minSlot == -1 || maxSlot == -1
        return -1
    endif
    int j = minSlot
    int[] occupiedSlots = new int[6]
    int occupiedCount = 0
    String texturePrefix1 = "slacs2\\" + part + "\\"
    String texturePrefix2 = "slacs2_ube\\" + part + "\\"
    while j <= maxSlot
        String Node = area + " [ovl" + j + "]"
        if !NiOverride.HasNodeOverride(akTarget, Gender, Node, 9, 0)
            return j
        EndIf
        String tex = NiOverride.GetNodeOverrideString(akTarget, Gender, Node, 9, 0)
        if tex == "actors\\character\\overlays\\default.dds"
            return j
        EndIf
        if StringUtil.Find(tex, texturePrefix1) > -1 || StringUtil.Find(tex, texturePrefix2) > -1
            occupiedSlots[occupiedCount] = j
            occupiedCount += 1
        EndIf
        j += 1
    endWhile
    if occupiedCount > 0
        int randomIndex = Utility.RandomInt(0, occupiedCount - 1)
        return occupiedSlots[randomIndex]
    EndIf
    ; SexLab P+ 2.18 patch: at this point every slot of the range is held by SOMEONE ELSE
    ; (RaceMenu tattoos, SlaveTats, body paint, war paint addons...). The original SLACS
    ; picked a random one of them and painted over it, which silently destroyed the user's
    ; tattoo - and the tattoo mod repainting its layer then hid the cum again.
    ; Never touch a foreign overlay: skip this area instead, and tell the user how to fix it.
    SLPPlusUBECum.TraceLine("SLACS: no free " + area + " overlay slot " + minSlot + ".." + maxSlot + " for " + part + " on " + SLPPlusUBECum.GetName(akTarget) + " - every slot is used by another mod, skipped (raise iNumOverlays in skee64.ini or move the tattoos)")
    return -1
EndFunction

; Get minimum slot for specific area and part
int Function GetMinSlot(String area, String part)
    if area == "Body"
        if part == "Vaginal"
            return StartSlotBody
        elseif part == "Anal"
            return StartSlotBody + 6
        elseif part == "Breast"
            return StartSlotBody + 12
        elseif part == "Footjob"
            return StartSlotBody + 18
        endif
    elseif area == "Face" && part == "Oral"
        return StartSlotFace
    elseif area == "Hands" && part == "Handjob"
        return StartSlotHands
    elseif area == "Feet" && part == "Footjob"
        return StartSlotFeet
    endif
    return -1
EndFunction

; Get maximum slot for specific area and part
int Function GetMaxSlot(String area, String part)
    if area == "Body"
        if part == "Vaginal"
            return StartSlotBody + 5
        elseif part == "Anal"
            return StartSlotBody + 11
        elseif part == "Breast"
            return StartSlotBody + 17
        elseif part == "Footjob"
            return StartSlotBody + 19
        endif
    elseif area == "Face" && part == "Oral"
        return StartSlotFace + 5
    elseif area == "Hands" && part == "Handjob"
        return StartSlotHands + 1
    elseif area == "Feet" && part == "Footjob"
        return StartSlotFeet + 1
    endif
    return -1
EndFunction

; Fade out and remove cum overlays
Bool Function FadeAndRemoveOverlay(Actor akTarget, String part, String area, int minSlot, int maxSlot)
    if !akTarget || skeeVersion < 0
        return false
    EndIf
    Bool Gender = akTarget.GetLeveledActorBase().GetSex() as Bool
    bool overlayRemoved = false
    if minSlot == -1 || maxSlot == -1
        return false
    endif
    int[] slotsToFade = new int[6]
    int slotCount = 0
    int j = minSlot
    while j <= maxSlot
        String Node = area + " [ovl" + j + "]"
        String tex = NiOverride.GetNodeOverrideString(akTarget, Gender, Node, 9, 0)
        String search1 = "slacs2\\" + part + "\\"
        String search2 = "slacs2_ube\\" + part + "\\"
        if tex != "" && (StringUtil.Find(tex, search1) > -1 || StringUtil.Find(tex, search2) > -1)
            slotsToFade[slotCount] = j
            slotCount += 1
        EndIf
        j += 1
    endWhile
    if slotCount == 0
        return false
    EndIf
    int k = 0
    if FadeOutEnabled
        ; Start fade from current MCM opacity (prevents flash)
        float startAlpha = 1.0
        if MCM
            startAlpha = MCM.OverlayOpacity as float / 100.0
        endif
        float alpha = startAlpha
        float fadeStep = 0.1
        float fadeDelay = 0.1
        while alpha > 0.0
            k = 0
            while k < slotCount
                int slot = slotsToFade[k]
                String Node2 = area + " [ovl" + slot + "]"
                NiOverride.AddNodeOverrideFloat(akTarget, Gender, Node2, 8, -1, alpha, true)
                k += 1
            endWhile
            alpha -= fadeStep
            Utility.Wait(fadeDelay)
        endWhile
    EndIf
    ; Remove overlays and reset to default
    k = 0
    while k < slotCount
        int slot = slotsToFade[k]
        String Node = area + " [ovl" + slot + "]"
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 0)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 1)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 2)  ; specular (ubojstvo)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 8, -1)
        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 0, "actors\\character\\overlays\\default.dds", true)
        NiOverride.AddNodeOverrideFloat(akTarget, Gender, Node, 8, -1, 1.0, true)
        overlayRemoved = true
        k += 1
    endWhile
    return overlayRemoved
EndFunction

; Check if actor race qualifies for mega cumshots
bool Function IsMegaCumRace(Actor akSource)
    if !akSource
        return false
    endif
    Race sourceRace = akSource.GetRace()
    if !sourceRace
        return false
    endif
    return SLACS_MegaCumRaces.HasForm(sourceRace)
EndFunction
