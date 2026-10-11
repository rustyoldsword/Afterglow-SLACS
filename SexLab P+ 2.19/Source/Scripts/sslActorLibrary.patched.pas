.info
	.source "sslActorLibrary.psc"
	.modifyTime 1791094169 ;Sun Oct 04 09:09:29 2026 Local
	.compileTime 1791094734 ;Sun Oct 04 09:18:54 2026 Local
	.user "xxxxx"
	.computer "XXX"
.endInfo
.userFlagsRef
	.flag hidden 0	; 0x00000000
	.flag conditional 1	; 0x00000001
.endUserFlagsRef
.objectTable
	.object sslActorLibrary sslSystemLibrary
		.userFlags 0	; Flags: 0x00000000
		.docString "Threading/Animation related Actor specific utility"
		.autoState 
		.variableTable
			.variable ::CumOralSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::ForbiddenFaction_var faction
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::GenderFaction_var faction
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::abCumFX_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::CumAnalSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::CumVaginalSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
		.endVariableTable
		.propertyTable
			.property CumAnalSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumAnalSpell_var
			.endProperty
			.property abCumFX spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::abCumFX_var
			.endProperty
			.property Oral2Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp164 sslsystemconfig
						.local ::temp165 spell
					.endLocalTable
					.code
						PropGet Config self ::temp164                            ;@line 556
						PropGet Oral2Anal1 ::temp164 ::temp165                   ;@line 556
						Return ::temp165                                         ;@line 556
					.endCode
				.endFunction
			.endProperty
			.property APPLIED_TEXTURE_LIST String 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return "SexLabAppliedTextureList"                        ;@line 14
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp170 sslsystemconfig
						.local ::temp171 spell
					.endLocalTable
					.code
						PropGet Config self ::temp170                            ;@line 571
						PropGet Vaginal1Oral1 ::temp170 ::temp171                ;@line 571
						Return ::temp171                                         ;@line 571
					.endCode
				.endFunction
			.endProperty
			.property Oral1Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp166 sslsystemconfig
						.local ::temp167 spell
					.endLocalTable
					.code
						PropGet Config self ::temp166                            ;@line 561
						PropGet Oral1Anal2 ::temp166 ::temp167                   ;@line 561
						Return ::temp167                                         ;@line 561
					.endCode
				.endFunction
			.endProperty
			.property GenderFaction faction auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::GenderFaction_var
			.endProperty
			.property Vaginal1Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp178 sslsystemconfig
						.local ::temp179 spell
					.endLocalTable
					.code
						PropGet Config self ::temp178                            ;@line 591
						PropGet Vaginal1Anal1 ::temp178 ::temp179                ;@line 591
						Return ::temp179                                         ;@line 591
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral1Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp158 sslsystemconfig
						.local ::temp159 spell
					.endLocalTable
					.code
						PropGet Config self ::temp158                            ;@line 541
						PropGet Vaginal1Oral1Anal2 ::temp158 ::temp159           ;@line 541
						Return ::temp159                                         ;@line 541
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp176 sslsystemconfig
						.local ::temp177 spell
					.endLocalTable
					.code
						PropGet Config self ::temp176                            ;@line 586
						PropGet Vaginal2Oral2 ::temp176 ::temp177                ;@line 586
						Return ::temp177                                         ;@line 586
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp202 sslsystemconfig
						.local ::temp203 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp202                            ;@line 652
						PropGet CumVaginalKeyword ::temp202 ::temp203            ;@line 652
						Return ::temp203                                         ;@line 652
					.endCode
				.endFunction
			.endProperty
			.property CumOralKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp198 sslsystemconfig
						.local ::temp199 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp198                            ;@line 642
						PropGet CumOralKeyword ::temp198 ::temp199               ;@line 642
						Return ::temp199                                         ;@line 642
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp174 sslsystemconfig
						.local ::temp175 spell
					.endLocalTable
					.code
						PropGet Config self ::temp174                            ;@line 581
						PropGet Vaginal1Oral2 ::temp174 ::temp175                ;@line 581
						Return ::temp175                                         ;@line 581
					.endCode
				.endFunction
			.endProperty
			.property CumAnalKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp200 sslsystemconfig
						.local ::temp201 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp200                            ;@line 647
						PropGet CumAnalKeyword ::temp200 ::temp201               ;@line 647
						Return ::temp201                                         ;@line 647
					.endCode
				.endFunction
			.endProperty
			.property NudeSuit Armor 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Armor
					.paramTable
					.endParamTable
					.localTable
						.local ::temp136 sslsystemconfig
						.local ::temp137 Armor
					.endLocalTable
					.code
						PropGet Config self ::temp136                            ;@line 485
						PropGet NudeSuit ::temp136 ::temp137                     ;@line 485
						Return ::temp137                                         ;@line 485
					.endCode
				.endFunction
			.endProperty
			.property Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp196 sslsystemconfig
						.local ::temp197 spell
					.endLocalTable
					.code
						PropGet Config self ::temp196                            ;@line 636
						PropGet Anal2 ::temp196 ::temp197                        ;@line 636
						Return ::temp197                                         ;@line 636
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral2Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp156 sslsystemconfig
						.local ::temp157 spell
					.endLocalTable
					.code
						PropGet Config self ::temp156                            ;@line 536
						PropGet Vaginal1Oral2Anal2 ::temp156 ::temp157           ;@line 536
						Return ::temp157                                         ;@line 536
					.endCode
				.endFunction
			.endProperty
			.property FX_ALL Int 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return -1                                                ;@line 16
					.endCode
				.endFunction
			.endProperty
			.property ForbiddenFaction faction auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::ForbiddenFaction_var
			.endProperty
			.property ActorTypeNPC Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp214 sslsystemconfig
						.local ::temp215 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp214                            ;@line 683
						PropGet ActorTypeNPC ::temp214 ::temp215                 ;@line 683
						Return ::temp215                                         ;@line 683
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral1Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp148 sslsystemconfig
						.local ::temp149 spell
					.endLocalTable
					.code
						PropGet Config self ::temp148                            ;@line 516
						PropGet Vaginal2Oral1Anal1 ::temp148 ::temp149           ;@line 516
						Return ::temp149                                         ;@line 516
					.endCode
				.endFunction
			.endProperty
			.property CumOralAnalSpell spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp140 sslsystemconfig
						.local ::temp141 spell
					.endLocalTable
					.code
						PropGet Config self ::temp140                            ;@line 496
						PropGet CumOralAnalSpell ::temp140 ::temp141             ;@line 496
						Return ::temp141                                         ;@line 496
					.endCode
				.endFunction
			.endProperty
			.property DoNothing Package 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Package
					.paramTable
					.endParamTable
					.localTable
						.local ::temp212 sslsystemconfig
						.local ::temp213 Package
					.endLocalTable
					.code
						PropGet Config self ::temp212                            ;@line 678
						PropGet DoNothing ::temp212 ::temp213                    ;@line 678
						Return ::temp213                                         ;@line 678
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalOralSpell spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp142 sslsystemconfig
						.local ::temp143 spell
					.endLocalTable
					.code
						PropGet Config self ::temp142                            ;@line 501
						PropGet CumVaginalOralSpell ::temp142 ::temp143          ;@line 501
						Return ::temp143                                         ;@line 501
					.endCode
				.endFunction
			.endProperty
			.property LAST_APPLIED_TEXTURE_PREFIX String 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return "SexLabLastAppliedTexture"                        ;@line 13
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral2Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp150 sslsystemconfig
						.local ::temp151 spell
					.endLocalTable
					.code
						PropGet Config self ::temp150                            ;@line 521
						PropGet Vaginal2Oral2Anal1 ::temp150 ::temp151           ;@line 521
						Return ::temp151                                         ;@line 521
					.endCode
				.endFunction
			.endProperty
			.property ACTIVE_LAYER_PREFIX String 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return "SexLabActiveLayer"                               ;@line 11
					.endCode
				.endFunction
			.endProperty
			.property Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp194 sslsystemconfig
						.local ::temp195 spell
					.endLocalTable
					.code
						PropGet Config self ::temp194                            ;@line 631
						PropGet Anal1 ::temp194 ::temp195                        ;@line 631
						Return ::temp195                                         ;@line 631
					.endCode
				.endFunction
			.endProperty
			.property FX_VAGINAL Int 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return 0                                                 ;@line 17
					.endCode
				.endFunction
			.endProperty
			.property LAST_APPLIED_TIME_PREFIX String 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return "SexLabLastAppliedTime"                           ;@line 12
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp188 sslsystemconfig
						.local ::temp189 spell
					.endLocalTable
					.code
						PropGet Config self ::temp188                            ;@line 616
						PropGet Vaginal2 ::temp188 ::temp189                     ;@line 616
						Return ::temp189                                         ;@line 616
					.endCode
				.endFunction
			.endProperty
			.property ACTIVE_SET_PREFIX String 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return "SexLabActiveSet"                                 ;@line 10
					.endCode
				.endFunction
			.endProperty
			.property AnimatingFaction faction 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return faction
					.paramTable
					.endParamTable
					.localTable
						.local ::temp132 sslsystemconfig
						.local ::temp133 faction
					.endLocalTable
					.code
						PropGet Config self ::temp132                            ;@line 475
						PropGet AnimatingFaction ::temp132 ::temp133             ;@line 475
						Return ::temp133                                         ;@line 475
					.endCode
				.endFunction
			.endProperty
			.property CumOralSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumOralSpell_var
			.endProperty
			.property Vaginal2Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp180 sslsystemconfig
						.local ::temp181 spell
					.endLocalTable
					.code
						PropGet Config self ::temp180                            ;@line 596
						PropGet Vaginal2Anal1 ::temp180 ::temp181                ;@line 596
						Return ::temp181                                         ;@line 596
					.endCode
				.endFunction
			.endProperty
			.property MAX_FX_TYPES Int 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
					.endParamTable
					.localTable
						.local ::temp0 Int
					.endLocalTable
					.code
						PropGet FX_ORAL self ::temp0                             ;@line 23
						IAdd ::temp0 ::temp0 1                                   ;@line 23
						Return ::temp0                                           ;@line 23
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalAnalSpell spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp144 sslsystemconfig
						.local ::temp145 spell
					.endLocalTable
					.code
						PropGet Config self ::temp144                            ;@line 506
						PropGet CumVaginalAnalSpell ::temp144 ::temp145          ;@line 506
						Return ::temp145                                         ;@line 506
					.endCode
				.endFunction
			.endProperty
			.property CumAnalStackedKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp206 sslsystemconfig
						.local ::temp207 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp206                            ;@line 662
						PropGet CumAnalStackedKeyword ::temp206 ::temp207        ;@line 662
						Return ::temp207                                         ;@line 662
					.endCode
				.endFunction
			.endProperty
			.property FX_ORAL Int 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return 2                                                 ;@line 19
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp182 sslsystemconfig
						.local ::temp183 spell
					.endLocalTable
					.code
						PropGet Config self ::temp182                            ;@line 601
						PropGet Vaginal1Anal2 ::temp182 ::temp183                ;@line 601
						Return ::temp183                                         ;@line 601
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral2Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp154 sslsystemconfig
						.local ::temp155 spell
					.endLocalTable
					.code
						PropGet Config self ::temp154                            ;@line 531
						PropGet Vaginal1Oral2Anal1 ::temp154 ::temp155           ;@line 531
						Return ::temp155                                         ;@line 531
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1Oral1Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp146 sslsystemconfig
						.local ::temp147 spell
					.endLocalTable
					.code
						PropGet Config self ::temp146                            ;@line 511
						PropGet Vaginal1Oral1Anal1 ::temp146 ::temp147           ;@line 511
						Return ::temp147                                         ;@line 511
					.endCode
				.endFunction
			.endProperty
			.property Oral2Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp168 sslsystemconfig
						.local ::temp169 spell
					.endLocalTable
					.code
						PropGet Config self ::temp168                            ;@line 566
						PropGet Oral2Anal2 ::temp168 ::temp169                   ;@line 566
						Return ::temp169                                         ;@line 566
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral1Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp152 sslsystemconfig
						.local ::temp153 spell
					.endLocalTable
					.code
						PropGet Config self ::temp152                            ;@line 526
						PropGet Vaginal2Oral1Anal2 ::temp152 ::temp153           ;@line 526
						Return ::temp153                                         ;@line 526
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral2Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp160 sslsystemconfig
						.local ::temp161 spell
					.endLocalTable
					.code
						PropGet Config self ::temp160                            ;@line 546
						PropGet Vaginal2Oral2Anal2 ::temp160 ::temp161           ;@line 546
						Return ::temp161                                         ;@line 546
					.endCode
				.endFunction
			.endProperty
			.property Oral1Anal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp162 sslsystemconfig
						.local ::temp163 spell
					.endLocalTable
					.code
						PropGet Config self ::temp162                            ;@line 551
						PropGet Oral1Anal1 ::temp162 ::temp163                   ;@line 551
						Return ::temp163                                         ;@line 551
					.endCode
				.endFunction
			.endProperty
			.property DummyWeapon Weapon 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Weapon
					.paramTable
					.endParamTable
					.localTable
						.local ::temp134 sslsystemconfig
						.local ::temp135 Weapon
					.endLocalTable
					.code
						PropGet Config self ::temp134                            ;@line 480
						PropGet DummyWeapon ::temp134 ::temp135                  ;@line 480
						Return ::temp135                                         ;@line 480
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Anal2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp184 sslsystemconfig
						.local ::temp185 spell
					.endLocalTable
					.code
						PropGet Config self ::temp184                            ;@line 606
						PropGet Vaginal2Anal2 ::temp184 ::temp185                ;@line 606
						Return ::temp185                                         ;@line 606
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumVaginalSpell_var
			.endProperty
			.property CumOralStackedKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp204 sslsystemconfig
						.local ::temp205 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp204                            ;@line 657
						PropGet CumOralStackedKeyword ::temp204 ::temp205        ;@line 657
						Return ::temp205                                         ;@line 657
					.endCode
				.endFunction
			.endProperty
			.property Vaginal1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp186 sslsystemconfig
						.local ::temp187 spell
					.endLocalTable
					.code
						PropGet Config self ::temp186                            ;@line 611
						PropGet Vaginal1 ::temp186 ::temp187                     ;@line 611
						Return ::temp187                                         ;@line 611
					.endCode
				.endFunction
			.endProperty
			.property Oral1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp190 sslsystemconfig
						.local ::temp191 spell
					.endLocalTable
					.code
						PropGet Config self ::temp190                            ;@line 621
						PropGet Oral1 ::temp190 ::temp191                        ;@line 621
						Return ::temp191                                         ;@line 621
					.endCode
				.endFunction
			.endProperty
			.property Oral2 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp192 sslsystemconfig
						.local ::temp193 spell
					.endLocalTable
					.code
						PropGet Config self ::temp192                            ;@line 626
						PropGet Oral2 ::temp192 ::temp193                        ;@line 626
						Return ::temp193                                         ;@line 626
					.endCode
				.endFunction
			.endProperty
			.property FX_ANAL Int 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return 1                                                 ;@line 18
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalOralAnalSpell spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp138 sslsystemconfig
						.local ::temp139 spell
					.endLocalTable
					.code
						PropGet Config self ::temp138                            ;@line 491
						PropGet CumVaginalOralAnalSpell ::temp138 ::temp139      ;@line 491
						Return ::temp139                                         ;@line 491
					.endCode
				.endFunction
			.endProperty
			.property Vaginal2Oral1 spell 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return spell
					.paramTable
					.endParamTable
					.localTable
						.local ::temp172 sslsystemconfig
						.local ::temp173 spell
					.endLocalTable
					.code
						PropGet Config self ::temp172                            ;@line 576
						PropGet Vaginal2Oral1 ::temp172 ::temp173                ;@line 576
						Return ::temp173                                         ;@line 576
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalStackedKeyword Keyword 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Keyword
					.paramTable
					.endParamTable
					.localTable
						.local ::temp208 sslsystemconfig
						.local ::temp209 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp208                            ;@line 667
						PropGet CumVaginalStackedKeyword ::temp208 ::temp209     ;@line 667
						Return ::temp209                                         ;@line 667
					.endCode
				.endFunction
			.endProperty
			.property BaseMarker Furniture 
				.userFlags 1	; Flags: 0x00000001
				.docString ""
				.function get
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Furniture
					.paramTable
					.endParamTable
					.localTable
						.local ::temp210 sslsystemconfig
						.local ::temp211 Furniture
					.endLocalTable
					.code
						PropGet Config self ::temp210                            ;@line 673
						PropGet BaseMarker ::temp210 ::temp211                   ;@line 673
						Return ::temp211                                         ;@line 673
					.endCode
				.endFunction
			.endProperty
		.endPropertyTable
		.stateTable
			.state 
				.function CountCrtFemale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp78 Int[]
						.local ::temp79 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp78 akPositions  ;@line 272
						ArrayGetElement ::temp79 ::temp78 4                      ;@line 272
						Return ::temp79                                          ;@line 272
					.endCode
				.endFunction
				.function GetSexAll static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp51 Int
						.local ::temp52 Int[]
						.local ::temp53 Bool
						.local ret Int[]
						.local i Int
						.local ::temp54 Actor
						.local ::temp55 Int
					.endLocalTable
					.code
						ArrayLength ::temp51 akPositions                         ;@line 213
						CallStatic utility CreateIntArray ::temp52 ::temp51 0    ;@line 213
						Assign ret ::temp52                                      ;@line 213
						Assign i 0                                               ;@line 214
					_label1:
						ArrayLength ::temp51 akPositions                         ;@line 215
						CompareLT ::temp53 i ::temp51                            ;@line 215
						JumpF ::temp53 _label0                                   ;@line 215
						ArrayGetElement ::temp54 akPositions i                   ;@line 216
						CallStatic sexlabregistry GetSex ::temp55 ::temp54 False  ;@line 216
						Assign ::temp51 ::temp55                                 ;@line 216
						ArraySetElement ret i ::temp51                           ;@line 216
						IAdd ::temp51 i 1                                        ;@line 217
						Assign i ::temp51                                        ;@line 217
						Jump _label1                                             ;@line 217
					_label0:
						Return ret                                               ;@line 219
					.endCode
				.endFunction
				.function EraseStrip native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akExcludeForm form
					.endParamTable
				.endFunction
				.function WriteStrip native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akExcludeForm form
						.param abNeverStrip Bool
					.endParamTable
				.endFunction
				.function HasVehicle native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param akActor Actor
					.endParamTable
				.endFunction
				.function ContinueStrip static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ItemRef form
						.param DoStrip Bool
					.endParamTable
					.localTable
						.local ::temp266 Int
						.local ::temp267 Bool
						.local t Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp266 ItemRef  ;@line 812
						Assign t ::temp266                                       ;@line 812
						CompareEQ ::temp267 t 1                                  ;@line 813
						JumpF ::temp267 _label2                                  ;@line 813
						Return True                                              ;@line 814
						Jump _label2                                             ;@line 814
					_label2:
						Cast ::temp267 DoStrip                                   ;@line 816
						JumpF ::temp267 _label3                                  ;@line 816
						CompareEQ ::temp267 t -1                                 ;@line 816
						Not ::temp267 ::temp267                                  ;@line 816
						Cast ::temp267 ::temp267                                 ;@line 816
					_label3:
						Return ::temp267                                         ;@line 816
					.endCode
				.endFunction
				.function GetFxSetCount native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param asType Int
						.param asSet String
					.endParamTable
				.endFunction
				.function PickRandomFxSet native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
						.param akActor Actor
						.param aiType Int
					.endParamTable
				.endFunction
				.function CountMale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp67 Int[]
						.local ::temp68 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp67 akPositions  ;@line 256
						ArrayGetElement ::temp68 ::temp67 0                      ;@line 256
						Return ::temp68                                          ;@line 256
					.endCode
				.endFunction
				.function ValidateActorImpl native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akActor Actor
					.endParamTable
				.endFunction
				.function CountSexAll static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp62 Int[]
						.local ::temp63 Int
						.local ::temp64 Bool
						.local ret Int[]
						.local i Int
						.local ::temp65 Actor
						.local ::temp66 Int
						.local sex Int
					.endLocalTable
					.code
						ArrayCreate ::temp62 5                                   ;@line 245
						Assign ret ::temp62                                      ;@line 245
						Assign i 0                                               ;@line 246
					_label5:
						ArrayLength ::temp63 akPositions                         ;@line 247
						CompareLT ::temp64 i ::temp63                            ;@line 247
						JumpF ::temp64 _label4                                   ;@line 247
						ArrayGetElement ::temp65 akPositions i                   ;@line 248
						CallStatic sexlabregistry GetSex ::temp63 ::temp65 False  ;@line 248
						Assign sex ::temp63                                      ;@line 248
						ArrayGetElement ::temp66 ret sex                         ;@line 249
						IAdd ::temp66 ::temp66 1                                 ;@line 249
						Assign ::temp63 ::temp66                                 ;@line 249
						ArraySetElement ret sex ::temp63                         ;@line 249
						IAdd ::temp63 i 1                                        ;@line 250
						Assign i ::temp63                                        ;@line 250
						Jump _label5                                             ;@line 250
					_label4:
						Return ret                                               ;@line 252
					.endCode
				.endFunction
				.function CheckStrip native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akCheckForm form
					.endParamTable
				.endFunction
				.function UnequipSlots native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Form[]
					.paramTable
						.param akActor Actor
						.param aiSlots Int
					.endParamTable
				.endFunction
				.function CountFuta static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp71 Int[]
						.local ::temp72 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp71 akPositions  ;@line 262
						ArrayGetElement ::temp72 ::temp71 2                      ;@line 262
						Return ::temp72                                          ;@line 262
					.endCode
				.endFunction
				.function CountCrtMale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp76 Int[]
						.local ::temp77 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp76 akPositions  ;@line 269
						ArrayGetElement ::temp77 ::temp76 3                      ;@line 269
						Return ::temp77                                          ;@line 269
					.endCode
				.endFunction
				.function CountFemale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp69 Int[]
						.local ::temp70 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp69 akPositions  ;@line 259
						ArrayGetElement ::temp70 ::temp69 1                      ;@line 259
						Return ::temp70                                          ;@line 259
					.endCode
				.endFunction
				.function EraseStripAll native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
					.endParamTable
				.endFunction
				.function CountCreatures static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp73 Int[]
						.local ::temp74 Int
						.local ::temp75 Int
						.local count Int[]
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp73 akPositions  ;@line 265
						Assign count ::temp73                                    ;@line 265
						ArrayGetElement ::temp74 count 3                         ;@line 266
						ArrayGetElement ::temp75 count 4                         ;@line 266
						IAdd ::temp74 ::temp74 ::temp75                          ;@line 266
						Return ::temp74                                          ;@line 266
					.endCode
				.endFunction
				.function ValidateActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp44 Int
						.local ::temp45 Bool
						.local ::temp46 Bool
						.local result Int
						.local ::temp47 faction
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary ValidateActorImpl ::temp44 ActorRef  ;@line 185
						Assign result ::temp44                                   ;@line 185
						CompareEQ ::temp45 result -10                            ;@line 186
						Cast ::temp45 ::temp45                                   ;@line 186
						JumpF ::temp45 _label6                                   ;@line 186
						Cast ::temp45 ::ThreadSlots_var                          ;@line 186
					_label6:
						Cast ::temp45 ::temp45                                   ;@line 186
						JumpF ::temp45 _label7                                   ;@line 186
						CallMethod FindActorController ::ThreadSlots_var ::temp44 ActorRef  ;@line 186
						CompareEQ ::temp46 ::temp44 -1                           ;@line 186
						Cast ::temp45 ::temp46                                   ;@line 186
					_label7:
						JumpF ::temp45 _label8                                   ;@line 186
						PropGet AnimatingFaction self ::temp47                   ;@line 187
						CallMethod RemoveFromFaction ActorRef ::NoneVar ::temp47  ;@line 187
						CallStatic sslActorLibrary ValidateActorImpl ::temp44 ActorRef  ;@line 188
						Assign result ::temp44                                   ;@line 188
						Jump _label8                                             ;@line 188
					_label8:
						Return result                                            ;@line 190
					.endCode
				.endFunction
				.function CreatureFemaleCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp262 Int[]
						.local ::temp263 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp262 Positions          ;@line 799
						ArrayGetElement ::temp263 ::temp262 3                    ;@line 799
						Return ::temp263                                         ;@line 799
					.endCode
				.endFunction
				.function IsValidActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp48 Int
						.local ::temp49 Bool
					.endLocalTable
					.code
						CallMethod ValidateActor self ::temp48 ActorRef          ;@line 193
						CompareGT ::temp49 ::temp48 0                            ;@line 193
						Return ::temp49                                          ;@line 193
					.endCode
				.endFunction
				.function CreatureMaleCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp260 Int[]
						.local ::temp261 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp260 Positions          ;@line 796
						ArrayGetElement ::temp261 ::temp260 2                    ;@line 796
						Return ::temp261                                         ;@line 796
					.endCode
				.endFunction
				.function IsNoStrip
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::temp21 Int
						.local ::temp22 Bool
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp21 ItemRef   ;@line 135
						CompareEQ ::temp22 ::temp21 -1                           ;@line 135
						Return ::temp22                                          ;@line 135
					.endCode
				.endFunction
				.function ForbidActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod AddToFaction ActorRef ::NoneVar ::ForbiddenFaction_var  ;@line 197
					.endCode
				.endFunction
				.function FemaleCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp255 Int[]
						.local ::temp256 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp255 Positions          ;@line 789
						ArrayGetElement ::temp256 ::temp255 1                    ;@line 789
						Return ::temp256                                         ;@line 789
					.endCode
				.endFunction
				.function StripSlots
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Form[]
					.paramTable
						.param ActorRef Actor
						.param Strip Bool[]
						.param DoAnimate Bool
						.param AllowNudesuit Bool
					.endParamTable
					.localTable
						.local ::temp32 Bool
						.local ::temp33 Int
						.local ::temp34 Bool
						.local ::temp36 Form[]
						.local ::temp35 Form[]
					.endLocalTable
					.code
						Not ::temp32 ActorRef                                    ;@line 149
						Cast ::temp32 ::temp32                                   ;@line 149
						JumpT ::temp32 _label9                                   ;@line 149
						ArrayLength ::temp33 Strip                               ;@line 149
						CompareLT ::temp34 ::temp33 33                           ;@line 149
						Cast ::temp32 ::temp34                                   ;@line 149
					_label9:
						JumpF ::temp32 _label10                                  ;@line 149
						CallStatic utility CreateFormArray ::temp35 0 None       ;@line 150
						Return ::temp35                                          ;@line 150
						Jump _label10                                            ;@line 150
					_label10:
						CallStatic sslutility BoolToBit ::temp33 Strip           ;@line 152
						ArrayGetElement ::temp34 Strip 32                        ;@line 152
						CallMethod StripActorImpl self ::temp36 ActorRef ::temp33 ::temp34 DoAnimate  ;@line 152
						Return ::temp36                                          ;@line 152
					.endCode
				.endFunction
				.function UnstripActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
						.param Stripped Form[]
						.param IsVictim Bool
					.endParamTable
					.localTable
						.local ::temp39 Int
						.local ::temp40 Bool
						.local i Int
						.local ::temp41 form
						.local ::temp42 form
						.local ::NoneVar None
						.local hand Int
						.local ::temp43 Bool
					.endLocalTable
					.code
						Assign i 0                                               ;@line 164
					_label14:
						ArrayLength ::temp39 Stripped                            ;@line 165
						CompareLT ::temp40 i ::temp39                            ;@line 165
						JumpF ::temp40 _label11                                  ;@line 165
						ArrayGetElement ::temp41 Stripped i                      ;@line 166
						JumpF ::temp41 _label12                                  ;@line 166
						ArrayGetElement ::temp42 Stripped i                      ;@line 167
						CallStatic storageutil GetIntValue ::temp39 ::temp42 "hand" 0  ;@line 167
						Assign hand ::temp39                                     ;@line 167
						JumpF hand _label13                                      ;@line 168
						ArrayGetElement ::temp42 Stripped i                      ;@line 169
						CallStatic storageutil UnsetIntValue ::temp43 ::temp42 "hand"  ;@line 169
						Jump _label13                                            ;@line 169
					_label13:
						ArrayGetElement ::temp42 Stripped i                      ;@line 171
						CallMethod EquipItemEx ActorRef ::NoneVar ::temp42 hand False True  ;@line 171
						Jump _label12                                            ;@line 171
					_label12:
						IAdd ::temp39 i 1                                        ;@line 173
						Assign i ::temp39                                        ;@line 173
						Jump _label14                                            ;@line 173
					_label11:
					.endCode
				.endFunction
				.function GetGenderTag
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
						.param Females Int
						.param Males Int
						.param Creatures Int
					.endParamTable
					.localTable
						.local ::temp265 String
					.endLocalTable
					.code
						CallStatic sexlabutil GetGenderTag ::temp265 Females Males Creatures  ;@line 807
						Return ::temp265                                         ;@line 807
					.endCode
				.endFunction
				.function RemoveCumFx
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akTarget Actor
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp7 Int
						.local ::temp8 Bool
						.local ::temp10 String
						.local ::temp11 form
						.local ::temp12 actorbase
						.local ::temp13 String
						.local ::temp9 Bool
						.local removeFxType Int
						.local ::NoneVar None
						.local removed Int
						.local isFemale Bool
						.local LastEffect String
						.local ::temp14 Bool
						.local handle Int
					.endLocalTable
					.code
						PropGet FX_ALL self ::temp7                              ;@line 60
						CompareEQ ::temp8 aiType ::temp7                         ;@line 60
						JumpF ::temp8 _label15                                   ;@line 60
						Assign removeFxType 0                                    ;@line 61
					_label17:
						PropGet MAX_FX_TYPES self ::temp7                        ;@line 62
						CompareLT ::temp9 removeFxType ::temp7                   ;@line 62
						JumpF ::temp9 _label16                                   ;@line 62
						CallMethod RemoveCumFx self ::NoneVar akTarget removeFxType  ;@line 63
						IAdd ::temp7 removeFxType 1                              ;@line 64
						Assign removeFxType ::temp7                              ;@line 64
						Jump _label17                                            ;@line 64
					_label16:
						Return None                                              ;@line 66
						Jump _label15                                            ;@line 66
					_label15:
						PropGet APPLIED_TEXTURE_LIST self ::temp10               ;@line 68
						Cast ::temp11 akTarget                                   ;@line 68
						CallStatic storageutil IntListRemove ::temp7 ::temp11 ::temp10 aiType False  ;@line 68
						Assign removed ::temp7                                   ;@line 68
						CompareEQ ::temp9 removed 0                              ;@line 69
						JumpF ::temp9 _label18                                   ;@line 69
						Return None                                              ;@line 70
						Jump _label18                                            ;@line 70
					_label18:
						CallMethod GetLeveledActorBase akTarget ::temp12         ;@line 72
						CallMethod GetSex ::temp12 ::temp7                       ;@line 72
						CompareEQ ::temp8 ::temp7 1                              ;@line 72
						Assign isFemale ::temp8                                  ;@line 72
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp10        ;@line 73
						Cast ::temp13 aiType                                     ;@line 73
						StrCat ::temp13 ::temp10 ::temp13                        ;@line 73
						Cast ::temp11 akTarget                                   ;@line 73
						CallStatic storageutil GetStringValue ::temp10 ::temp11 ::temp13 ""  ;@line 73
						Assign LastEffect ::temp10                               ;@line 73
						CallMethod RemovePartOverlay self ::NoneVar akTarget isFemale LastEffect  ;@line 74
						PropGet FX_VAGINAL self ::temp7                          ;@line 75
						CompareEQ ::temp9 aiType ::temp7                         ;@line 75
						JumpF ::temp9 _label19                                   ;@line 75
						CallMethod RemoveSpell akTarget ::temp8 ::CumVaginalSpell_var  ;@line 76
						Jump _label20                                            ;@line 76
					_label19:
						PropGet FX_ORAL self ::temp7                             ;@line 77
						CompareEQ ::temp8 aiType ::temp7                         ;@line 77
						JumpF ::temp8 _label21                                   ;@line 77
						CallMethod RemoveSpell akTarget ::temp14 ::CumOralSpell_var  ;@line 78
						Jump _label20                                            ;@line 78
					_label21:
						PropGet FX_ANAL self ::temp7                             ;@line 79
						CompareEQ ::temp14 aiType ::temp7                        ;@line 79
						JumpF ::temp14 _label20                                  ;@line 79
						CallMethod RemoveSpell akTarget ::temp8 ::CumAnalSpell_var  ;@line 80
						Jump _label20                                            ;@line 80
					_label20:
						PropGet ACTIVE_SET_PREFIX self ::temp13                  ;@line 82
						Cast ::temp10 aiType                                     ;@line 82
						StrCat ::temp10 ::temp13 ::temp10                        ;@line 82
						Cast ::temp11 akTarget                                   ;@line 82
						CallStatic storageutil UnsetStringValue ::temp8 ::temp11 ::temp10  ;@line 82
						PropGet ACTIVE_LAYER_PREFIX self ::temp13                ;@line 83
						Cast ::temp10 aiType                                     ;@line 83
						StrCat ::temp10 ::temp13 ::temp10                        ;@line 83
						Cast ::temp11 akTarget                                   ;@line 83
						CallStatic storageutil UnsetIntValue ::temp14 ::temp11 ::temp10  ;@line 83
						PropGet LAST_APPLIED_TIME_PREFIX self ::temp13           ;@line 84
						Cast ::temp10 aiType                                     ;@line 84
						StrCat ::temp10 ::temp13 ::temp10                        ;@line 84
						Cast ::temp11 akTarget                                   ;@line 84
						CallStatic storageutil UnsetFloatValue ::temp9 ::temp11 ::temp10  ;@line 84
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp13        ;@line 85
						Cast ::temp10 aiType                                     ;@line 85
						StrCat ::temp10 ::temp13 ::temp10                        ;@line 85
						Cast ::temp11 akTarget                                   ;@line 85
						CallStatic storageutil UnsetStringValue ::temp8 ::temp11 ::temp10  ;@line 85
						PropGet APPLIED_TEXTURE_LIST self ::temp13               ;@line 86
						Cast ::temp11 akTarget                                   ;@line 86
						CallStatic storageutil IntListCount ::temp7 ::temp11 ::temp13  ;@line 86
						CompareEQ ::temp14 ::temp7 0                             ;@line 86
						JumpF ::temp14 _label22                                  ;@line 86
						CallMethod RemoveSpell akTarget ::temp9 ::abCumFX_var    ;@line 87
						Jump _label22                                            ;@line 87
					_label22:
						CallStatic modevent Create ::temp7 "SexLabClearCum"      ;@line 89
						Assign handle ::temp7                                    ;@line 89
						Cast ::temp11 akTarget                                   ;@line 90
						CallStatic modevent PushForm ::NoneVar handle ::temp11   ;@line 90
						CallStatic modevent PushInt ::NoneVar handle aiType      ;@line 91
						CallStatic modevent Send ::temp8 handle                  ;@line 92
					.endCode
				.endFunction
				.function GenderCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp248 Int[]
						.local ::temp249 Int
						.local ::temp250 Bool
						.local Genders Int[]
						.local i Int
						.local ::temp251 Actor
						.local ::temp252 Int
						.local g Int
					.endLocalTable
					.code
						ArrayCreate ::temp248 4                                  ;@line 775
						Assign Genders ::temp248                                 ;@line 775
						ArrayLength ::temp249 Positions                          ;@line 776
						Assign i ::temp249                                       ;@line 776
					_label24:
						CompareGT ::temp250 i 0                                  ;@line 777
						JumpF ::temp250 _label23                                 ;@line 777
						ISubtract ::temp249 i 1                                  ;@line 778
						Assign i ::temp249                                       ;@line 778
						ArrayGetElement ::temp251 Positions i                    ;@line 779
						CallMethod GetGender self ::temp249 ::temp251            ;@line 779
						Assign g ::temp249                                       ;@line 779
						ArrayGetElement ::temp252 Genders g                      ;@line 780
						IAdd ::temp252 ::temp252 1                               ;@line 780
						Assign ::temp249 ::temp252                               ;@line 780
						ArraySetElement Genders g ::temp249                      ;@line 780
						Jump _label24                                            ;@line 780
					_label23:
						Return Genders                                           ;@line 782
					.endCode
				.endFunction
				.function MakeGenderTag
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp264 String
					.endLocalTable
					.code
						CallStatic sexlabutil MakeGenderTag ::temp264 Positions  ;@line 803
						Return ::temp264                                         ;@line 803
					.endCode
				.endFunction
				.function MakeNoStrip
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary WriteStrip ::NoneVar ItemRef True  ;@line 122
					.endCode
				.endFunction
				.function GotoState
					.userFlags 0	; Flags: 0x00000000
					.docString "Function that switches this object to the specified state"
					.return None
					.paramTable
						.param newState String
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod onEndState self ::NoneVar                     ;@line ??
						Assign ::State newState                                  ;@line ??
						CallMethod onBeginState self ::NoneVar                   ;@line ??
					.endCode
				.endFunction
				.function CanAnimate
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp268 Bool
						.local ::temp269 actorbase
						.local ::temp270 race
						.local ::temp271 String
						.local ::temp272 String
						.local ::temp273 Int
						.local ::temp274 Bool
						.local ::temp275 Float
						.local ::temp276 Bool
						.local ActorRace race
						.local RaceName String
					.endLocalTable
					.code
						Not ::temp268 ActorRef                                   ;@line 820
						JumpF ::temp268 _label25                                 ;@line 820
						Return False                                             ;@line 821
						Jump _label25                                            ;@line 821
					_label25:
						CallMethod GetLeveledActorBase ActorRef ::temp269        ;@line 823
						CallMethod GetRace ::temp269 ::temp270                   ;@line 823
						Assign ActorRace ::temp270                               ;@line 823
						CallMethod GetName ActorRace ::temp271                   ;@line 824
						CallStatic miscutil GetRaceEditorID ::temp272 ActorRace  ;@line 824
						StrCat ::temp271 ::temp271 ::temp272                     ;@line 824
						Assign RaceName ::temp271                                ;@line 824
						CallMethod IsRaceFlagSet ActorRace ::temp268 4           ;@line 825
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label26                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Moli" 0   ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label26:
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label27                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Child" 0  ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label27:
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label28                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Little" 0  ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label28:
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label29                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "117" 0    ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label29:
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label30                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Enfant" 0  ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label30:
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpT ::temp268 _label31                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Teen" 0   ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label31:
						Cast ::temp276 ::temp268                                 ;@line 825
						JumpT ::temp276 _label32                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Elin" 0   ;@line 825
						CompareEQ ::temp274 ::temp273 -1                         ;@line 825
						Not ::temp274 ::temp274                                  ;@line 825
						Cast ::temp274 ::temp274                                 ;@line 825
						JumpF ::temp274 _label33                                 ;@line 825
						CallMethod GetScale ActorRef ::temp275                   ;@line 825
						CompareLT ::temp276 ::temp275 0.920000                   ;@line 825
						Cast ::temp274 ::temp276                                 ;@line 825
					_label33:
						Cast ::temp276 ::temp274                                 ;@line 825
					_label32:
						Cast ::temp274 ::temp276                                 ;@line 825
						JumpT ::temp274 _label34                                 ;@line 825
						CallStatic stringutil Find ::temp273 RaceName "Monli" 0  ;@line 825
						CompareEQ ::temp268 ::temp273 -1                         ;@line 825
						Not ::temp268 ::temp268                                  ;@line 825
						Cast ::temp268 ::temp268                                 ;@line 825
						JumpF ::temp268 _label35                                 ;@line 825
						CallMethod GetScale ActorRef ::temp275                   ;@line 825
						CompareLT ::temp274 ::temp275 0.920000                   ;@line 825
						Cast ::temp268 ::temp274                                 ;@line 825
					_label35:
						Cast ::temp274 ::temp268                                 ;@line 825
					_label34:
						Not ::temp276 ::temp274                                  ;@line 825
						Return ::temp276                                         ;@line 825
					.endCode
				.endFunction
				.function GetState
					.userFlags 0	; Flags: 0x00000000
					.docString "Function that returns the current state"
					.return String
					.paramTable
					.endParamTable
					.localTable
					.endLocalTable
					.code
						Return ::State                                           ;@line ??
					.endCode
				.endFunction
				.function ClearCum
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp285 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						PropGet FX_ALL self ::temp285                            ;@line 862
						CallMethod RemoveCumFx self ::NoneVar ActorRef ::temp285  ;@line 862
					.endCode
				.endFunction
				.function ResetStripOverrides
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary EraseStripAll ::NoneVar       ;@line 131
					.endCode
				.endFunction
				.function CountCum
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param ActorRef Actor
						.param Vaginal Bool
						.param Oral Bool
						.param Anal Bool
					.endParamTable
					.localTable
						.local retVal Int
						.local ::temp284 Int
					.endLocalTable
					.code
						Assign retVal 0                                          ;@line 848
						JumpF Vaginal _label36                                   ;@line 849
						PropGet FX_VAGINAL self ::temp284                        ;@line 850
						CallMethod CountCumFx self ::temp284 ActorRef ::temp284  ;@line 850
						IAdd ::temp284 retVal ::temp284                          ;@line 850
						Assign retVal ::temp284                                  ;@line 850
						Jump _label36                                            ;@line 850
					_label36:
						JumpF Oral _label37                                      ;@line 852
						PropGet FX_ORAL self ::temp284                           ;@line 853
						CallMethod CountCumFx self ::temp284 ActorRef ::temp284  ;@line 853
						IAdd ::temp284 retVal ::temp284                          ;@line 853
						Assign retVal ::temp284                                  ;@line 853
						Jump _label37                                            ;@line 853
					_label37:
						JumpF Anal _label38                                      ;@line 855
						PropGet FX_ANAL self ::temp284                           ;@line 856
						CallMethod CountCumFx self ::temp284 ActorRef ::temp284  ;@line 856
						IAdd ::temp284 retVal ::temp284                          ;@line 856
						Assign retVal ::temp284                                  ;@line 856
						Jump _label38                                            ;@line 856
					_label38:
						Return retVal                                            ;@line 858
					.endCode
				.endFunction
				.function TreatAsMale
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod TreatAsGender self ::NoneVar ActorRef False   ;@line 723
					.endCode
				.endFunction
				.function GetEmptySlot
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akTarget Actor
						.param isFemale Bool
						.param asArea String
						.param asLastEffect String
					.endParamTable
					.localTable
						.local ::temp111 Int
						.local ::temp112 Bool
						.local i Int
						.local ::temp113 String
						.local ::temp114 String
						.local ::temp115 objectreference
						.local ::temp116 form
						.local ::NoneVar None
						.local ::temp117 Bool
						.local ::temp118 Bool
						.local ::temp119 Bool
						.local TexPath String
						.local ::temp120 actorbase
					.endLocalTable
					.code
						CallMethod GetNumSlots self ::temp111 asArea             ;@line 413
						Assign i ::temp111                                       ;@line 413
					_label44:
						CompareGT ::temp112 i 0                                  ;@line 414
						JumpF ::temp112 _label39                                 ;@line 414
						ISubtract ::temp111 i 1                                  ;@line 415
						Assign i ::temp111                                       ;@line 415
						StrCat ::temp113 asArea " [ovl"                          ;@line 416
						Cast ::temp114 i                                         ;@line 416
						StrCat ::temp114 ::temp113 ::temp114                     ;@line 416
						StrCat ::temp113 ::temp114 "]"                           ;@line 416
						Cast ::temp115 akTarget                                  ;@line 416
						CallStatic nioverride GetNodeOverrideString ::temp114 ::temp115 isFemale ::temp113 9 0  ;@line 416
						Assign TexPath ::temp114                                 ;@line 416
						CallMethod GetBaseObject akTarget ::temp116              ;@line 417
						CallMethod GetName ::temp116 ::temp113                   ;@line 417
						StrCat ::temp114 "GetEmptySlot(): akTarget: " ::temp113  ;@line 417
						StrCat ::temp113 ::temp114 ". Slot: "                    ;@line 417
						Cast ::temp114 i                                         ;@line 417
						StrCat ::temp114 ::temp113 ::temp114                     ;@line 417
						StrCat ::temp113 ::temp114 ". TexPath: "                 ;@line 417
						StrCat ::temp114 ::temp113 TexPath                       ;@line 417
						CallMethod Log self ::NoneVar ::temp114 "NOTICE"         ;@line 417
						CompareEQ ::temp117 TexPath ""                           ;@line 418
						Cast ::temp119 ::temp117                                 ;@line 418
						JumpT ::temp119 _label40                                 ;@line 418
						CompareEQ ::temp118 asLastEffect ""                      ;@line 418
						Not ::temp118 ::temp118                                  ;@line 418
						Cast ::temp118 ::temp118                                 ;@line 418
						JumpF ::temp118 _label41                                 ;@line 418
						CompareEQ ::temp119 TexPath asLastEffect                 ;@line 418
						Cast ::temp118 ::temp119                                 ;@line 418
					_label41:
						Cast ::temp119 ::temp118                                 ;@line 418
					_label40:
						Cast ::temp118 ::temp119                                 ;@line 418
						JumpT ::temp118 _label42                                 ;@line 418
						CompareEQ ::temp117 TexPath "actors\\character\\overlays\\default.dds"  ;@line 418
						Cast ::temp118 ::temp117                                 ;@line 418
					_label42:
						JumpF ::temp118 _label43                                 ;@line 418
						Cast ::temp113 i                                         ;@line 419
						StrCat ::temp114 "GetEmptySlot(): Slot " ::temp113       ;@line 419
						StrCat ::temp113 ::temp114 " chosen for area: "          ;@line 419
						StrCat ::temp114 ::temp113 asArea                        ;@line 419
						StrCat ::temp113 ::temp114 " on "                        ;@line 419
						CallMethod GetLeveledActorBase akTarget ::temp120        ;@line 419
						CallMethod GetName ::temp120 ::temp114                   ;@line 419
						StrCat ::temp113 ::temp113 ::temp114                     ;@line 419
						CallMethod Log self ::NoneVar ::temp113 "NOTICE"         ;@line 419
						Return i                                                 ;@line 420
						Jump _label43                                            ;@line 420
					_label43:
						Jump _label44                                            ;@line 420
					_label39:
						StrCat ::temp114 "GetEmptySlot(): Error: Could not find a free slot in area: " asArea  ;@line 423
						CallMethod Log self ::NoneVar ::temp114 "NOTICE"         ;@line 423
						Return -1                                                ;@line 424
					.endCode
				.endFunction
				.function CountCumFx
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akActor Actor
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp15 Int
						.local ::temp16 Bool
						.local ::temp17 Bool
						.local checkFxType Int
						.local fxCount Int
						.local ::temp18 String
						.local ::temp19 String
						.local ::temp20 form
					.endLocalTable
					.code
						PropGet FX_ALL self ::temp15                             ;@line 97
						CompareEQ ::temp16 aiType ::temp15                       ;@line 97
						JumpF ::temp16 _label45                                  ;@line 97
						Assign checkFxType 0                                     ;@line 98
						Assign fxCount 0                                         ;@line 99
					_label47:
						PropGet MAX_FX_TYPES self ::temp15                       ;@line 100
						CompareLT ::temp17 checkFxType ::temp15                  ;@line 100
						JumpF ::temp17 _label46                                  ;@line 100
						CallMethod CountCumFx self ::temp15 akActor checkFxType  ;@line 101
						IAdd ::temp15 fxCount ::temp15                           ;@line 101
						Assign fxCount ::temp15                                  ;@line 101
						IAdd ::temp15 checkFxType 1                              ;@line 102
						Assign checkFxType ::temp15                              ;@line 102
						Jump _label47                                            ;@line 102
					_label46:
						Return fxCount                                           ;@line 104
						Jump _label48                                            ;@line 104
					_label45:
						PropGet ACTIVE_LAYER_PREFIX self ::temp18                ;@line 106
						Cast ::temp19 aiType                                     ;@line 106
						StrCat ::temp19 ::temp18 ::temp19                        ;@line 106
						Cast ::temp20 akActor                                    ;@line 106
						CallStatic storageutil GetIntValue ::temp15 ::temp20 ::temp19 0  ;@line 106
						Return ::temp15                                          ;@line 106
					_label48:
					.endCode
				.endFunction
				.function ClearStripOverride
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary EraseStrip ::NoneVar ItemRef  ;@line 128
					.endCode
				.endFunction
				.function IsForbidden
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp50 Bool
					.endLocalTable
					.code
						CallMethod IsInFaction ActorRef ::temp50 ::ForbiddenFaction_var  ;@line 203
						Return ::temp50                                          ;@line 203
					.endCode
				.endFunction
				.function StripSlot
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return form
					.paramTable
						.param ActorRef Actor
						.param SlotMask Int
					.endParamTable
					.localTable
						.local ::temp37 form
						.local ::temp38 Bool
						.local ItemRef form
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod GetWornForm ActorRef ::temp37 SlotMask        ;@line 155
						Assign ItemRef ::temp37                                  ;@line 155
						Cast ::temp38 ItemRef                                    ;@line 156
						JumpF ::temp38 _label49                                  ;@line 156
						CallMethod IsStrippable self ::temp38 ItemRef            ;@line 156
						Cast ::temp38 ::temp38                                   ;@line 156
					_label49:
						JumpF ::temp38 _label50                                  ;@line 156
						CallMethod UnequipItemEX ActorRef ::NoneVar ItemRef 0 False  ;@line 157
						Return ItemRef                                           ;@line 158
						Jump _label50                                            ;@line 158
					_label50:
						Cast ::temp37 None                                       ;@line 160
						Return ::temp37                                          ;@line 160
					.endCode
				.endFunction
				.function IsAlwaysStrip
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::temp23 Int
						.local ::temp24 Bool
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp23 ItemRef   ;@line 138
						CompareEQ ::temp24 ::temp23 1                            ;@line 138
						Return ::temp24                                          ;@line 138
					.endCode
				.endFunction
				.function AddCum
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
						.param Vaginal Bool
						.param Oral Bool
						.param Anal Bool
					.endParamTable
					.localTable
						.local ::temp281 Bool
						.local ::temp282 Bool
						.local ::temp283 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						Not ::temp281 Vaginal                                    ;@line 833
						Cast ::temp281 ::temp281                                 ;@line 833
						JumpF ::temp281 _label51                                 ;@line 833
						Not ::temp282 Oral                                       ;@line 833
						Cast ::temp281 ::temp282                                 ;@line 833
					_label51:
						Cast ::temp281 ::temp281                                 ;@line 833
						JumpF ::temp281 _label52                                 ;@line 833
						Not ::temp282 Anal                                       ;@line 833
						Cast ::temp281 ::temp282                                 ;@line 833
					_label52:
						JumpF ::temp281 _label53                                 ;@line 833
						Return None                                              ;@line 834
						Jump _label53                                            ;@line 834
					_label53:
						JumpF Vaginal _label54                                   ;@line 836
						PropGet FX_VAGINAL self ::temp283                        ;@line 837
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp283    ;@line 837
						Jump _label54                                            ;@line 837
					_label54:
						JumpF Oral _label55                                      ;@line 839
						PropGet FX_ORAL self ::temp283                           ;@line 840
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp283    ;@line 840
						Jump _label55                                            ;@line 840
					_label55:
						JumpF Anal _label56                                      ;@line 842
						PropGet FX_ANAL self ::temp283                           ;@line 843
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp283    ;@line 843
						Jump _label56                                            ;@line 843
					_label56:
					.endCode
				.endFunction
				.function ClearForcedGender
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod ClearForcedSex self ::NoneVar ActorRef        ;@line 719
					.endCode
				.endFunction
				.function AllowActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod RemoveFromFaction ActorRef ::NoneVar ::ForbiddenFaction_var  ;@line 200
					.endCode
				.endFunction
				.function IsCreature
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp216 Int
						.local ::temp217 Bool
					.endLocalTable
					.code
						CallStatic sexlabregistry GetRaceID ::temp216 ActorRef   ;@line 688
						CompareGT ::temp217 ::temp216 0                          ;@line 688
						Return ::temp217                                         ;@line 688
					.endCode
				.endFunction
				.function GetNumSlots
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Area String
					.endParamTable
					.localTable
						.local ::temp123 Bool
						.local ::temp125 Bool
						.local ::temp124 Int
						.local ::temp126 Int
						.local ::temp127 Int
						.local ::temp128 Int
					.endLocalTable
					.code
						CompareEQ ::temp123 Area "Body"                          ;@line 437
						JumpF ::temp123 _label57                                 ;@line 437
						CallStatic nioverride GetNumBodyOverlays ::temp124       ;@line 438
						Return ::temp124                                         ;@line 438
						Jump _label58                                            ;@line 438
					_label57:
						CompareEQ ::temp125 Area "Face"                          ;@line 439
						JumpF ::temp125 _label59                                 ;@line 439
						CallStatic nioverride GetNumFaceOverlays ::temp126       ;@line 440
						Return ::temp126                                         ;@line 440
						Jump _label58                                            ;@line 440
					_label59:
						CompareEQ ::temp125 Area "Hands"                         ;@line 441
						JumpF ::temp125 _label60                                 ;@line 441
						CallStatic nioverride GetNumHandOverlays ::temp127       ;@line 442
						Return ::temp127                                         ;@line 442
						Jump _label58                                            ;@line 442
					_label60:
						CallStatic nioverride GetNumFeetOverlays ::temp128       ;@line 444
						Return ::temp128                                         ;@line 444
					_label58:
					.endCode
				.endFunction
				.function GetTransAll
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp231 Int
						.local ::temp232 Int[]
						.local ::temp233 Bool
						.local i Int
						.local Trans Int[]
						.local ::temp234 Actor
						.local ::temp235 Int
					.endLocalTable
					.code
						ArrayLength ::temp231 Positions                          ;@line 742
						Assign i ::temp231                                       ;@line 742
						CallStatic utility CreateIntArray ::temp232 i 0          ;@line 743
						Assign Trans ::temp232                                   ;@line 743
					_label62:
						CompareGT ::temp233 i 0                                  ;@line 744
						JumpF ::temp233 _label61                                 ;@line 744
						ISubtract ::temp231 i 1                                  ;@line 745
						Assign i ::temp231                                       ;@line 745
						ArrayGetElement ::temp234 Positions i                    ;@line 746
						CallMethod GetTrans self ::temp235 ::temp234             ;@line 746
						Assign ::temp231 ::temp235                               ;@line 746
						ArraySetElement Trans i ::temp231                        ;@line 746
						Jump _label62                                            ;@line 746
					_label61:
						Return Trans                                             ;@line 748
					.endCode
				.endFunction
				.function ClearForcedSex
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akActor Actor
					.endParamTable
					.localTable
						.local ::temp61 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp61 akActor True   ;@line 241
						CallMethod TreatAsSex self ::NoneVar akActor ::temp61    ;@line 241
					.endCode
				.endFunction
				.function ApplyCum
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
						.param CumID Int
					.endParamTable
					.localTable
						.local ::temp277 Bool
						.local ::temp278 Bool
						.local ::temp279 Bool
						.local ::temp280 Bool
						.local ::NoneVar None
					.endLocalTable
					.code
						CompareEQ ::temp277 CumID 1                              ;@line 829
						Cast ::temp277 ::temp277                                 ;@line 829
						JumpT ::temp277 _label63                                 ;@line 829
						CompareEQ ::temp278 CumID 4                              ;@line 829
						Cast ::temp277 ::temp278                                 ;@line 829
					_label63:
						Cast ::temp277 ::temp277                                 ;@line 829
						JumpT ::temp277 _label64                                 ;@line 829
						CompareEQ ::temp278 CumID 5                              ;@line 829
						Cast ::temp277 ::temp278                                 ;@line 829
					_label64:
						Cast ::temp277 ::temp277                                 ;@line 829
						JumpT ::temp277 _label65                                 ;@line 829
						CompareEQ ::temp278 CumID 7                              ;@line 829
						Cast ::temp277 ::temp278                                 ;@line 829
					_label65:
						CompareEQ ::temp278 CumID 2                              ;@line 829
						Cast ::temp278 ::temp278                                 ;@line 829
						JumpT ::temp278 _label66                                 ;@line 829
						CompareEQ ::temp279 CumID 4                              ;@line 829
						Cast ::temp278 ::temp279                                 ;@line 829
					_label66:
						Cast ::temp278 ::temp278                                 ;@line 829
						JumpT ::temp278 _label67                                 ;@line 829
						CompareEQ ::temp279 CumID 6                              ;@line 829
						Cast ::temp278 ::temp279                                 ;@line 829
					_label67:
						Cast ::temp278 ::temp278                                 ;@line 829
						JumpT ::temp278 _label68                                 ;@line 829
						CompareEQ ::temp279 CumID 7                              ;@line 829
						Cast ::temp278 ::temp279                                 ;@line 829
					_label68:
						CompareEQ ::temp279 CumID 3                              ;@line 829
						Cast ::temp279 ::temp279                                 ;@line 829
						JumpT ::temp279 _label69                                 ;@line 829
						CompareEQ ::temp280 CumID 5                              ;@line 829
						Cast ::temp279 ::temp280                                 ;@line 829
					_label69:
						Cast ::temp279 ::temp279                                 ;@line 829
						JumpT ::temp279 _label70                                 ;@line 829
						CompareEQ ::temp280 CumID 6                              ;@line 829
						Cast ::temp279 ::temp280                                 ;@line 829
					_label70:
						Cast ::temp279 ::temp279                                 ;@line 829
						JumpT ::temp279 _label71                                 ;@line 829
						CompareEQ ::temp280 CumID 7                              ;@line 829
						Cast ::temp279 ::temp280                                 ;@line 829
					_label71:
						CallMethod AddCum self ::NoneVar ActorRef ::temp277 ::temp278 ::temp279  ;@line 829
					.endCode
				.endFunction
				.function GetGender
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp218 actorbase
						.local ::temp219 race
						.local ::temp220 Bool
						.local BaseRef actorbase
						.local ::temp221 sslsystemconfig
						.local ::temp222 Bool
						.local ::temp223 Bool
						.local ::temp224 Int
						.local ::temp225 Int
						.local ::temp226 Int
						.local ::temp227 Int
					.endLocalTable
					.code
						JumpF ActorRef _label72                                  ;@line 692
						CallMethod GetLeveledActorBase ActorRef ::temp218        ;@line 693
						Assign BaseRef ::temp218                                 ;@line 693
						CallMethod GetRace BaseRef ::temp219                     ;@line 694
						CallStatic sslcreatureanimationslots HasRaceType ::temp220 ::temp219  ;@line 694
						JumpF ::temp220 _label73                                 ;@line 694
						PropGet Config self ::temp221                            ;@line 695
						PropGet UseCreatureGender ::temp221 ::temp222            ;@line 695
						Not ::temp222 ::temp222                                  ;@line 695
						JumpF ::temp222 _label74                                 ;@line 695
						Return 2                                                 ;@line 696
						Jump _label75                                            ;@line 696
					_label74:
						CallMethod IsInFaction ActorRef ::temp223 ::GenderFaction_var  ;@line 697
						JumpF ::temp223 _label76                                 ;@line 697
						CallMethod GetFactionRank ActorRef ::temp224 ::GenderFaction_var  ;@line 698
						IAdd ::temp224 2 ::temp224                               ;@line 698
						Return ::temp224                                         ;@line 698
						Jump _label75                                            ;@line 698
					_label76:
						CallMethod GetSex BaseRef ::temp225                      ;@line 700
						IAdd ::temp225 2 ::temp225                               ;@line 700
						Return ::temp225                                         ;@line 700
					_label75:
						Jump _label77                                            ;@line 700
					_label73:
						CallMethod IsInFaction ActorRef ::temp223 ::GenderFaction_var  ;@line 702
						JumpF ::temp223 _label78                                 ;@line 702
						CallMethod GetFactionRank ActorRef ::temp226 ::GenderFaction_var  ;@line 703
						Return ::temp226                                         ;@line 703
						Jump _label77                                            ;@line 703
					_label78:
						CallMethod GetSex BaseRef ::temp227                      ;@line 705
						Return ::temp227                                         ;@line 705
					_label77:
						Jump _label72                                            ;@line 705
					_label72:
						Return 0                                                 ;@line 708
					.endCode
				.endFunction
				.function TreatAsGender
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
						.param AsFemale Bool
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						JumpF AsFemale _label79                                  ;@line 712
						CallMethod TreatAsSex self ::NoneVar ActorRef 1          ;@line 713
						Jump _label80                                            ;@line 713
					_label79:
						CallMethod TreatAsSex self ::NoneVar ActorRef 0          ;@line 715
					_label80:
					.endCode
				.endFunction
				.function GetTrans
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::temp228 Int
						.local ::temp229 Bool
						.local ::temp230 Bool
						.local configSex Int
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp228 ActorRef True  ;@line 730
						Assign configSex ::temp228                               ;@line 730
						CompareEQ ::temp229 configSex 2                          ;@line 731
						Not ::temp229 ::temp229                                  ;@line 731
						Cast ::temp229 ::temp229                                 ;@line 731
						JumpF ::temp229 _label81                                 ;@line 731
						CallStatic sexlabregistry GetSex ::temp228 ActorRef False  ;@line 731
						CompareEQ ::temp230 configSex ::temp228                  ;@line 731
						Cast ::temp229 ::temp230                                 ;@line 731
					_label81:
						JumpF ::temp229 _label82                                 ;@line 731
						Return -1                                                ;@line 733
						Jump _label83                                            ;@line 733
					_label82:
						CompareGTE ::temp230 configSex 2                         ;@line 734
						JumpF ::temp230 _label83                                 ;@line 734
						ISubtract ::temp228 configSex 1                          ;@line 736
						Return ::temp228                                         ;@line 736
						Jump _label83                                            ;@line 736
					_label83:
						Return configSex                                         ;@line 738
					.endCode
				.endFunction
				.function AddCumFx
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akActor Actor
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp1 form
						.local ::temp2 Bool
						.local ::temp4 Int
						.local ::temp3 Bool
						.local addFxType Int
						.local ::NoneVar None
						.local ::temp5 Bool
						.local ::temp6 Bool
						.local handle Int
					.endLocalTable
					.code
						Cast ::temp1 ::abCumFX_var                               ;@line 33
						CallMethod HasSpell akActor ::temp2 ::temp1              ;@line 33
						Not ::temp2 ::temp2                                      ;@line 33
						JumpF ::temp2 _label84                                   ;@line 33
						CallMethod AddSpell akActor ::temp3 ::abCumFX_var True   ;@line 34
						Jump _label84                                            ;@line 34
					_label84:
						PropGet FX_ALL self ::temp4                              ;@line 36
						CompareEQ ::temp3 aiType ::temp4                         ;@line 36
						JumpF ::temp3 _label85                                   ;@line 36
						Assign addFxType 0                                       ;@line 37
					_label87:
						PropGet MAX_FX_TYPES self ::temp4                        ;@line 38
						CompareLT ::temp2 addFxType ::temp4                      ;@line 38
						JumpF ::temp2 _label86                                   ;@line 38
						CallMethod AddCumFx self ::NoneVar akActor addFxType     ;@line 39
						IAdd ::temp4 addFxType 1                                 ;@line 40
						Assign addFxType ::temp4                                 ;@line 40
						Jump _label87                                            ;@line 40
					_label86:
						Return None                                              ;@line 42
						Jump _label88                                            ;@line 42
					_label85:
						PropGet FX_VAGINAL self ::temp4                          ;@line 44
						CompareEQ ::temp2 aiType ::temp4                         ;@line 44
						JumpF ::temp2 _label89                                   ;@line 44
						CallMethod AddSpell akActor ::temp5 ::CumVaginalSpell_var True  ;@line 45
						Jump _label90                                            ;@line 45
					_label89:
						PropGet FX_ORAL self ::temp4                             ;@line 46
						CompareEQ ::temp5 aiType ::temp4                         ;@line 46
						JumpF ::temp5 _label91                                   ;@line 46
						CallMethod AddSpell akActor ::temp6 ::CumOralSpell_var True  ;@line 47
						Jump _label90                                            ;@line 47
					_label91:
						PropGet FX_ANAL self ::temp4                             ;@line 48
						CompareEQ ::temp6 aiType ::temp4                         ;@line 48
						JumpF ::temp6 _label90                                   ;@line 48
						CallMethod AddSpell akActor ::temp5 ::CumAnalSpell_var True  ;@line 49
						Jump _label90                                            ;@line 49
					_label90:
						CallMethod BeginOverlay self ::NoneVar akActor aiType    ;@line 51
					_label88:
						CallStatic modevent Create ::temp4 "SexLabApplyCum"      ;@line 53
						Assign handle ::temp4                                    ;@line 53
						Cast ::temp1 akActor                                     ;@line 54
						CallStatic modevent PushForm ::NoneVar handle ::temp1    ;@line 54
						CallStatic modevent PushInt ::NoneVar handle aiType      ;@line 55
						CallStatic modevent Send ::temp5 handle                  ;@line 56
					.endCode
				.endFunction
				.function BeginOverlay
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akTarget Actor
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp87 actorbase
						.local ::temp88 Int
						.local ::temp89 Bool
						.local ::temp90 String
						.local ::temp91 String
						.local ::temp92 form
						.local ::temp94 Float
						.local ::temp95 String[]
						.local isFemale Bool
						.local set String
						.local ::temp93 Bool
						.local ::NoneVar None
						.local currentLayer Int
						.local maxLayer Int
						.local layer Int
						.local LastEffect String
						.local texturePath String
						.local normalTexture String
						.local parts String[]
						.local i Int
						.local ::temp96 Bool
						.local ::temp97 Bool
						.local part String
						.local slot Int
					.endLocalTable
					.code
						CallMethod GetLeveledActorBase akTarget ::temp87         ;@line 320
						CallMethod GetSex ::temp87 ::temp88                      ;@line 320
						Cast ::temp89 ::temp88                                   ;@line 320
						Assign isFemale ::temp89                                 ;@line 320
						PropGet ACTIVE_SET_PREFIX self ::temp90                  ;@line 321
						Cast ::temp91 aiType                                     ;@line 321
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 321
						Cast ::temp92 akTarget                                   ;@line 321
						CallStatic storageutil GetStringValue ::temp90 ::temp92 ::temp91 ""  ;@line 321
						Assign set ::temp90                                      ;@line 321
						CompareEQ ::temp89 set ""                                ;@line 322
						JumpF ::temp89 _label92                                  ;@line 322
						CallStatic sslActorLibrary PickRandomFxSet ::temp91 akTarget aiType  ;@line 323
						Assign set ::temp91                                      ;@line 323
						CompareEQ ::temp93 set ""                                ;@line 324
						JumpF ::temp93 _label93                                  ;@line 324
						Cast ::temp90 akTarget                                   ;@line 325
						StrCat ::temp91 ::temp90 ": No cum fx set found for type "  ;@line 325
						Cast ::temp90 aiType                                     ;@line 325
						StrCat ::temp90 ::temp91 ::temp90                        ;@line 325
						CallMethod Log self ::NoneVar ::temp90 "NOTICE"          ;@line 325
						Return None                                              ;@line 326
						Jump _label93                                            ;@line 326
					_label93:
						PropGet ACTIVE_SET_PREFIX self ::temp91                  ;@line 328
						Cast ::temp90 aiType                                     ;@line 328
						StrCat ::temp90 ::temp91 ::temp90                        ;@line 328
						Cast ::temp92 akTarget                                   ;@line 328
						CallStatic storageutil SetStringValue ::temp91 ::temp92 ::temp90 set  ;@line 328
						Cast ::temp90 akTarget                                   ;@line 329
						StrCat ::temp91 ::temp90 ": Selecting cum fx set; Random "  ;@line 329
						Cast ::temp90 aiType                                     ;@line 329
						StrCat ::temp90 ::temp91 ::temp90                        ;@line 329
						StrCat ::temp91 ::temp90 " set "                         ;@line 329
						StrCat ::temp90 ::temp91 set                             ;@line 329
						StrCat ::temp91 ::temp90 " selected for "                ;@line 329
						CallMethod GetBaseObject akTarget ::temp92               ;@line 329
						CallMethod GetName ::temp92 ::temp90                     ;@line 329
						StrCat ::temp91 ::temp91 ::temp90                        ;@line 329
						CallMethod Log self ::NoneVar ::temp91 "NOTICE"          ;@line 329
						Jump _label94                                            ;@line 329
					_label92:
						Cast ::temp90 akTarget                                   ;@line 331
						StrCat ::temp91 ::temp90 ": Selecting cum fx set; Using "  ;@line 331
						Cast ::temp90 aiType                                     ;@line 331
						StrCat ::temp90 ::temp91 ::temp90                        ;@line 331
						StrCat ::temp91 ::temp90 " set "                         ;@line 331
						StrCat ::temp90 ::temp91 set                             ;@line 331
						StrCat ::temp91 ::temp90 " for "                         ;@line 331
						CallMethod GetBaseObject akTarget ::temp92               ;@line 331
						CallMethod GetName ::temp92 ::temp90                     ;@line 331
						StrCat ::temp91 ::temp91 ::temp90                        ;@line 331
						CallMethod Log self ::NoneVar ::temp91 "NOTICE"          ;@line 331
					_label94:
						PropGet ACTIVE_LAYER_PREFIX self ::temp90                ;@line 333
						Cast ::temp91 aiType                                     ;@line 333
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 333
						Cast ::temp92 akTarget                                   ;@line 333
						CallStatic storageutil GetIntValue ::temp88 ::temp92 ::temp91 0  ;@line 333
						Assign currentLayer ::temp88                             ;@line 333
						CallStatic sslActorLibrary GetFxSetCount ::temp88 aiType set  ;@line 334
						Assign maxLayer ::temp88                                 ;@line 334
						CompareLT ::temp93 maxLayer 1                            ;@line 335
						Cast ::temp93 ::temp93                                   ;@line 335
						JumpT ::temp93 _label95                                  ;@line 335
						CompareGTE ::temp89 currentLayer maxLayer                ;@line 335
						Cast ::temp93 ::temp89                                   ;@line 335
					_label95:
						JumpF ::temp93 _label96                                  ;@line 335
						Return None                                              ;@line 336
						Jump _label96                                            ;@line 336
					_label96:
						IAdd ::temp88 currentLayer 1                             ;@line 338
						Assign layer ::temp88                                    ;@line 338
						PropGet ACTIVE_LAYER_PREFIX self ::temp90                ;@line 339
						Cast ::temp91 aiType                                     ;@line 339
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 339
						Cast ::temp92 akTarget                                   ;@line 339
						CallStatic storageutil SetIntValue ::temp88 ::temp92 ::temp91 layer  ;@line 339
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp90        ;@line 340
						Cast ::temp91 aiType                                     ;@line 340
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 340
						Cast ::temp92 akTarget                                   ;@line 340
						CallStatic storageutil GetStringValue ::temp90 ::temp92 ::temp91 ""  ;@line 340
						Assign LastEffect ::temp90                               ;@line 340
						StrCat ::temp91 "SexLab/CumFx/" set                      ;@line 341
						StrCat ::temp90 ::temp91 "/"                             ;@line 341
						Cast ::temp91 layer                                      ;@line 341
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 341
						StrCat ::temp90 ::temp91 ".dds"                          ;@line 341
						Assign texturePath ::temp90                              ;@line 341
						CallStatic SLPPlusUBECum ResolveTexturePath texturePath akTarget aiType set layer texturePath
						CallStatic stringutil GetLength ::temp88 texturePath     ;@line 342
						ISubtract ::temp88 ::temp88 4                            ;@line 342
						CallStatic stringutil Substring ::temp91 texturePath 0 ::temp88  ;@line 342
						StrCat ::temp90 ::temp91 "_n.dds"                        ;@line 342
						Assign normalTexture ::temp90                            ;@line 342
						StrCat ::temp91 "Data\\Textures\\" normalTexture         ;@line 343
						CallStatic miscutil FileExists ::temp89 ::temp91         ;@line 343
						Not ::temp93 ::temp89                                    ;@line 343
						JumpF ::temp93 _label97                                  ;@line 343
						Assign normalTexture ""                                  ;@line 344
						Jump _label97                                            ;@line 344
					_label97:
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp90        ;@line 346
						Cast ::temp91 aiType                                     ;@line 346
						StrCat ::temp91 ::temp90 ::temp91                        ;@line 346
						Cast ::temp92 akTarget                                   ;@line 346
						CallStatic storageutil SetStringValue ::temp90 ::temp92 ::temp91 texturePath  ;@line 346
						PropGet LAST_APPLIED_TIME_PREFIX self ::temp91           ;@line 347
						Cast ::temp90 aiType                                     ;@line 347
						StrCat ::temp90 ::temp91 ::temp90                        ;@line 347
						CallStatic sexlabutil GetCurrentGameRealTime ::temp94    ;@line 347
						Cast ::temp92 akTarget                                   ;@line 347
						CallStatic storageutil SetFloatValue ::temp94 ::temp92 ::temp90 ::temp94  ;@line 347
						PropGet APPLIED_TEXTURE_LIST self ::temp91               ;@line 348
						Cast ::temp92 akTarget                                   ;@line 348
						CallStatic storageutil IntListAdd ::temp88 ::temp92 ::temp91 aiType False  ;@line 348
						CallMethod GetAreas self ::temp95                        ;@line 349
						Assign parts ::temp95                                    ;@line 349
						Assign i 0                                               ;@line 350
					_label104:
						ArrayLength ::temp88 parts                               ;@line 351
						CompareLT ::temp89 i ::temp88                            ;@line 351
						JumpF ::temp89 _label98                                  ;@line 351
						ArrayGetElement ::temp90 parts i                         ;@line 352
						Assign part ::temp90                                     ;@line 352
						CompareEQ ::temp93 part "Face"                           ;@line 354
						Not ::temp93 ::temp93                                    ;@line 354
						Cast ::temp97 ::temp93                                   ;@line 354
						JumpT ::temp97 _label99                                  ;@line 354
						CompareEQ ::temp96 part "Face"                           ;@line 354
						Cast ::temp96 ::temp96                                   ;@line 354
						JumpF ::temp96 _label100                                 ;@line 354
						PropGet FX_ORAL self ::temp88                            ;@line 354
						CompareEQ ::temp97 aiType ::temp88                       ;@line 354
						Cast ::temp96 ::temp97                                   ;@line 354
					_label100:
						Cast ::temp97 ::temp96                                   ;@line 354
					_label99:
						JumpF ::temp97 _label101                                 ;@line 354
						CallMethod GetEmptySlot self ::temp88 akTarget isFemale part LastEffect  ;@line 355
						Assign slot ::temp88                                     ;@line 355
						CompareEQ ::temp93 slot -1                               ;@line 356
						Not ::temp93 ::temp93                                    ;@line 356
						JumpF ::temp93 _label102                                 ;@line 356
						Cast ::temp91 slot                                       ;@line 357
						CallMethod ApplyOverlay self ::NoneVar akTarget isFemale part ::temp91 texturePath normalTexture  ;@line 357
						Jump _label103                                           ;@line 357
					_label102:
						Cast ::temp90 akTarget                                   ;@line 359
						StrCat ::temp91 ::temp90 ": Error applying overlay to area: "  ;@line 359
						StrCat ::temp90 ::temp91 part                            ;@line 359
						CallMethod Log self ::NoneVar ::temp90 "NOTICE"          ;@line 359
					_label103:
						Jump _label101                                           ;@line 359
					_label101:
						IAdd ::temp88 i 1                                        ;@line 362
						Assign i ::temp88                                        ;@line 362
						Jump _label104                                           ;@line 362
					_label98:
					.endCode
				.endFunction
				.function CreatureCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp257 Int[]
						.local ::temp258 Int
						.local ::temp259 Int
						.local Genders Int[]
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp257 Positions          ;@line 792
						Assign Genders ::temp257                                 ;@line 792
						ArrayGetElement ::temp258 Genders 2                      ;@line 793
						ArrayGetElement ::temp259 Genders 3                      ;@line 793
						IAdd ::temp258 ::temp258 ::temp259                       ;@line 793
						Return ::temp258                                         ;@line 793
					.endCode
				.endFunction
				.function IsStrippable
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::temp25 Bool
					.endLocalTable
					.code
						CallMethod IsNoStrip self ::temp25 ItemRef               ;@line 141
						Not ::temp25 ::temp25                                    ;@line 141
						Return ::temp25                                          ;@line 141
					.endCode
				.endFunction
				.function ApplyOverlay
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akTarget Actor
						.param isFemale Bool
						.param asArea String
						.param asOverlaySlot String
						.param asTexture String
						.param asNormalTexture String
					.endParamTable
					.localTable
						.local ::temp98 objectreference
						.local ::NoneVar None
						.local ::temp99 Float
						.local ::temp100 String
						.local ::temp101 Bool
						.local alpha Float
						.local node String
					.local ::slpNative Bool
					.endLocalTable
					.code
						CallStatic SLPPlusUBECum NativeOverlaysEnabled ::slpNative
						JumpF ::slpNative _label9001
						Cast ::temp98 akTarget                                   ;@line 370
						CallStatic nioverride AddOverlays ::NoneVar ::temp98     ;@line 370
						CallStatic sslsystemconfig GetSettingFlt ::temp99 "fCumAlpha"  ;@line 371
						Assign alpha ::temp99                                    ;@line 371
						StrCat ::temp100 asArea " [ovl"                          ;@line 372
						StrCat ::temp100 ::temp100 asOverlaySlot                 ;@line 372
						StrCat ::temp100 ::temp100 "]"                           ;@line 372
						Assign node ::temp100                                    ;@line 372
						Cast ::temp98 akTarget                                   ;@line 373
						CallStatic nioverride AddNodeOverrideString ::NoneVar ::temp98 isFemale node 9 0 asTexture True  ;@line 373
						CompareEQ ::temp101 asNormalTexture ""                   ;@line 374
						Not ::temp101 ::temp101                                  ;@line 374
						JumpF ::temp101 _label105                                ;@line 374
						Cast ::temp98 akTarget                                   ;@line 375
						CallStatic nioverride AddNodeOverrideString ::NoneVar ::temp98 isFemale node 9 1 asNormalTexture True  ;@line 375
						Jump _label106                                           ;@line 375
					_label105:
						Cast ::temp98 akTarget                                   ;@line 377
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp98 isFemale node 9 1  ;@line 377
					_label106:
						Cast ::temp98 akTarget                                   ;@line 379
						CallStatic nioverride AddNodeOverrideInt ::NoneVar ::temp98 isFemale node 7 -1 0 True  ;@line 379
						Cast ::temp98 akTarget                                   ;@line 380
						CallStatic nioverride AddNodeOverrideInt ::NoneVar ::temp98 isFemale node 0 -1 0 True  ;@line 380
						Cast ::temp98 akTarget                                   ;@line 381
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp98 isFemale node 8 -1 alpha True  ;@line 381
						Cast ::temp98 akTarget                                   ;@line 382
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp98 isFemale node 2 -1 0.000000 True  ;@line 382
						Cast ::temp98 akTarget                                   ;@line 383
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp98 isFemale node 3 -1 0.000000 True  ;@line 383
						Cast ::temp98 akTarget                                   ;@line 384
						CallStatic nioverride ApplyNodeOverrides ::NoneVar ::temp98  ;@line 384
					_label9001:
						Return None
					.endCode
				.endFunction
				.function TreatAsFemale
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ActorRef Actor
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod TreatAsGender self ::NoneVar ActorRef True    ;@line 726
					.endCode
				.endFunction
				.function StripActor
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Form[]
					.paramTable
						.param ActorRef Actor
						.param VictimRef Actor
						.param DoAnimate Bool
						.param LeadIn Bool
					.endParamTable
					.localTable
						.local ::temp26 Bool
						.local ::temp27 Int
						.local ::temp28 Bool
						.local ::temp29 Int[]
						.local ::temp30 Int
						.local ::temp31 Form[]
						.local strips Int[]
					.endLocalTable
					.code
						CompareEQ ::temp26 ActorRef VictimRef                    ;@line 145
						Cast ::temp26 ::temp26                                   ;@line 145
						JumpT ::temp26 _label107                                 ;@line 145
						CallStatic sexlabregistry GetSex ::temp27 ActorRef False  ;@line 145
						CompareEQ ::temp28 ::temp27 1                            ;@line 145
						Cast ::temp26 ::temp28                                   ;@line 145
					_label107:
						Cast ::temp28 VictimRef                                  ;@line 145
						CallStatic sslsystemconfig GetStripForms ::temp29 ::temp26 ::temp28  ;@line 145
						Assign strips ::temp29                                   ;@line 145
						ArrayGetElement ::temp27 strips 0                        ;@line 146
						ArrayGetElement ::temp30 strips 1                        ;@line 146
						Cast ::temp28 ::temp30                                   ;@line 146
						CallMethod StripActorImpl self ::temp31 ActorRef ::temp27 ::temp28 DoAnimate  ;@line 146
						Return ::temp31                                          ;@line 146
					.endCode
				.endFunction
				.function RemovePartOverlay
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akTarget Actor
						.param isFemale Bool
						.param LastEffect String
					.endParamTable
					.localTable
						.local ::temp102 String
						.local ::temp103 actorbase
						.local ::temp104 String
						.local ::NoneVar None
						.local ::temp105 String[]
						.local ::temp106 Int
						.local ::temp107 Bool
						.local parts String[]
						.local i Int
						.local ::temp108 Bool
						.local j Int
						.local ::temp109 objectreference
						.local ::temp110 Bool
						.local node String
						.local TexPath String
					.endLocalTable
					.code
						StrCat ::temp102 "RemovePartOverlay:" LastEffect         ;@line 388
						StrCat ::temp102 ::temp102 " started on "                ;@line 388
						CallMethod GetLeveledActorBase akTarget ::temp103        ;@line 388
						CallMethod GetName ::temp103 ::temp104                   ;@line 388
						StrCat ::temp102 ::temp102 ::temp104                     ;@line 388
						CallMethod Log self ::NoneVar ::temp102 "NOTICE"         ;@line 388
						CallMethod GetAreas self ::temp105                       ;@line 389
						Assign parts ::temp105                                   ;@line 389
						Assign i 0                                               ;@line 390
					_label112:
						ArrayLength ::temp106 parts                              ;@line 391
						CompareLT ::temp107 i ::temp106                          ;@line 391
						JumpF ::temp107 _label108                                ;@line 391
						ArrayGetElement ::temp104 parts i                        ;@line 392
						CallMethod GetNumSlots self ::temp106 ::temp104          ;@line 392
						Assign j ::temp106                                       ;@line 392
					_label111:
						CompareGT ::temp108 j 0                                  ;@line 393
						JumpF ::temp108 _label109                                ;@line 393
						ISubtract ::temp106 j 1                                  ;@line 394
						Assign j ::temp106                                       ;@line 394
						ArrayGetElement ::temp102 parts i                        ;@line 395
						StrCat ::temp104 ::temp102 " [ovl"                       ;@line 395
						Cast ::temp102 j                                         ;@line 395
						StrCat ::temp102 ::temp104 ::temp102                     ;@line 395
						StrCat ::temp104 ::temp102 "]"                           ;@line 395
						Assign node ::temp104                                    ;@line 395
						Cast ::temp109 akTarget                                  ;@line 396
						CallStatic nioverride GetNodeOverrideString ::temp102 ::temp109 isFemale node 9 0  ;@line 396
						Assign TexPath ::temp102                                 ;@line 396
						CompareEQ ::temp110 TexPath LastEffect                   ;@line 397
						JumpF ::temp110 _label110                                ;@line 397
						Cast ::temp109 akTarget                                  ;@line 398
						CallStatic nioverride AddNodeOverrideString ::NoneVar ::temp109 isFemale node 9 0 "actors\\character\\overlays\\default.dds" True  ;@line 398
						Cast ::temp109 akTarget                                  ;@line 399
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 9 0  ;@line 399
						Cast ::temp109 akTarget                                  ;@line 400
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 9 1  ;@line 400
						Cast ::temp109 akTarget                                  ;@line 401
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 7 -1  ;@line 401
						Cast ::temp109 akTarget                                  ;@line 402
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 0 -1  ;@line 402
						Cast ::temp109 akTarget                                  ;@line 403
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 8 -1  ;@line 403
						Cast ::temp109 akTarget                                  ;@line 404
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 2 -1  ;@line 404
						Cast ::temp109 akTarget                                  ;@line 405
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp109 isFemale node 3 -1  ;@line 405
						Jump _label110                                           ;@line 405
					_label110:
						Jump _label111                                           ;@line 405
					_label109:
						IAdd ::temp106 i 1                                       ;@line 408
						Assign i ::temp106                                       ;@line 408
						Jump _label112                                           ;@line 408
					_label108:
					.endCode
				.endFunction
				.function TransCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp236 Int[]
						.local ::temp237 Int
						.local ::temp238 Bool
						.local Trans Int[]
						.local i Int
						.local ::temp239 Actor
						.local ::temp240 Bool
						.local ::temp241 Bool
						.local g Int
						.local ::temp242 Int
					.endLocalTable
					.code
						ArrayCreate ::temp236 4                                  ;@line 752
						Assign Trans ::temp236                                   ;@line 752
						ArrayLength ::temp237 Positions                          ;@line 753
						Assign i ::temp237                                       ;@line 753
					_label116:
						CompareGT ::temp238 i 0                                  ;@line 754
						JumpF ::temp238 _label113                                ;@line 754
						ISubtract ::temp237 i 1                                  ;@line 755
						Assign i ::temp237                                       ;@line 755
						ArrayGetElement ::temp239 Positions i                    ;@line 756
						CallMethod GetTrans self ::temp237 ::temp239             ;@line 756
						Assign g ::temp237                                       ;@line 756
						CompareGTE ::temp240 g 0                                 ;@line 757
						Cast ::temp240 ::temp240                                 ;@line 757
						JumpF ::temp240 _label114                                ;@line 757
						CompareLT ::temp241 g 4                                  ;@line 757
						Cast ::temp240 ::temp241                                 ;@line 757
					_label114:
						JumpF ::temp240 _label115                                ;@line 757
						ArrayGetElement ::temp242 Trans g                        ;@line 758
						IAdd ::temp242 ::temp242 1                               ;@line 758
						Assign ::temp237 ::temp242                               ;@line 758
						ArraySetElement Trans g ::temp237                        ;@line 758
						Jump _label115                                           ;@line 758
					_label115:
						Jump _label116                                           ;@line 758
					_label113:
						Return Trans                                             ;@line 761
					.endCode
				.endFunction
				.function GetGendersAll
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp243 Int
						.local ::temp244 Int[]
						.local ::temp245 Bool
						.local i Int
						.local Genders Int[]
						.local ::temp246 Actor
						.local ::temp247 Int
					.endLocalTable
					.code
						ArrayLength ::temp243 Positions                          ;@line 765
						Assign i ::temp243                                       ;@line 765
						CallStatic utility CreateIntArray ::temp244 i 0          ;@line 766
						Assign Genders ::temp244                                 ;@line 766
					_label118:
						CompareGT ::temp245 i 0                                  ;@line 767
						JumpF ::temp245 _label117                                ;@line 767
						ISubtract ::temp243 i 1                                  ;@line 768
						Assign i ::temp243                                       ;@line 768
						ArrayGetElement ::temp246 Positions i                    ;@line 769
						CallMethod GetGender self ::temp247 ::temp246            ;@line 769
						Assign ::temp243 ::temp247                               ;@line 769
						ArraySetElement Genders i ::temp243                      ;@line 769
						Jump _label118                                           ;@line 769
					_label117:
						Return Genders                                           ;@line 771
					.endCode
				.endFunction
				.function TreatAsSex
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akActor Actor
						.param aiSexTag Int
					.endParamTable
					.localTable
						.local ::temp56 Int
						.local ::temp57 Bool
						.local baseSex Int
						.local ::NoneVar None
						.local ::temp58 Bool
						.local ::temp59 Bool
						.local handle Int
						.local ::temp60 form
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp56 akActor True   ;@line 223
						Assign baseSex ::temp56                                  ;@line 223
						IMod ::temp56 baseSex 3                                  ;@line 224
						CompareEQ ::temp57 aiSexTag ::temp56                     ;@line 224
						JumpF ::temp57 _label119                                 ;@line 224
						CallMethod RemoveFromFaction akActor ::NoneVar ::GenderFaction_var  ;@line 225
						Jump _label120                                           ;@line 225
					_label119:
						CompareGT ::temp58 baseSex 3                             ;@line 227
						Cast ::temp58 ::temp58                                   ;@line 227
						JumpF ::temp58 _label121                                 ;@line 227
						CompareEQ ::temp59 aiSexTag 2                            ;@line 227
						Cast ::temp58 ::temp59                                   ;@line 227
					_label121:
						JumpF ::temp58 _label122                                 ;@line 227
						Assign aiSexTag 1                                        ;@line 228
						Jump _label122                                           ;@line 228
					_label122:
						CallMethod SetFactionRank akActor ::NoneVar ::GenderFaction_var aiSexTag  ;@line 230
					_label120:
						CallStatic modevent Create ::temp56 "SexLabActorGenderChange"  ;@line 232
						Assign handle ::temp56                                   ;@line 232
						JumpF handle _label123                                   ;@line 233
						Cast ::temp60 akActor                                    ;@line 234
						CallStatic modevent PushForm ::NoneVar handle ::temp60   ;@line 234
						CallStatic modevent PushInt ::NoneVar handle aiSexTag    ;@line 235
						CallStatic modevent Send ::temp59 handle                 ;@line 236
						Jump _label123                                           ;@line 236
					_label123:
					.endCode
				.endFunction
				.function TypeToString
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp129 Int
						.local ::temp130 Bool
						.local ::temp131 Bool
					.endLocalTable
					.code
						PropGet FX_VAGINAL self ::temp129                        ;@line 449
						CompareEQ ::temp130 aiType ::temp129                     ;@line 449
						JumpF ::temp130 _label124                                ;@line 449
						Return "Vaginal"                                         ;@line 450
						Jump _label125                                           ;@line 450
					_label124:
						PropGet FX_ANAL self ::temp129                           ;@line 451
						CompareEQ ::temp131 aiType ::temp129                     ;@line 451
						JumpF ::temp131 _label126                                ;@line 451
						Return "Anal"                                            ;@line 452
						Jump _label125                                           ;@line 452
					_label126:
						PropGet FX_ORAL self ::temp129                           ;@line 453
						CompareEQ ::temp131 aiType ::temp129                     ;@line 453
						JumpF ::temp131 _label127                                ;@line 453
						Return "Oral"                                            ;@line 454
						Jump _label125                                           ;@line 454
					_label127:
						Return "Unknown"                                         ;@line 456
					_label125:
					.endCode
				.endFunction
				.function StripActorImpl
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Form[]
					.paramTable
						.param akActor Actor
						.param aiSlots Int
						.param abStripWeapons Bool
						.param abAnimate Bool
					.endParamTable
					.localTable
						.local ::temp80 form
						.local ::temp81 Bool
						.local ::temp86 Form[]
						.local ::temp82 actorbase
						.local ::temp83 Int
						.local ::temp84 String
						.local ::temp85 objectreference
						.local ::NoneVar None
						.local Gender Int
						.local ret Form[]
						.local RightHand form
						.local LeftHand form
					.endLocalTable
					.code
						Cast ::temp81 abAnimate                                  ;@line 292
						JumpF ::temp81 _label128                                 ;@line 292
						CallMethod GetWornForm akActor ::temp80 4                ;@line 292
						Cast ::temp81 ::temp80                                   ;@line 292
					_label128:
						Assign abAnimate ::temp81                                ;@line 292
						JumpF abAnimate _label129                                ;@line 293
						CallMethod GetLeveledActorBase akActor ::temp82          ;@line 294
						CallMethod GetSex ::temp82 ::temp83                      ;@line 294
						Assign Gender ::temp83                                   ;@line 294
						Cast ::temp84 Gender                                     ;@line 295
						StrCat ::temp84 "Arrok_Undress_G" ::temp84               ;@line 295
						Cast ::temp85 akActor                                    ;@line 295
						CallStatic debug SendAnimationEvent ::NoneVar ::temp85 ::temp84  ;@line 295
						CallStatic utility Wait ::NoneVar 0.600000               ;@line 296
						Jump _label129                                           ;@line 296
					_label129:
						CallStatic sslActorLibrary UnequipSlots ::temp86 akActor aiSlots  ;@line 298
						Assign ret ::temp86                                      ;@line 298
						JumpF abStripWeapons _label130                           ;@line 299
						CallMethod GetEquippedObject akActor ::temp80 1          ;@line 300
						Assign RightHand ::temp80                                ;@line 300
						Cast ::temp81 RightHand                                  ;@line 301
						JumpF ::temp81 _label131                                 ;@line 301
						CallMethod IsStrippable self ::temp81 RightHand          ;@line 301
						Cast ::temp81 ::temp81                                   ;@line 301
					_label131:
						JumpF ::temp81 _label132                                 ;@line 301
						PropGet EquipSlot_RightHand akActor ::temp83             ;@line 302
						CallMethod UnequipItemEX akActor ::NoneVar RightHand ::temp83 False  ;@line 302
						CallStatic papyrusutil PushForm ::temp86 ret LeftHand    ;@line 303
						Assign ret ::temp86                                      ;@line 303
						CallStatic storageutil SetIntValue ::temp83 RightHand "hand" 1  ;@line 304
						Jump _label132                                           ;@line 304
					_label132:
						CallMethod GetEquippedObject akActor ::temp80 0          ;@line 306
						Assign LeftHand ::temp80                                 ;@line 306
						Cast ::temp81 LeftHand                                   ;@line 307
						JumpF ::temp81 _label133                                 ;@line 307
						CallMethod IsStrippable self ::temp81 LeftHand           ;@line 307
						Cast ::temp81 ::temp81                                   ;@line 307
					_label133:
						JumpF ::temp81 _label134                                 ;@line 307
						PropGet EquipSlot_LeftHand akActor ::temp83              ;@line 308
						CallMethod UnequipItemEX akActor ::NoneVar LeftHand ::temp83 False  ;@line 308
						CallStatic papyrusutil PushForm ::temp86 ret LeftHand    ;@line 309
						Assign ret ::temp86                                      ;@line 309
						CallStatic storageutil SetIntValue ::temp83 RightHand "hand" 2  ;@line 310
						Jump _label134                                           ;@line 310
					_label134:
						Jump _label130                                           ;@line 310
					_label130:
						JumpF abAnimate _label135                                ;@line 313
						CallStatic utility Wait ::NoneVar 0.400000               ;@line 314
						Jump _label135                                           ;@line 314
					_label135:
						Return ret                                               ;@line 316
					.endCode
				.endFunction
				.function GetAreas
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String[]
					.paramTable
					.endParamTable
					.localTable
						.local ::temp121 String[]
						.local ::temp122 String
						.local retVal String[]
					.endLocalTable
					.code
						ArrayCreate ::temp121 4                                  ;@line 428
						Assign retVal ::temp121                                  ;@line 428
						Assign ::temp122 "Face"                                  ;@line 429
						ArraySetElement retVal 0 ::temp122                       ;@line 429
						Assign ::temp122 "Body"                                  ;@line 430
						ArraySetElement retVal 1 ::temp122                       ;@line 430
						Assign ::temp122 "Hands"                                 ;@line 431
						ArraySetElement retVal 2 ::temp122                       ;@line 431
						Assign ::temp122 "Feet"                                  ;@line 432
						ArraySetElement retVal 3 ::temp122                       ;@line 432
						Return retVal                                            ;@line 433
					.endCode
				.endFunction
				.function MakeAlwaysStrip
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param ItemRef form
					.endParamTable
					.localTable
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary WriteStrip ::NoneVar ItemRef False  ;@line 125
					.endCode
				.endFunction
				.function MaleCount
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Positions Actor[]
					.endParamTable
					.localTable
						.local ::temp253 Int[]
						.local ::temp254 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp253 Positions          ;@line 786
						ArrayGetElement ::temp254 ::temp253 0                    ;@line 786
						Return ::temp254                                         ;@line 786
					.endCode
				.endFunction
			.endState
		.endStateTable
	.endObject
.endObjectTable
