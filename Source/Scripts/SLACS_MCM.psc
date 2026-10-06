Scriptname SLACS_MCM extends SKI_ConfigBase

;=====================================================================
; PROPERTIES
;=====================================================================
Actor Property Player Auto
SLACS_Main Property Main Auto
SexLabFramework Property Sexlab Auto
SLACS_SpellHandler Property SpellHandler Auto

;--- Main options (General) -------------------------------------------
int ApplyRandomLayersOID_T
int ClearLayersOID_T
int EnableSpellsOID_T
int EnableFadeOutOID_T
int MegaCumForAllOID_T

int BodyStartSlotOID_S
int FaceStartSlotOID_S
int HandsStartSlotOID_S
int FeetStartSlotOID_S

;--- Overlay Opacity (NEW) -------------------------------------------
int Property OverlayOpacityOID_S Auto
int Property OverlayOpacity = 100 Auto Hidden   ; 0-100 %

;--- Test panel (Advanced Test Layers) -------------------------------
int Property OralSliderOID_S Auto
int Property VaginalSliderOID_S Auto
int Property AnalSliderOID_S Auto
int Property HandsSliderOID_S Auto
int Property FeetSliderOID_S Auto

int Property OralLayers = 0 Auto Hidden
int Property VaginalLayers = 0 Auto Hidden
int Property AnalLayers = 0 Auto Hidden
int Property HandsLayers = 0 Auto Hidden
int Property FeetLayers = 0 Auto Hidden

int ApplyTestOID
int ClearTestOID
int ResetSlidersOID

;--- Hotkeys ---------------------------------------------------------
int Property ApplyHotkeyOID_K Auto
int Property ClearHotkeyOID_K Auto
int Property ApplyHotkey = -1 Auto Hidden
int Property ClearHotkey = -1 Auto Hidden

;=====================================================================
; INITIALISATION
;=====================================================================
Event OnConfigInit()
    ; Initialize default values - CHANGED: All slots start at 7
    Main.FadeOutEnabled = true
    Main.MegaCumForAll = false
    Main.StartSlotBody = 7      ; CHANGED: was 41
    Main.StartSlotFace = 7      ; CHANGED: was 41
    Main.StartSlotHands = 7     ; CHANGED: was 41
    Main.StartSlotFeet = 7      ; CHANGED: was 41

    LoadSavedValues()
    OverlayOpacity = StorageUtil.GetIntValue(Self, "SLACS_OverlayOpacity", 100)
    ApplyOverlayOpacity()
EndEvent

; SexLab P+ 2.18 patch: re-register SLACS_Main's mod events on every game load
Event OnGameReload()
    parent.OnGameReload()
    if Main
        Main.Maintenance()
    endif
EndEvent

Event OnConfigOpen()
    Pages = new string[3]
    Pages[0] = "General"
    Pages[1] = "Advanced Test Layers"
    Pages[2] = "Slot Configuration"
EndEvent

Event OnConfigClose()
    SaveValues()
EndEvent

