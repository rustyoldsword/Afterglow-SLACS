# Apply the SexLab P+ 2.18 fixes to the SLACS SCO sources (copied into build/slacs_src).
import os, shutil

BUILD = os.path.dirname(os.path.abspath(__file__))
import sys
# usage: slacs_patch.py <original SLACS 2 SCO Source\Scripts dir>
SRC = sys.argv[1]
DST = os.path.join(BUILD, "slacs_src")
os.makedirs(DST, exist_ok=True)
for f in os.listdir(SRC):
    if f.lower().endswith(".psc"):
        shutil.copy(os.path.join(SRC, f), os.path.join(DST, f))

def patch(name, pairs):
    p = os.path.join(DST, name)
    s = open(p, encoding="utf-8").read()
    # the originals carry trailing spaces on some lines; match on stripped lines
    s = "\n".join(line.rstrip() for line in s.splitlines()) + "\n"
    for old, new in pairs:
        assert s.count(old) == 1, (name, old[:70], s.count(old))
        s = s.replace(old, new)
    open(p, "w", encoding="utf-8").write(s)
    print("patched", name)

MAIN_INIT_OLD = '''Event OnInit()
    RegisterForModEvent("Sexlab_AddCum", "AddCum")
    RegisterForModEvent("Sexlab_ClearCum", "ClearCum")
    if !Self.IsRunning()
        Self.Start()
    endif
    Maintenance()
EndEvent

Function Maintenance()
    skeeVersion = SKSE.GetPluginVersion("skee")
    if skeeVersion < 0
        return
    EndIf
'''
MAIN_INIT_NEW = '''Event OnInit()
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
'''

UBE_OLD = '''bool Function IsUBERace(Actor akTarget)
    if !UBE_Enabled || !akTarget
        return false
    endif
    Race targetRace = akTarget.GetLeveledActorBase().GetRace()'''
UBE_NEW = '''bool Function IsUBERace(Actor akTarget)
    if !UBE_Enabled || !akTarget
        return false
    endif
    ; SexLab P+ / RaceCompatibilityCondition patch: papyrus GetRace() returns the vanilla proxy
    ; race for UBE actors, so ask SLPPlusUBECum (native editor id / RaceCompatibilityCondition).
    if SLPPlusUBECum.IsUBEActor(akTarget)
        return true
    endif
    Race targetRace = akTarget.GetLeveledActorBase().GetRace()'''

ADDCUM_OLD = '''    if success
        SLACS_AffectedActors.AddForm(actorRef)
        if actorRef != PlayerRef && actorRef.Is3DLoaded()
            if !NiOverride.HasOverlays(actorRef)
                NiOverride.AddOverlays(actorRef)
                Utility.Wait(0.2)
            endif
            ForceFaceOverlayRefresh(actorRef)
        endif
        SpellHandler.ApplySpells(actorRef)
    EndIf
    return success
EndFunction'''
ADDCUM_NEW = '''    if success
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
EndEvent'''

# LoversLab thread, ZakkBaker (p.9): QueueNiNodeUpdate mid-scene resets facial expressions
# ("poker face" with Utility Plus / Smooth Expressions). NiOverride.ApplyNodeOverrides plus
# bImmediateFace=1 in skee64.ini is enough while a SexLab thread owns the actor.
REFRESH_OLD = '''; Force face overlay refresh for better visibility
Function ForceFaceOverlayRefresh(Actor akActor)
    akActor.QueueNiNodeUpdate()
EndFunction'''
REFRESH_NEW = '''; Force face overlay refresh for better visibility.
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
EndFunction'''

# LoversLab thread p.6-8: "mf_spell_*" clothing-shader spells get stuck (durations of 140000+)
# and the overlay never clears. Belt and braces: drop every SLACS spell on a full clear.
CLEAR_OLD = '''    if actorRef != PlayerRef && actorRef.Is3DLoaded()
        ForceFaceOverlayRefresh(actorRef)
    endif
    SLACS_AffectedActors.RemoveAddedForm(actorRef)
    SpellHandler.ApplySpells(actorRef)
EndFunction'''
CLEAR_NEW = '''    if actorRef.Is3DLoaded()
        NiOverride.ApplyNodeOverrides(actorRef)
        ForceFaceOverlayRefresh(actorRef)
    endif
    SLACS_AffectedActors.RemoveAddedForm(actorRef)
    SpellHandler.RemoveAllSpells(actorRef)
    SpellHandler.ApplySpells(actorRef)
EndFunction'''

# ubojstvo's "SLACS 2 v0.79.5u" (LoversLab p.6): optional specular map "<name>_s.dds" on
# NiOverride texture index 2, removed again on clear. No-op when the file does not exist.
SPEC_APPLY_OLD = '''        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 1, normalTexPath, true)
    endif

    return true
EndFunction'''
SPEC_APPLY_NEW = '''        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 1, normalTexPath, true)
    endif

    ; Apply specular map if exists (ubojstvo, SLACS 2 v0.79.5u)
    String specularTexPath = basePath + filePrefix + prefix + chosenIndex + "_s.dds"
    if MiscUtil.FileExists(specularTexPath)
        NiOverride.AddNodeOverrideString(akTarget, Gender, Node, 9, 2, specularTexPath, true)
    endif

    return true
EndFunction'''
SPEC_CLEAR_OLD = '''        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 1)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 8, -1)'''
SPEC_CLEAR_NEW = '''        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 1)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 9, 2)  ; specular (ubojstvo)
        NiOverride.RemoveNodeOverride(akTarget, Gender, Node, 8, -1)'''

