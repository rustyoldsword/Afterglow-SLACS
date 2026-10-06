Scriptname SLACS_SpellHandler extends Quest

Spell Property spell_oral1 Auto
Spell Property spell_oral2 Auto
Spell Property spell_vaginal1 Auto
Spell Property spell_vaginal1_oral1 Auto
Spell Property spell_vaginal1_oral2 Auto
Spell Property spell_vaginal2 Auto
Spell Property spell_vaginal2_oral1 Auto
Spell Property spell_vaginal2_oral2 Auto
Spell Property spell_anal1 Auto
Spell Property spell_anal1_oral1 Auto
Spell Property spell_anal1_oral2 Auto
Spell Property spell_anal1_vaginal1 Auto
Spell Property spell_anal1_vaginal1_oral1 Auto
Spell Property spell_anal1_vaginal1_oral2 Auto
Spell Property spell_anal1_vaginal2 Auto
Spell Property spell_anal1_vaginal2_oral1 Auto
Spell Property spell_anal1_vaginal2_oral2 Auto
Spell Property spell_anal2 Auto
Spell Property spell_anal2_oral1 Auto
Spell Property spell_anal2_oral2 Auto
Spell Property spell_anal2_vaginal1 Auto
Spell Property spell_anal2_vaginal1_oral1 Auto
Spell Property spell_anal2_vaginal1_oral2 Auto
Spell Property spell_anal2_vaginal2 Auto
Spell Property spell_anal2_vaginal2_oral1 Auto
Spell Property spell_anal2_vaginal2_oral2 Auto

bool Property EnableSpells = false Auto  ; SexLab P+ 2.18 patch: off by default (ESP default patched too)
int Property skeeVersion Auto Hidden
FormList Property SLACS_AffectedActors Auto
SLACS_Main Property Main Auto

Function ApplySpells(Actor akTarget)
    if !akTarget || skeeVersion < 0
        return
    EndIf
    if !SLACS_AffectedActors.HasForm(akTarget)
        SLACS_AffectedActors.AddForm(akTarget)
    EndIf

    int vaginalLevel = GetCumLevel(akTarget, "Vaginal", "Body", Main.StartSlotBody, Main.StartSlotBody + 5)
    int analLevel    = GetCumLevel(akTarget, "Anal",    "Body", Main.StartSlotBody + 6, Main.StartSlotBody + 11)
    int oralLevel    = GetCumLevel(akTarget, "Oral",    "Face", Main.StartSlotFace, Main.StartSlotFace + 5)

    Spell newSpell = None
    if EnableSpells && !Main.IsUBERace(akTarget)
        newSpell = GetSpellForCombination(analLevel, vaginalLevel, oralLevel)
    endif
    if !newSpell
        RemoveAllSpells(akTarget)
        return
    endif
    Spell prevSpell = StorageUtil.GetFormValue(akTarget, "SLACS_CurrentSpell") as Spell
    if prevSpell && prevSpell != newSpell
        akTarget.RemoveSpell(prevSpell)
        Utility.Wait(0.5)
    endif
    if newSpell && !akTarget.HasSpell(newSpell)
        akTarget.AddSpell(newSpell, false)
        Utility.Wait(0.5)
    endif
    StorageUtil.SetFormValue(akTarget, "SLACS_CurrentSpell", newSpell)
EndFunction

; SexLab P+ 2.18 patch: remove every SLACS clothing spell, whatever the tracking says.
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

int Function GetCumLevel(Actor akTarget, String part, String area, int minSlot, int maxSlot)
    Bool Gender = akTarget.GetLeveledActorBase().GetSex() as Bool
    int count = 0
    int j = minSlot
    while j <= maxSlot
        String Node = area + " [ovl" + j + "]"
        String tex = NiOverride.GetNodeOverrideString(akTarget, Gender, Node, 9, 0)
        if tex != "" && (StringUtil.Find(tex, "slacs2\\" + part) > -1 || StringUtil.Find(tex, "slacs2_ube\\" + part) > -1)
            count += 1
        EndIf
        j += 1
    endwhile
    if count > 2
        count = 2
    endif
    return count
EndFunction

Spell Function GetSpellForCombination(int analLevel, int vaginalLevel, int oralLevel)
    if analLevel < 1 && vaginalLevel < 1 && oralLevel < 1
        return None
    endif
    string name = "spell_"
    bool added = false
    if analLevel > 0
        name += "anal" + analLevel
        added = true
    endif
    if vaginalLevel > 0
        if added
            name += "_"
        endif
        name += "vaginal" + vaginalLevel
        added = true
    endif
    if oralLevel > 0
        if added
            name += "_"
        endif
        name += "oral" + oralLevel
    endif
    Spell selectedSpell = None
    if name == "spell_oral1"
        selectedSpell = spell_oral1
    elseif name == "spell_oral2"
        selectedSpell = spell_oral2
    elseif name == "spell_vaginal1"
        selectedSpell = spell_vaginal1
    elseif name == "spell_vaginal1_oral1"
        selectedSpell = spell_vaginal1_oral1
    elseif name == "spell_vaginal1_oral2"
        selectedSpell = spell_vaginal1_oral2
    elseif name == "spell_vaginal2"
        selectedSpell = spell_vaginal2
    elseif name == "spell_vaginal2_oral1"
        selectedSpell = spell_vaginal2_oral1
    elseif name == "spell_vaginal2_oral2"
        selectedSpell = spell_vaginal2_oral2
    elseif name == "spell_anal1"
        selectedSpell = spell_anal1
    elseif name == "spell_anal1_oral1"
        selectedSpell = spell_anal1_oral1
    elseif name == "spell_anal1_oral2"
        selectedSpell = spell_anal1_oral2
    elseif name == "spell_anal1_vaginal1"
        selectedSpell = spell_anal1_vaginal1
    elseif name == "spell_anal1_vaginal1_oral1"
        selectedSpell = spell_anal1_vaginal1_oral1
    elseif name == "spell_anal1_vaginal1_oral2"
        selectedSpell = spell_anal1_vaginal1_oral2
    elseif name == "spell_anal1_vaginal2"
        selectedSpell = spell_anal1_vaginal2
    elseif name == "spell_anal1_vaginal2_oral1"
        selectedSpell = spell_anal1_vaginal2_oral1
    elseif name == "spell_anal1_vaginal2_oral2"
        selectedSpell = spell_anal1_vaginal2_oral2
    elseif name == "spell_anal2"
        selectedSpell = spell_anal2
    elseif name == "spell_anal2_oral1"
        selectedSpell = spell_anal2_oral1
    elseif name == "spell_anal2_oral2"
        selectedSpell = spell_anal2_oral2
    elseif name == "spell_anal2_vaginal1"
        selectedSpell = spell_anal2_vaginal1
    elseif name == "spell_anal2_vaginal1_oral1"
        selectedSpell = spell_anal2_vaginal1_oral1
    elseif name == "spell_anal2_vaginal1_oral2"
        selectedSpell = spell_anal2_vaginal1_oral2
    elseif name == "spell_anal2_vaginal2"
        selectedSpell = spell_anal2_vaginal2
    elseif name == "spell_anal2_vaginal2_oral1"
        selectedSpell = spell_anal2_vaginal2_oral1
    elseif name == "spell_anal2_vaginal2_oral2"
        selectedSpell = spell_anal2_vaginal2_oral2
    endif
    return selectedSpell
EndFunction

Event OnInit()
    skeeVersion = SKSE.GetPluginVersion("skee")
EndEvent