;=====================================================================
; PAGE LAYOUT
;=====================================================================
Event OnPageReset(string page)
    if page == "General"
        SetCursorFillMode(TOP_TO_BOTTOM)

        AddHeaderOption("Cum Layer Controls")
        ApplyRandomLayersOID_T = AddTextOption("Apply Random Cum Layers", "Apply")
        ClearLayersOID_T       = AddTextOption("Clear Cum Layers", "Clear")
        EnableSpellsOID_T      = AddToggleOption("Enable clothing effects", SpellHandler.EnableSpells)
        EnableFadeOutOID_T     = AddToggleOption("Enable gradual sperm cleansing", Main.FadeOutEnabled)
        MegaCumForAllOID_T     = AddToggleOption("Enable Mega Cumshots for All", Main.MegaCumForAll)

        AddEmptyOption()
        AddHeaderOption("Overlay Settings")
        OverlayOpacityOID_S = AddSliderOption("Overlay Opacity", OverlayOpacity, "{0}%")

        AddEmptyOption()
        AddHeaderOption("Integrated Plugins")
        bool hasBIS = Game.IsPluginInstalled("Bathing in Skyrim.esp")
        if hasBIS
            AddTextOption("Bathing in Skyrim - Renewed", "On")
        else
            AddTextOption("Bathing in Skyrim - Renewed", "Off")
        endif
        bool hasDnB = Game.IsPluginInstalled("Dirt and Blood - Dynamic Visuals.esp")
        if hasDnB
            AddTextOption("Dirt and Blood - Dynamic Visual Effects", "On")
        else
            AddTextOption("Dirt and Blood - Dynamic Visual Effects", "Off")
        endif
        bool hasUBE = Game.IsPluginInstalled("UBE_AllRace.esp")
        if hasUBE
            AddTextOption("UBE 2.0 Body Support", "On", 0)
        else
            AddTextOption("UBE 2.0 Body Support", "Off", 0)
        endif

    elseif page == "Advanced Test Layers"
        SetCursorFillMode(TOP_TO_BOTTOM)

        AddHeaderOption("Advanced Test Layers")

        Actor target = Game.GetCurrentCrosshairRef() as Actor
        if !target
            target = Player
        endif
        string targetName = target.GetLeveledActorBase().GetName()
        if target == Player
            targetName += " (You)"
        endif
        AddTextOption("Target: " + targetName, "", OPTION_FLAG_DISABLED)

        AddEmptyOption()

        OralSliderOID_S    = AddSliderOption("Oral (incl. Breast)", OralLayers, "{0}")
        VaginalSliderOID_S = AddSliderOption("Vaginal", VaginalLayers, "{0}")
        AnalSliderOID_S    = AddSliderOption("Anal", AnalLayers, "{0}")
        HandsSliderOID_S   = AddSliderOption("Hands", HandsLayers, "{0}")
        FeetSliderOID_S    = AddSliderOption("Feet", FeetLayers, "{0}")

        AddEmptyOption()

        ApplyTestOID     = AddTextOption("Apply Selected Layers", "Apply")
        ClearTestOID     = AddTextOption("Clear All Layers", "Clear")
        ResetSlidersOID  = AddTextOption("Reset Sliders to 0", "Reset")

        AddEmptyOption()

        ApplyHotkeyOID_K = AddKeyMapOption("Hotkey: Apply Layers", ApplyHotkey)
        ClearHotkeyOID_K = AddKeyMapOption("Hotkey: Clear Layers", ClearHotkey)

    elseif page == "Slot Configuration"
        SetCursorFillMode(TOP_TO_BOTTOM)
        AddHeaderOption("Custom Overlay Slot Ranges")
        AddEmptyOption()

        ; CHANGED: Minimum slider value is now 7 for all groups
        BodyStartSlotOID_S = AddSliderOption("Body Start Slot", Main.StartSlotBody, "{0}")
        FaceStartSlotOID_S = AddSliderOption("Face Start Slot", Main.StartSlotFace, "{0}")
        HandsStartSlotOID_S = AddSliderOption("Hands Start Slot", Main.StartSlotHands, "{0}")
        FeetStartSlotOID_S = AddSliderOption("Feet Start Slot", Main.StartSlotFeet, "{0}")

        AddEmptyOption()
        ; Show current slot ranges
        AddTextOption("Body: " + Main.StartSlotBody + " > " + (Main.StartSlotBody + 19), "", 16)
        AddTextOption("Face: " + Main.StartSlotFace + " > " + (Main.StartSlotFace + 5), "", 16)
        AddTextOption("Hands: " + Main.StartSlotHands + " > " + (Main.StartSlotHands + 1), "", 16)
        AddTextOption("Feet: " + Main.StartSlotFeet + " > " + (Main.StartSlotFeet + 1), "", 16)
    endif
EndEvent

