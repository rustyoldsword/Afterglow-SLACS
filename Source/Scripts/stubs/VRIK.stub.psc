Scriptname VRIK Hidden
{Minimal build-time stub of the VRIK VR mod API. Never shipped, only used so that
 SexLab P+ VR sources can be parsed while compiling the SE cum overlay patch.}

Int Function VrikGetBuildNumber() Global Native
Float Function VrikGetSetting(String asSetting) Global Native
Function VrikSetSetting(String asSetting, Float afValue) Global Native
Function VrikSetGesture(String asSetting, Int aiValue) Global Native
Function VrikRestoreSettings() Global Native
Function VrikBeginGestureProfile() Global Native
Function VrikEndGestureProfile() Global Native
Function VrikSetProfileAction(Int aiGesture, String asAction) Global Native
