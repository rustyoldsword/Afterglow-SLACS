Scriptname Dirty_BathingQuest extends Quest

GlobalVariable Property Dirty_WashingAutomaticClothes auto
Spell Property Dirty_SoapEffectSpell Auto
Spell Property Dirty_NPCisWashingNow Auto
Formlist property Dirty_ListofSoaps Auto
GlobalVariable Property Dirty_SoundEffect Auto
Sound Property Dirty_WashingMarkerSound auto
Spell Property Dirty_Spell_Dirt1 Auto
Spell Property Dirty_Spell_Dirt2 Auto
Spell Property Dirty_Spell_Dirt3 Auto
Spell Property Dirty_Spell_Dirt4 Auto
Spell Property Dirty_Spell_Blood1 Auto
Spell Property Dirty_Spell_Blood2 Auto
Spell Property Dirty_Spell_Blood3 Auto
Spell Property Dirty_Spell_Blood4 Auto
Spell Property Dirty_Spell_Clean Auto
Formlist Property Dirty_BathingActors Auto
GlobalVariable Property Dirty_PlayerBathingAnimation Auto
GlobalVariable Property Dirty_NPCBathingAnimation Auto

import PO3_SKSEFunctions

Function PlayBatheAnimation(Actor bathingActor, bool isPlayer, bool removeSoap = false)
    If (Dirty_BathingActors.HasForm(bathingActor)) 
        If isPlayer
            Debug.Notification("You are already bathing!")
        Else
            Debug.Notification(bathingActor.GetDisplayName() + " is already bathing!")
        EndIF
        return
    EndIf

    Dirty_BathingActors.AddForm(bathingActor)
    Form[] Clothing
    weapon weapon1
    weapon weapon2

    If removeSoap
        bathingActor.RemoveItem(FindFirstItemInList(bathingActor, Dirty_ListofSoaps))
    EndIf
    If isPlayer && ShouldAnimateBathing(bathingActor, isPlayer)
        ; force 3rd person
        Game.ForceThirdPerson()
        Game.DisablePlayerControls(True, True, True, False, True, False, True)
    EndIF



    If Dirty_WashingAutomaticClothes.GetValue() == 1
        If Game.IsPluginInstalled("All Geared Up Derivative.esp")
            If isPlayer
                Spell Display = Game.GetFormFromFile(0x02003000, "All Geared Up Derivative.esp") As Spell
                bathingActor.RemoveSpell(Display)
            Else
                GlobalVariable ItemsNPC = Game.GetFormFromFile(0x0200A100, "All Geared Up Derivative.esp") As GlobalVariable
                ItemsNPC.SetValue(0)
            EndIf
        endif

        Clothing = new Form[33]
        Int Index = Clothing.Length
        While Index
            Index -= 1
            Int ArmorSlotMask = Armor.GetMaskForSlot(Index + 30)
            Clothing[Index] = bathingActor.GetWornForm(ArmorSlotMask)
            If Clothing[Index]
                bathingActor.UnequipItem(Clothing[Index], False, True)
            EndIf		
        EndWhile

        Weapon1 = bathingActor.GetEquippedWeapon()
        Weapon2 = bathingActor.GetEquippedWeapon(True)
        bathingActor.Unequipall()
    endif

    Utility.Wait(0.1)
    if isPlayer && Dirty_SoundEffect.GetValue() == 1
        int instanceID = Dirty_WashingMarkerSound.play(bathingActor)     
        Sound.SetInstanceVolume(instanceID, 1.0)
    endif
    ; lather up
    Lather(bathingActor, isPlayer)

    Wash(bathingActor, isPlayer)

    Rinse(bathingActor, isPlayer)

    if isPlayer
        bathingActor.RemoveSpell(Dirty_SoapEffectSpell)
        bathingActor.RemoveSpell(Dirty_Spell_Dirt1)
        bathingActor.RemoveSpell(Dirty_Spell_Dirt2)
        bathingActor.RemoveSpell(Dirty_Spell_Dirt3)
        bathingActor.RemoveSpell(Dirty_Spell_Dirt4)
        bathingActor.RemoveSpell(Dirty_Spell_Blood1)
        bathingActor.RemoveSpell(Dirty_Spell_Blood2)
        bathingActor.RemoveSpell(Dirty_Spell_Blood3)
        bathingActor.RemoveSpell(Dirty_Spell_Blood4)
        bathingActor.AddSpell(Dirty_Spell_Clean, False)
    else
        bathingActor.RemoveSpell(Dirty_SoapEffectSpell)
        bathingActor.AddSpell(Dirty_NPCisWashingNow)	
    endIf

    Dry(bathingActor, isPlayer)
    
    if isPlayer 
        if ShouldAnimateBathing(bathingActor, isPlayer)
            Game.EnablePlayerControls()
        endIf
    else
        bathingActor.RemoveSpell(Dirty_NPCisWashingNow)	
    endIf
   

    ;re-equip
    If Dirty_WashingAutomaticClothes.GetValue() == 1
        If Game.IsPluginInstalled("All Geared Up Derivative.esp")
            If isPlayer
                Spell Display = Game.GetFormFromFile(0x02003000, "All Geared Up Derivative.esp") As Spell
                bathingActor.AddSpell(Display, false)
            Else
                GlobalVariable ItemsNPC = Game.GetFormFromFile(0x0200A100, "All Geared Up Derivative.esp") As GlobalVariable
                ItemsNPC.SetValue(1)
            EndIf
        endif

        Int ClothingIndex = Clothing.Length
        While ClothingIndex
            ClothingIndex -= 1
            If Clothing[ClothingIndex]
                bathingActor.EquipItem(Clothing[ClothingIndex], False, True)
            EndIf
        EndWhile
        bathingActor.EquipItemEx(Weapon1, 1, false, true)
        bathingActor.EquipItemEx(Weapon2, 2, false, true)
    Endif
    Dirty_BathingActors.RemoveAddedForm(bathingActor)
	
	; PATCH: Send ModEvent for cleaning (to integrate with other mods like SLACS)
    int cleanEvent = ModEvent.Create("DnB_CleanActorDirt")
    if cleanEvent
        ModEvent.PushForm(cleanEvent, bathingActor)
        ModEvent.Send(cleanEvent)
    endif