;=====================================================================
; SLIDER DIALOGS
;=====================================================================
Event OnOptionSliderOpen(int option)
    ; Test layer sliders (unchanged)
    if option == OralSliderOID_S
        SetSliderDialogStartValue(OralLayers)
        SetSliderDialogDefaultValue(0)
        SetSliderDialogRange(0, 6)
        SetSliderDialogInterval(1)
    elseif option == VaginalSliderOID_S
        SetSliderDialogStartValue(VaginalLayers)
        SetSliderDialogDefaultValue(0)
        SetSliderDialogRange(0, 6)
        SetSliderDialogInterval(1)
    elseif option == AnalSliderOID_S
        SetSliderDialogStartValue(AnalLayers)
        SetSliderDialogDefaultValue(0)
        SetSliderDialogRange(0, 6)
        SetSliderDialogInterval(1)
    elseif option == HandsSliderOID_S
        SetSliderDialogStartValue(HandsLayers)
        SetSliderDialogDefaultValue(0)
        SetSliderDialogRange(0, 2)
        SetSliderDialogInterval(1)
    elseif option == FeetSliderOID_S
        SetSliderDialogStartValue(FeetLayers)
        SetSliderDialogDefaultValue(0)
        SetSliderDialogRange(0, 2)
        SetSliderDialogInterval(1)

    ; CHANGED: Slot configuration sliders - minimum value 7, default 7
    elseif option == BodyStartSlotOID_S
        SetSliderDialogStartValue(Main.StartSlotBody)
        SetSliderDialogDefaultValue(7)          ; CHANGED: was 41
        SetSliderDialogRange(7, 60)             ; CHANGED: minimum 7
        SetSliderDialogInterval(1)
    elseif option == FaceStartSlotOID_S
        SetSliderDialogStartValue(Main.StartSlotFace)
        SetSliderDialogDefaultValue(7)          ; CHANGED: was 41
        SetSliderDialogRange(7, 60)             ; CHANGED: minimum 7
        SetSliderDialogInterval(1)
    elseif option == HandsStartSlotOID_S
        SetSliderDialogStartValue(Main.StartSlotHands)
        SetSliderDialogDefaultValue(7)          ; CHANGED: was 41
        SetSliderDialogRange(7, 60)             ; CHANGED: minimum 7
        SetSliderDialogInterval(1)
    elseif option == FeetStartSlotOID_S
        SetSliderDialogStartValue(Main.StartSlotFeet)
        SetSliderDialogDefaultValue(7)          ; CHANGED: was 41
        SetSliderDialogRange(7, 60)             ; CHANGED: minimum 7
        SetSliderDialogInterval(1)

    elseif option == OverlayOpacityOID_S
        SetSliderDialogStartValue(OverlayOpacity)
        SetSliderDialogDefaultValue(100)
        SetSliderDialogRange(0, 100)
        SetSliderDialogInterval(1)
    endif
EndEvent

Event OnOptionSliderAccept(int option, float value)
    int val = value as int

    ; Test layer sliders (unchanged)
    if option == OralSliderOID_S
        OralLayers = val
        SetSliderOptionValue(OralSliderOID_S, val, "{0}")
    elseif option == VaginalSliderOID_S
        VaginalLayers = val
        SetSliderOptionValue(VaginalSliderOID_S, val, "{0}")
    elseif option == AnalSliderOID_S
        AnalLayers = val
        SetSliderOptionValue(AnalSliderOID_S, val, "{0}")
    elseif option == HandsSliderOID_S
        HandsLayers = val
        SetSliderOptionValue(HandsSliderOID_S, val, "{0}")
    elseif option == FeetSliderOID_S
        FeetLayers = val
        SetSliderOptionValue(FeetSliderOID_S, val, "{0}")

    ; CHANGED: Slot validation - ensure value >= 7 and check max range
    elseif option == BodyStartSlotOID_S
        if val < 7
            ShowMessage("Body start slot minimum is 7!", false)
            return
        endif
        if val + 19 > 60
            ShowMessage("Body range exceeds slot 60! Max start: " + (60 - 19), false)
            return
        endif
        Main.StartSlotBody = val
        SetSliderOptionValue(BodyStartSlotOID_S, val, "{0}")

    elseif option == FaceStartSlotOID_S
        if val < 7
            ShowMessage("Face start slot minimum is 7!", false)
            return
        endif
        if val + 5 > 60
            ShowMessage("Face range exceeds slot 60! Max start: " + (60 - 5), false)
            return
        endif
        Main.StartSlotFace = val
        SetSliderOptionValue(FaceStartSlotOID_S, val, "{0}")

    elseif option == HandsStartSlotOID_S
        if val < 7
            ShowMessage("Hands start slot minimum is 7!", false)
            return
        endif
        if val + 1 > 60
            ShowMessage("Hands range exceeds slot 60! Max start: " + (60 - 1), false)
            return
        endif
        Main.StartSlotHands = val
        SetSliderOptionValue(HandsStartSlotOID_S, val, "{0}")

    elseif option == FeetStartSlotOID_S
        if val < 7
            ShowMessage("Feet start slot minimum is 7!", false)
            return
        endif
        if val + 1 > 60
            ShowMessage("Feet range exceeds slot 60! Max start: " + (60 - 1), false)
            return
        endif
        Main.StartSlotFeet = val
        SetSliderOptionValue(FeetStartSlotOID_S, val, "{0}")

    elseif option == OverlayOpacityOID_S
        OverlayOpacity = val
        SetSliderOptionValue(OverlayOpacityOID_S, val, "{0}%")
        ApplyOverlayOpacity()
    endif

    ForcePageReset()
EndEvent

