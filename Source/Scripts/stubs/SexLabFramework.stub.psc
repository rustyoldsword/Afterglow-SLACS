ScriptName SexLabFramework extends Quest
{Build-time stub. Only the members SLPPlusUBECum / the patched SLACS scripts touch are
 declared, so they compile without the SexLab P+ source tree (which the Bethesda
 PapyrusCompiler cannot parse). NEVER shipped: the papyrus VM resolves every call and
 property below by name against the real SexLabFramework script at runtime.}

sslSystemConfig property Config Auto
sslThreadSlots property ThreadSlots Auto

Function AddCumFxLayers(Actor akActor, int aiType, int aiLayers)
EndFunction

Function RemoveCumFx(Actor akActor, int aiType = -1)
EndFunction

int Function CountCumFx(Actor ActorRef, int aiType = -1)
	return 0
EndFunction

; Mapping: Male = 0 | Female = 1 | Futa = 2 | CrtMale = 3 | CrtFemale = 4
int Function GetSex(Actor akActor)
	return 0
EndFunction

; aiSexTag: 0 - Male, 1 - Female, 2 - Futa
Function TreatAsSex(Actor akActor, int aiSexTag)
EndFunction