EndFunction

Function Lather(Actor bathingActor, bool isPlayer)
    if (ShouldAnimateBathing(bathingActor, isPlayer))
        Debug.SendAnimationEvent(bathingActor, "IdleForceDefaultState")
        Utility.Wait(0.1)
        Debug.SendAnimationEvent(bathingActor, "IdleSearchingChest")
        Utility.Wait(3.0)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
    endIf
    bathingActor.AddSpell(Dirty_SoapEffectSpell, False)
    if (ShouldAnimateBathing(bathingActor, isPlayer))
        Utility.Wait(0.3)
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(1.0)
        Debug.SendAnimationEvent(bathingActor, "IdleWipeBrow")
        Utility.Wait(3.0)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
    endIf
EndFunction

Function Wash(Actor bathingActor, bool isPlayer)
    if (ShouldAnimateBathing(bathingActor, isPlayer))
        ; wash
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
        Debug.SendAnimationEvent(bathingActor, "IdleWarmArms")
        Utility.Wait(1.5)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(1.0)
    endIf
EndFunction

Function Rinse(Actor bathingActor, bool isPlayer)
    if (ShouldAnimateBathing(bathingActor, isPlayer))
        ; rinse off
        Debug.SendAnimationEvent(bathingActor, "IdleWarmHandsCrouched")
        Utility.Wait(3.0)
    endIf
EndFunction

Function Dry(Actor bathingActor, bool isPlayer)
    if (ShouldAnimateBathing(bathingActor, isPlayer))
        Utility.Wait(1.0)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(1.0)
        Debug.SendAnimationEvent(bathingActor, "IdleWipeBrow")
        Utility.Wait(3.0)
        Debug.SendAnimationEvent(bathingActor, "IdleStop")
        Utility.Wait(0.3)
    endIf
EndFunction

bool Function ShouldAnimateBathing(Actor bathingActor, bool isPlayer)
    return (Dirty_PlayerBathingAnimation.GetValue() == 1 && isPlayer) || (Dirty_NPCBathingAnimation.GetValue() == 1 && !isPlayer)
EndFunction