;=====================================================================
; KEYMAP
;=====================================================================
Event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
    if option == ApplyHotkeyOID_K
        if ApplyHotkey != -1
            UnregisterForKey(ApplyHotkey)
        endif
        ApplyHotkey = keyCode
        SetKeyMapOptionValue(ApplyHotkeyOID_K, keyCode)
        if keyCode != -1
            RegisterForKey(keyCode)
        endif

    elseif option == ClearHotkeyOID_K
        if ClearHotkey != -1
            UnregisterForKey(ClearHotkey)
        endif
        ClearHotkey = keyCode
        SetKeyMapOptionValue(ClearHotkeyOID_K, keyCode)
        if keyCode != -1
            RegisterForKey(keyCode)
        endif
    endif
EndEvent

Event OnKeyDown(int keyCode)
    if !Utility.IsInMenuMode() && Main && Sexlab
        if keyCode == ApplyHotkey
            ApplyTestLayers()
        elseif keyCode == ClearHotkey
            ClearTestLayers()
        endif
    endif
EndEvent

;=====================================================================
; BUTTONS & TOGGLES
;=====================================================================
Event OnOptionSelect(int option)
    if !Main || !Sexlab
        Debug.Notification("Error: Main or Sexlab not initialized")
        return
    endif

    if option == ApplyRandomLayersOID_T
        bool success = Main.AddCum(Player, true, true, true, true, true, true)
        if success
            Debug.Notification("Random cum layers applied successfully")
        else
            Debug.Notification("Failed to apply cum layers")
        endif

    elseif option == ClearLayersOID_T
        Main.ClearCum(Player)
        Debug.Notification("Cum layers cleared")

    elseif option == EnableSpellsOID_T
        SpellHandler.EnableSpells = !SpellHandler.EnableSpells
        SetToggleOptionValue(EnableSpellsOID_T, SpellHandler.EnableSpells)

    elseif option == EnableFadeOutOID_T
        Main.FadeOutEnabled = !Main.FadeOutEnabled
        SetToggleOptionValue(EnableFadeOutOID_T, Main.FadeOutEnabled)

    elseif option == MegaCumForAllOID_T
        Main.MegaCumForAll = !Main.MegaCumForAll
        SetToggleOptionValue(MegaCumForAllOID_T, Main.MegaCumForAll)

    elseif option == ApplyTestOID
        ApplyTestLayers()

    elseif option == ClearTestOID
        ClearTestLayers()

    elseif option == ResetSlidersOID
        ResetTestSliders()
        Debug.Notification("Sliders reset to 0")
    endif
EndEvent

;=====================================================================
; UTILITIES
;=====================================================================
Function ApplyTestLayers()
    Actor target = Game.GetCurrentCrosshairRef() as Actor
    if !target
        target = Player
    endif

    bool success = false
    int i = 0

    while i < OralLayers
        success = Main.AddCum(target, false, true, false, true, false, false) || success
        i += 1
    endWhile
    i = 0
    while i < VaginalLayers
        success = Main.AddCum(target, true, false, false, false, false, false) || success
        i += 1
    endWhile
    i = 0
    while i < AnalLayers
        success = Main.AddCum(target, false, false, true, false, false, false) || success
        i += 1
    endWhile
    i = 0
    while i < HandsLayers
        success = Main.AddCum(target, false, false, false, false, true, false) || success
        i += 1
    endWhile
    i = 0
    while i < FeetLayers
        success = Main.AddCum(target, false, false, false, false, false, true) || success
        i += 1
    endWhile

    if success
        Debug.Notification("Applied " + (OralLayers + VaginalLayers + AnalLayers + HandsLayers + FeetLayers) + " layers to " + target.GetLeveledActorBase().GetName())
    else
        Debug.Notification("No layers applied (all 0)")
    endif
EndFunction

Function ClearTestLayers()
    Actor target = Game.GetCurrentCrosshairRef() as Actor
    if !target
        target = Player
    endif
    Main.ClearCum(target)
    Debug.Notification("Cleared all layers from " + target.GetLeveledActorBase().GetName())
EndFunction

Function ResetTestSliders()
    OralLayers = 0
    VaginalLayers = 0
    AnalLayers = 0
    HandsLayers = 0
    FeetLayers = 0
    SetSliderOptionValue(OralSliderOID_S, 0, "{0}")
    SetSliderOptionValue(VaginalSliderOID_S, 0, "{0}")
    SetSliderOptionValue(AnalSliderOID_S, 0, "{0}")
    SetSliderOptionValue(HandsSliderOID_S, 0, "{0}")
    SetSliderOptionValue(FeetSliderOID_S, 0, "{0}")
EndFunction