SLOT_OLD = '''    if occupiedCount > 0
        int randomIndex = Utility.RandomInt(0, occupiedCount - 1)
        return occupiedSlots[randomIndex]
    EndIf
    return Utility.RandomInt(minSlot, maxSlot)
EndFunction'''
SLOT_NEW = '''    if occupiedCount > 0
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
EndFunction'''

patch("SLACS_Main.psc", [(MAIN_INIT_OLD, MAIN_INIT_NEW), (UBE_OLD, UBE_NEW), (ADDCUM_OLD, ADDCUM_NEW),
                         (REFRESH_OLD, REFRESH_NEW), (CLEAR_OLD, CLEAR_NEW),
                         (SPEC_APPLY_OLD, SPEC_APPLY_NEW), (SPEC_CLEAR_OLD, SPEC_CLEAR_NEW),
                         (SLOT_OLD, SLOT_NEW)])

SPELL_OLD = '''int Function GetCumLevel(Actor akTarget, String part, String area, int minSlot, int maxSlot)'''
SPELL_NEW = '''; SexLab P+ 2.18 patch: remove every SLACS clothing spell, whatever the tracking says.
; Fixes the "permanent cum layer / mf_spell_* with a huge duration" reports.
Function RemoveAllSpells(Actor akTarget)
    if !akTarget
        return
    EndIf
    Spell[] all = new Spell[26]
    all[0]  = spell_oral1
    all[1]  = spell_oral2
    all[2]  = spell_vaginal1
    all[3]  = spell_vaginal1_oral1
    all[4]  = spell_vaginal1_oral2
    all[5]  = spell_vaginal2
    all[6]  = spell_vaginal2_oral1
    all[7]  = spell_vaginal2_oral2
    all[8]  = spell_anal1
    all[9]  = spell_anal1_oral1
    all[10] = spell_anal1_oral2
    all[11] = spell_anal1_vaginal1
    all[12] = spell_anal1_vaginal1_oral1
    all[13] = spell_anal1_vaginal1_oral2
    all[14] = spell_anal1_vaginal2
    all[15] = spell_anal1_vaginal2_oral1
    all[16] = spell_anal1_vaginal2_oral2
    all[17] = spell_anal2
    all[18] = spell_anal2_oral1
    all[19] = spell_anal2_oral2
    all[20] = spell_anal2_vaginal1
    all[21] = spell_anal2_vaginal1_oral1
    all[22] = spell_anal2_vaginal1_oral2
    all[23] = spell_anal2_vaginal2
    all[24] = spell_anal2_vaginal2_oral1
    all[25] = spell_anal2_vaginal2_oral2
    int i = 0
    while i < all.Length
        if all[i] && akTarget.HasSpell(all[i])
            akTarget.RemoveSpell(all[i])
        endif
        i += 1
    endwhile
    StorageUtil.UnsetFormValue(akTarget, "SLACS_CurrentSpell")
EndFunction

int Function GetCumLevel(Actor akTarget, String part, String area, int minSlot, int maxSlot)'''
# Clothing shader spells: never on UBE actors (author: not UBE compatible) and when the MCM
# option is off strip them from the actor instead of only the one we tracked. These EFSH
# abilities sit on the skin and override its material, which is what breaks WetFunction
# Redux's gloss/specular overrides (LoversLab p.4 has the same report).
APPLY_OLD = '''    Spell newSpell = None
    if EnableSpells
        newSpell = GetSpellForCombination(analLevel, vaginalLevel, oralLevel)
    endif
    Spell prevSpell = StorageUtil.GetFormValue(akTarget, "SLACS_CurrentSpell") as Spell'''
APPLY_NEW = '''    Spell newSpell = None
    if EnableSpells && !Main.IsUBERace(akTarget)
        newSpell = GetSpellForCombination(analLevel, vaginalLevel, oralLevel)
    endif
    if !newSpell
        RemoveAllSpells(akTarget)
        return
    endif
    Spell prevSpell = StorageUtil.GetFormValue(akTarget, "SLACS_CurrentSpell") as Spell'''
DEFAULT_OLD = '''bool Property EnableSpells = true Auto'''
DEFAULT_NEW = '''bool Property EnableSpells = false Auto  ; SexLab P+ 2.18 patch: off by default (ESP default patched too)'''
patch("SLACS_SpellHandler.psc", [(SPELL_OLD, SPELL_NEW), (APPLY_OLD, APPLY_NEW), (DEFAULT_OLD, DEFAULT_NEW)])

MCM_OLD = '''Event OnConfigOpen()'''
MCM_NEW = '''; SexLab P+ 2.18 patch: re-register SLACS_Main's mod events on every game load
Event OnGameReload()
    parent.OnGameReload()
    if Main
        Main.Maintenance()
    endif
EndEvent

Event OnConfigOpen()'''
patch("SLACS_MCM.psc", [(MCM_OLD, MCM_NEW)])
print("done")