;=====================================================================
; OVERLAY OPACITY
;=====================================================================
Function ApplyOverlayOpacity()
    SetActorOverlayOpacity(Player)

    int i = 0
    while i < Main.SLACS_AffectedActors.GetSize()
        Actor act = Main.SLACS_AffectedActors.GetAt(i) as Actor
        if act && act != Player
            SetActorOverlayOpacity(act)
        endif
        i += 1
    endWhile
EndFunction

Function SetActorOverlayOpacity(Actor akTarget)
    if !akTarget || Main.skeeVersion < 0
        return
    endif

    Bool gender = akTarget.GetLeveledActorBase().GetSex() as Bool
    float alpha = OverlayOpacity as float / 100.0

    ; Body: 20 slots
    int bodyMin = Main.StartSlotBody
    int bodyMax = bodyMin + 19
    int i = bodyMin
    while i <= bodyMax
        string node = "Body [ovl" + i + "]"
        NiOverride.AddNodeOverrideFloat(akTarget, gender, node, 8, -1, alpha, true)
        i += 1
    endWhile

    ; Face: 6 slots
    int faceMin = Main.StartSlotFace
    int faceMax = faceMin + 5
    i = faceMin
    while i <= faceMax
        string node = "Face [ovl" + i + "]"
        NiOverride.AddNodeOverrideFloat(akTarget, gender, node, 8, -1, alpha, true)
        i += 1
    endWhile

    ; Hands: 2 slots
    int handsMin = Main.StartSlotHands
    int handsMax = handsMin + 1
    i = handsMin
    while i <= handsMax
        string node = "Hands [ovl" + i + "]"
        NiOverride.AddNodeOverrideFloat(akTarget, gender, node, 8, -1, alpha, true)
        i += 1
    endWhile

    ; Feet: 2 slots
    int feetMin = Main.StartSlotFeet
    int feetMax = feetMin + 1
    i = feetMin
    while i <= feetMax
        string node = "Feet [ovl" + i + "]"
        NiOverride.AddNodeOverrideFloat(akTarget, gender, node, 8, -1, alpha, true)
        i += 1
    endWhile
EndFunction

;=====================================================================
; SAVE / LOAD
;=====================================================================
Function SaveValues()
    StorageUtil.SetIntValue(Self, "SLACS_OralLayers", OralLayers)
    StorageUtil.SetIntValue(Self, "SLACS_VaginalLayers", VaginalLayers)
    StorageUtil.SetIntValue(Self, "SLACS_AnalLayers", AnalLayers)
    StorageUtil.SetIntValue(Self, "SLACS_HandsLayers", HandsLayers)
    StorageUtil.SetIntValue(Self, "SLACS_FeetLayers", FeetLayers)
    StorageUtil.SetIntValue(Self, "SLACS_ApplyHotkey", ApplyHotkey)
    StorageUtil.SetIntValue(Self, "SLACS_ClearHotkey", ClearHotkey)
    StorageUtil.SetIntValue(Self, "SLACS_OverlayOpacity", OverlayOpacity)
EndFunction

Function LoadSavedValues()
    OralLayers    = StorageUtil.GetIntValue(Self, "SLACS_OralLayers", 0)
    VaginalLayers = StorageUtil.GetIntValue(Self, "SLACS_VaginalLayers", 0)
    AnalLayers    = StorageUtil.GetIntValue(Self, "SLACS_AnalLayers", 0)
    HandsLayers   = StorageUtil.GetIntValue(Self, "SLACS_HandsLayers", 0)
    FeetLayers    = StorageUtil.GetIntValue(Self, "SLACS_FeetLayers", 0)
    ApplyHotkey   = StorageUtil.GetIntValue(Self, "SLACS_ApplyHotkey", -1)
    ClearHotkey   = StorageUtil.GetIntValue(Self, "SLACS_ClearHotkey", -1)
    OverlayOpacity = StorageUtil.GetIntValue(Self, "SLACS_OverlayOpacity", 100)

    if ApplyHotkey != -1
        RegisterForKey(ApplyHotkey)
    endif
    if ClearHotkey != -1
        RegisterForKey(ClearHotkey)
    endif
EndFunction

;=====================================================================
; HIGHLIGHT
;=====================================================================
Event OnOptionHighlight(int option)
    if option == BodyStartSlotOID_S
        SetInfoText("Body: Vaginal(6) + Anal(6) + Breast(6) + Legs(2) = 20 slots total")
    elseif option == FaceStartSlotOID_S
        SetInfoText("Face: Oral(6) = 6 slots")
    elseif option == HandsStartSlotOID_S
        SetInfoText("Hands: Handjob(2) = 2 slots")
    elseif option == FeetStartSlotOID_S
        SetInfoText("Feet: Footjob(2) = 2 slots")
    endif
EndEvent
