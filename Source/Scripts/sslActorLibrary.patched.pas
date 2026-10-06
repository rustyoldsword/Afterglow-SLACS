.info
	.source "sslActorLibrary.psc"
	.modifyTime 1784983940 ;Sat Jul 25 15:52:20 2026 Local
	.compileTime 1784987790 ;Sat Jul 25 16:56:30 2026 Local
	.user ""
	.computer ""
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
			.variable ::CumVaginalSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::abCumFX_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::GenderFaction_var faction
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::ForbiddenFaction_var faction
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::CumAnalSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
			.variable ::CumOralSpell_var spell
				.userFlags 0	; Flags: 0x00000000
				.initialValue None
			.endVariable
		.endVariableTable
		.propertyTable
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
						.local ::temp170 sslsystemconfig
						.local ::temp171 spell
					.endLocalTable
					.code
						PropGet Config self ::temp170                            ;@line 554
						PropGet Vaginal1Oral2 ::temp170 ::temp171                ;@line 554
						Return ::temp171                                         ;@line 554
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
						.local ::temp204 sslsystemconfig
						.local ::temp205 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp204                            ;@line 640
						PropGet CumVaginalStackedKeyword ::temp204 ::temp205     ;@line 640
						Return ::temp205                                         ;@line 640
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
						.local ::temp140 sslsystemconfig
						.local ::temp141 spell
					.endLocalTable
					.code
						PropGet Config self ::temp140                            ;@line 479
						PropGet CumVaginalAnalSpell ::temp140 ::temp141          ;@line 479
						Return ::temp141                                         ;@line 479
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
						.local ::temp148 sslsystemconfig
						.local ::temp149 spell
					.endLocalTable
					.code
						PropGet Config self ::temp148                            ;@line 499
						PropGet Vaginal2Oral1Anal2 ::temp148 ::temp149           ;@line 499
						Return ::temp149                                         ;@line 499
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
						.local ::temp150 sslsystemconfig
						.local ::temp151 spell
					.endLocalTable
					.code
						PropGet Config self ::temp150                            ;@line 504
						PropGet Vaginal1Oral2Anal1 ::temp150 ::temp151           ;@line 504
						Return ::temp151                                         ;@line 504
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
						.local ::temp136 sslsystemconfig
						.local ::temp137 spell
					.endLocalTable
					.code
						PropGet Config self ::temp136                            ;@line 469
						PropGet CumOralAnalSpell ::temp136 ::temp137             ;@line 469
						Return ::temp137                                         ;@line 469
					.endCode
				.endFunction
			.endProperty
			.property CumOralSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumOralSpell_var
			.endProperty
			.property CumAnalSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumAnalSpell_var
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
						.local ::temp192 sslsystemconfig
						.local ::temp193 spell
					.endLocalTable
					.code
						PropGet Config self ::temp192                            ;@line 609
						PropGet Anal2 ::temp192 ::temp193                        ;@line 609
						Return ::temp193                                         ;@line 609
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
						.local ::temp180 sslsystemconfig
						.local ::temp181 spell
					.endLocalTable
					.code
						PropGet Config self ::temp180                            ;@line 579
						PropGet Vaginal2Anal2 ::temp180 ::temp181                ;@line 579
						Return ::temp181                                         ;@line 579
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
						.local ::temp152 sslsystemconfig
						.local ::temp153 spell
					.endLocalTable
					.code
						PropGet Config self ::temp152                            ;@line 509
						PropGet Vaginal1Oral2Anal2 ::temp152 ::temp153           ;@line 509
						Return ::temp153                                         ;@line 509
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
						.local ::temp128 sslsystemconfig
						.local ::temp129 faction
					.endLocalTable
					.code
						PropGet Config self ::temp128                            ;@line 448
						PropGet AnimatingFaction ::temp128 ::temp129             ;@line 448
						Return ::temp129                                         ;@line 448
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
						.local ::temp178 sslsystemconfig
						.local ::temp179 spell
					.endLocalTable
					.code
						PropGet Config self ::temp178                            ;@line 574
						PropGet Vaginal1Anal2 ::temp178 ::temp179                ;@line 574
						Return ::temp179                                         ;@line 574
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
						.local ::temp202 sslsystemconfig
						.local ::temp203 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp202                            ;@line 635
						PropGet CumAnalStackedKeyword ::temp202 ::temp203        ;@line 635
						Return ::temp203                                         ;@line 635
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
						.local ::temp142 sslsystemconfig
						.local ::temp143 spell
					.endLocalTable
					.code
						PropGet Config self ::temp142                            ;@line 484
						PropGet Vaginal1Oral1Anal1 ::temp142 ::temp143           ;@line 484
						Return ::temp143                                         ;@line 484
					.endCode
				.endFunction
			.endProperty
			.property abCumFX spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::abCumFX_var
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
						.local ::temp186 sslsystemconfig
						.local ::temp187 spell
					.endLocalTable
					.code
						PropGet Config self ::temp186                            ;@line 594
						PropGet Oral1 ::temp186 ::temp187                        ;@line 594
						Return ::temp187                                         ;@line 594
					.endCode
				.endFunction
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
						.local ::temp200 sslsystemconfig
						.local ::temp201 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp200                            ;@line 630
						PropGet CumOralStackedKeyword ::temp200 ::temp201        ;@line 630
						Return ::temp201                                         ;@line 630
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
						.local ::temp130 sslsystemconfig
						.local ::temp131 Weapon
					.endLocalTable
					.code
						PropGet Config self ::temp130                            ;@line 453
						PropGet DummyWeapon ::temp130 ::temp131                  ;@line 453
						Return ::temp131                                         ;@line 453
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
						.local ::temp166 sslsystemconfig
						.local ::temp167 spell
					.endLocalTable
					.code
						PropGet Config self ::temp166                            ;@line 544
						PropGet Vaginal1Oral1 ::temp166 ::temp167                ;@line 544
						Return ::temp167                                         ;@line 544
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
						.local ::temp188 sslsystemconfig
						.local ::temp189 spell
					.endLocalTable
					.code
						PropGet Config self ::temp188                            ;@line 599
						PropGet Oral2 ::temp188 ::temp189                        ;@line 599
						Return ::temp189                                         ;@line 599
					.endCode
				.endFunction
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
						.local ::temp176 sslsystemconfig
						.local ::temp177 spell
					.endLocalTable
					.code
						PropGet Config self ::temp176                            ;@line 569
						PropGet Vaginal2Anal1 ::temp176 ::temp177                ;@line 569
						Return ::temp177                                         ;@line 569
					.endCode
				.endFunction
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
						.local ::temp210 sslsystemconfig
						.local ::temp211 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp210                            ;@line 656
						PropGet ActorTypeNPC ::temp210 ::temp211                 ;@line 656
						Return ::temp211                                         ;@line 656
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
						.local ::temp208 sslsystemconfig
						.local ::temp209 Package
					.endLocalTable
					.code
						PropGet Config self ::temp208                            ;@line 651
						PropGet DoNothing ::temp208 ::temp209                    ;@line 651
						Return ::temp209                                         ;@line 651
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
						.local ::temp182 sslsystemconfig
						.local ::temp183 spell
					.endLocalTable
					.code
						PropGet Config self ::temp182                            ;@line 584
						PropGet Vaginal1 ::temp182 ::temp183                     ;@line 584
						Return ::temp183                                         ;@line 584
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
						.local ::temp138 sslsystemconfig
						.local ::temp139 spell
					.endLocalTable
					.code
						PropGet Config self ::temp138                            ;@line 474
						PropGet CumVaginalOralSpell ::temp138 ::temp139          ;@line 474
						Return ::temp139                                         ;@line 474
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
						.local ::temp146 sslsystemconfig
						.local ::temp147 spell
					.endLocalTable
					.code
						PropGet Config self ::temp146                            ;@line 494
						PropGet Vaginal2Oral2Anal1 ::temp146 ::temp147           ;@line 494
						Return ::temp147                                         ;@line 494
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
						.local ::temp194 sslsystemconfig
						.local ::temp195 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp194                            ;@line 615
						PropGet CumOralKeyword ::temp194 ::temp195               ;@line 615
						Return ::temp195                                         ;@line 615
					.endCode
				.endFunction
			.endProperty
			.property ForbiddenFaction faction auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::ForbiddenFaction_var
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
						.local ::temp154 sslsystemconfig
						.local ::temp155 spell
					.endLocalTable
					.code
						PropGet Config self ::temp154                            ;@line 514
						PropGet Vaginal1Oral1Anal2 ::temp154 ::temp155           ;@line 514
						Return ::temp155                                         ;@line 514
					.endCode
				.endFunction
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
						.local ::temp160 sslsystemconfig
						.local ::temp161 spell
					.endLocalTable
					.code
						PropGet Config self ::temp160                            ;@line 529
						PropGet Oral2Anal1 ::temp160 ::temp161                   ;@line 529
						Return ::temp161                                         ;@line 529
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
						.local ::temp196 sslsystemconfig
						.local ::temp197 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp196                            ;@line 620
						PropGet CumAnalKeyword ::temp196 ::temp197               ;@line 620
						Return ::temp197                                         ;@line 620
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
						.local ::temp198 sslsystemconfig
						.local ::temp199 Keyword
					.endLocalTable
					.code
						PropGet Config self ::temp198                            ;@line 625
						PropGet CumVaginalKeyword ::temp198 ::temp199            ;@line 625
						Return ::temp199                                         ;@line 625
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
						.local ::temp144 sslsystemconfig
						.local ::temp145 spell
					.endLocalTable
					.code
						PropGet Config self ::temp144                            ;@line 489
						PropGet Vaginal2Oral1Anal1 ::temp144 ::temp145           ;@line 489
						Return ::temp145                                         ;@line 489
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
						.local ::temp174 sslsystemconfig
						.local ::temp175 spell
					.endLocalTable
					.code
						PropGet Config self ::temp174                            ;@line 564
						PropGet Vaginal1Anal1 ::temp174 ::temp175                ;@line 564
						Return ::temp175                                         ;@line 564
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
						.local ::temp172 sslsystemconfig
						.local ::temp173 spell
					.endLocalTable
					.code
						PropGet Config self ::temp172                            ;@line 559
						PropGet Vaginal2Oral2 ::temp172 ::temp173                ;@line 559
						Return ::temp173                                         ;@line 559
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
						.local ::temp134 sslsystemconfig
						.local ::temp135 spell
					.endLocalTable
					.code
						PropGet Config self ::temp134                            ;@line 464
						PropGet CumVaginalOralAnalSpell ::temp134 ::temp135      ;@line 464
						Return ::temp135                                         ;@line 464
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
						.local ::temp158 sslsystemconfig
						.local ::temp159 spell
					.endLocalTable
					.code
						PropGet Config self ::temp158                            ;@line 524
						PropGet Oral1Anal1 ::temp158 ::temp159                   ;@line 524
						Return ::temp159                                         ;@line 524
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
						.local ::temp132 sslsystemconfig
						.local ::temp133 Armor
					.endLocalTable
					.code
						PropGet Config self ::temp132                            ;@line 458
						PropGet NudeSuit ::temp132 ::temp133                     ;@line 458
						Return ::temp133                                         ;@line 458
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
						.local ::temp156 sslsystemconfig
						.local ::temp157 spell
					.endLocalTable
					.code
						PropGet Config self ::temp156                            ;@line 519
						PropGet Vaginal2Oral2Anal2 ::temp156 ::temp157           ;@line 519
						Return ::temp157                                         ;@line 519
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
						.local ::temp168 sslsystemconfig
						.local ::temp169 spell
					.endLocalTable
					.code
						PropGet Config self ::temp168                            ;@line 549
						PropGet Vaginal2Oral1 ::temp168 ::temp169                ;@line 549
						Return ::temp169                                         ;@line 549
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
						.local ::temp190 sslsystemconfig
						.local ::temp191 spell
					.endLocalTable
					.code
						PropGet Config self ::temp190                            ;@line 604
						PropGet Anal1 ::temp190 ::temp191                        ;@line 604
						Return ::temp191                                         ;@line 604
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
						.local ::temp164 sslsystemconfig
						.local ::temp165 spell
					.endLocalTable
					.code
						PropGet Config self ::temp164                            ;@line 539
						PropGet Oral2Anal2 ::temp164 ::temp165                   ;@line 539
						Return ::temp165                                         ;@line 539
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
						.local ::temp206 sslsystemconfig
						.local ::temp207 Furniture
					.endLocalTable
					.code
						PropGet Config self ::temp206                            ;@line 646
						PropGet BaseMarker ::temp206 ::temp207                   ;@line 646
						Return ::temp207                                         ;@line 646
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
						.local ::temp184 sslsystemconfig
						.local ::temp185 spell
					.endLocalTable
					.code
						PropGet Config self ::temp184                            ;@line 589
						PropGet Vaginal2 ::temp184 ::temp185                     ;@line 589
						Return ::temp185                                         ;@line 589
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
						.local ::temp162 sslsystemconfig
						.local ::temp163 spell
					.endLocalTable
					.code
						PropGet Config self ::temp162                            ;@line 534
						PropGet Oral1Anal2 ::temp162 ::temp163                   ;@line 534
						Return ::temp163                                         ;@line 534
					.endCode
				.endFunction
			.endProperty
			.property CumVaginalSpell spell auto
				.userFlags 0	; Flags: 0x00000000
				.docString ""
				.autoVar ::CumVaginalSpell_var
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
						.local ::temp75 Int[]
						.local ::temp76 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp75 akPositions  ;@line 253
						ArrayGetElement ::temp76 ::temp75 4                      ;@line 253
						Return ::temp76                                          ;@line 253
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
						.local ::temp73 Int[]
						.local ::temp74 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp73 akPositions  ;@line 250
						ArrayGetElement ::temp74 ::temp73 3                      ;@line 250
						Return ::temp74                                          ;@line 250
					.endCode
				.endFunction
				.function PickRandomFxSet native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String
					.paramTable
						.param asType Int
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
						.local ::temp70 Int[]
						.local ::temp71 Int
						.local ::temp72 Int
						.local count Int[]
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp70 akPositions  ;@line 246
						Assign count ::temp70                                    ;@line 246
						ArrayGetElement ::temp71 count 3                         ;@line 247
						ArrayGetElement ::temp72 count 4                         ;@line 247
						IAdd ::temp71 ::temp71 ::temp72                          ;@line 247
						Return ::temp71                                          ;@line 247
					.endCode
				.endFunction
				.function CountFuta static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp68 Int[]
						.local ::temp69 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp68 akPositions  ;@line 243
						ArrayGetElement ::temp69 ::temp68 2                      ;@line 243
						Return ::temp69                                          ;@line 243
					.endCode
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
				.function CountFemale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp66 Int[]
						.local ::temp67 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp66 akPositions  ;@line 240
						ArrayGetElement ::temp67 ::temp66 1                      ;@line 240
						Return ::temp67                                          ;@line 240
					.endCode
				.endFunction
				.function CountMale static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp64 Int[]
						.local ::temp65 Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CountSexAll ::temp64 akPositions  ;@line 237
						ArrayGetElement ::temp65 ::temp64 0                      ;@line 237
						Return ::temp65                                          ;@line 237
					.endCode
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
						.local ::temp262 Int
						.local ::temp263 Bool
						.local t Int
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp262 ItemRef  ;@line 785
						Assign t ::temp262                                       ;@line 785
						CompareEQ ::temp263 t 1                                  ;@line 786
						JumpF ::temp263 _label0                                  ;@line 786
						Return True                                              ;@line 787
						Jump _label0                                             ;@line 787
					_label0:
						Cast ::temp263 DoStrip                                   ;@line 789
						JumpF ::temp263 _label1                                  ;@line 789
						CompareEQ ::temp263 t -1                                 ;@line 789
						Not ::temp263 ::temp263                                  ;@line 789
						Cast ::temp263 ::temp263                                 ;@line 789
					_label1:
						Return ::temp263                                         ;@line 789
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
				.function EraseStripAll native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
					.endParamTable
				.endFunction
				.function GetSexAll static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp48 Int
						.local ::temp49 Int[]
						.local ::temp50 Bool
						.local ret Int[]
						.local i Int
						.local ::temp51 Actor
						.local ::temp52 Int
					.endLocalTable
					.code
						ArrayLength ::temp48 akPositions                         ;@line 194
						CallStatic utility CreateIntArray ::temp49 ::temp48 0    ;@line 194
						Assign ret ::temp49                                      ;@line 194
						Assign i 0                                               ;@line 195
					_label3:
						ArrayLength ::temp48 akPositions                         ;@line 196
						CompareLT ::temp50 i ::temp48                            ;@line 196
						JumpF ::temp50 _label2                                   ;@line 196
						ArrayGetElement ::temp51 akPositions i                   ;@line 197
						CallStatic sexlabregistry GetSex ::temp52 ::temp51 False  ;@line 197
						Assign ::temp48 ::temp52                                 ;@line 197
						ArraySetElement ret i ::temp48                           ;@line 197
						IAdd ::temp48 i 1                                        ;@line 198
						Assign i ::temp48                                        ;@line 198
						Jump _label3                                             ;@line 198
					_label2:
						Return ret                                               ;@line 200
					.endCode
				.endFunction
				.function CountSexAll static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int[]
					.paramTable
						.param akPositions Actor[]
					.endParamTable
					.localTable
						.local ::temp59 Int[]
						.local ::temp60 Int
						.local ::temp61 Bool
						.local ret Int[]
						.local i Int
						.local ::temp62 Actor
						.local ::temp63 Int
						.local sex Int
					.endLocalTable
					.code
						ArrayCreate ::temp59 5                                   ;@line 226
						Assign ret ::temp59                                      ;@line 226
						Assign i 0                                               ;@line 227
					_label5:
						ArrayLength ::temp60 akPositions                         ;@line 228
						CompareLT ::temp61 i ::temp60                            ;@line 228
						JumpF ::temp61 _label4                                   ;@line 228
						ArrayGetElement ::temp62 akPositions i                   ;@line 229
						CallStatic sexlabregistry GetSex ::temp60 ::temp62 False  ;@line 229
						Assign sex ::temp60                                      ;@line 229
						ArrayGetElement ::temp63 ret sex                         ;@line 230
						IAdd ::temp63 ::temp63 1                                 ;@line 230
						Assign ::temp60 ::temp63                                 ;@line 230
						ArraySetElement ret sex ::temp60                         ;@line 230
						IAdd ::temp60 i 1                                        ;@line 231
						Assign i ::temp60                                        ;@line 231
						Jump _label5                                             ;@line 231
					_label4:
						Return ret                                               ;@line 233
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
				.function UnequipSlots native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Form[]
					.paramTable
						.param akActor Actor
						.param aiSlots Int
					.endParamTable
				.endFunction
				.function CheckStrip native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param akCheckForm form
					.endParamTable
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
				.function HasVehicle native static
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Bool
					.paramTable
						.param akActor Actor
					.endParamTable
				.endFunction
				.function GetNumSlots
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return Int
					.paramTable
						.param Area String
					.endParamTable
					.localTable
						.local ::temp119 Bool
						.local ::temp121 Bool
						.local ::temp120 Int
						.local ::temp122 Int
						.local ::temp123 Int
						.local ::temp124 Int
					.endLocalTable
					.code
						CompareEQ ::temp119 Area "Body"                          ;@line 410
						JumpF ::temp119 _label6                                  ;@line 410
						CallStatic nioverride GetNumBodyOverlays ::temp120       ;@line 411
						Return ::temp120                                         ;@line 411
						Jump _label7                                             ;@line 411
					_label6:
						CompareEQ ::temp121 Area "Face"                          ;@line 412
						JumpF ::temp121 _label8                                  ;@line 412
						CallStatic nioverride GetNumFaceOverlays ::temp122       ;@line 413
						Return ::temp122                                         ;@line 413
						Jump _label7                                             ;@line 413
					_label8:
						CompareEQ ::temp121 Area "Hands"                         ;@line 414
						JumpF ::temp121 _label9                                  ;@line 414
						CallStatic nioverride GetNumHandOverlays ::temp123       ;@line 415
						Return ::temp123                                         ;@line 415
						Jump _label7                                             ;@line 415
					_label9:
						CallStatic nioverride GetNumFeetOverlays ::temp124       ;@line 417
						Return ::temp124                                         ;@line 417
					_label7:
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
						.local ::temp251 Int[]
						.local ::temp252 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp251 Positions          ;@line 762
						ArrayGetElement ::temp252 ::temp251 1                    ;@line 762
						Return ::temp252                                         ;@line 762
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
						.local ::temp98 String
						.local ::temp99 actorbase
						.local ::temp100 String
						.local ::NoneVar None
						.local ::temp101 String[]
						.local ::temp102 Int
						.local ::temp103 Bool
						.local parts String[]
						.local i Int
						.local ::temp104 Bool
						.local j Int
						.local ::temp105 objectreference
						.local ::temp106 Bool
						.local node String
						.local TexPath String
					.endLocalTable
					.code
						StrCat ::temp98 "RemovePartOverlay:" LastEffect          ;@line 361
						StrCat ::temp98 ::temp98 " started on "                  ;@line 361
						CallMethod GetLeveledActorBase akTarget ::temp99         ;@line 361
						CallMethod GetName ::temp99 ::temp100                    ;@line 361
						StrCat ::temp98 ::temp98 ::temp100                       ;@line 361
						CallMethod Log self ::NoneVar ::temp98 "NOTICE"          ;@line 361
						CallMethod GetAreas self ::temp101                       ;@line 362
						Assign parts ::temp101                                   ;@line 362
						Assign i 0                                               ;@line 363
					_label14:
						ArrayLength ::temp102 parts                              ;@line 364
						CompareLT ::temp103 i ::temp102                          ;@line 364
						JumpF ::temp103 _label10                                 ;@line 364
						ArrayGetElement ::temp100 parts i                        ;@line 365
						CallMethod GetNumSlots self ::temp102 ::temp100          ;@line 365
						Assign j ::temp102                                       ;@line 365
					_label13:
						CompareGT ::temp104 j 0                                  ;@line 366
						JumpF ::temp104 _label11                                 ;@line 366
						ISubtract ::temp102 j 1                                  ;@line 367
						Assign j ::temp102                                       ;@line 367
						ArrayGetElement ::temp98 parts i                         ;@line 368
						StrCat ::temp100 ::temp98 " [ovl"                        ;@line 368
						Cast ::temp98 j                                          ;@line 368
						StrCat ::temp98 ::temp100 ::temp98                       ;@line 368
						StrCat ::temp100 ::temp98 "]"                            ;@line 368
						Assign node ::temp100                                    ;@line 368
						Cast ::temp105 akTarget                                  ;@line 369
						CallStatic nioverride GetNodeOverrideString ::temp98 ::temp105 isFemale node 9 0  ;@line 369
						Assign TexPath ::temp98                                  ;@line 369
						CompareEQ ::temp106 TexPath LastEffect                   ;@line 370
						JumpF ::temp106 _label12                                 ;@line 370
						Cast ::temp105 akTarget                                  ;@line 371
						CallStatic nioverride AddNodeOverrideString ::NoneVar ::temp105 isFemale node 9 0 "actors\\character\\overlays\\default.dds" True  ;@line 371
						Cast ::temp105 akTarget                                  ;@line 372
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 9 0  ;@line 372
						Cast ::temp105 akTarget                                  ;@line 373
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 7 -1  ;@line 373
						Cast ::temp105 akTarget                                  ;@line 374
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 0 -1  ;@line 374
						Cast ::temp105 akTarget                                  ;@line 375
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 8 -1  ;@line 375
						Cast ::temp105 akTarget                                  ;@line 376
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 2 -1  ;@line 376
						Cast ::temp105 akTarget                                  ;@line 377
						CallStatic nioverride RemoveNodeOverride ::NoneVar ::temp105 isFemale node 3 -1  ;@line 377
						Jump _label12                                            ;@line 377
					_label12:
						Jump _label13                                            ;@line 377
					_label11:
						IAdd ::temp102 i 1                                       ;@line 380
						Assign i ::temp102                                       ;@line 380
						Jump _label14                                            ;@line 380
					_label10:
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
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp107 String
						.local ::temp108 Int
						.local ::temp109 Bool
						.local typeStr String
						.local i Int
						.local ::temp110 String
						.local ::temp111 objectreference
						.local ::temp112 form
						.local ::NoneVar None
						.local ::temp113 Bool
						.local ::temp114 Bool
						.local ::temp115 Bool
						.local TexPath String
						.local ::temp116 actorbase
					.endLocalTable
					.code
						CallMethod TypeToString self ::temp107 aiType            ;@line 385
						Assign typeStr ::temp107                                 ;@line 385
						CallMethod GetNumSlots self ::temp108 asArea             ;@line 386
						Assign i ::temp108                                       ;@line 386
					_label20:
						CompareGT ::temp109 i 0                                  ;@line 387
						JumpF ::temp109 _label15                                 ;@line 387
						ISubtract ::temp108 i 1                                  ;@line 388
						Assign i ::temp108                                       ;@line 388
						StrCat ::temp107 asArea " [ovl"                          ;@line 389
						Cast ::temp110 i                                         ;@line 389
						StrCat ::temp110 ::temp107 ::temp110                     ;@line 389
						StrCat ::temp107 ::temp110 "]"                           ;@line 389
						Cast ::temp111 akTarget                                  ;@line 389
						CallStatic nioverride GetNodeOverrideString ::temp110 ::temp111 isFemale ::temp107 9 0  ;@line 389
						Assign TexPath ::temp110                                 ;@line 389
						CallMethod GetBaseObject akTarget ::temp112              ;@line 390
						CallMethod GetName ::temp112 ::temp107                   ;@line 390
						StrCat ::temp110 "GetEmptySlot(): akTarget: " ::temp107  ;@line 390
						StrCat ::temp107 ::temp110 ". Slot: "                    ;@line 390
						Cast ::temp110 i                                         ;@line 390
						StrCat ::temp110 ::temp107 ::temp110                     ;@line 390
						StrCat ::temp107 ::temp110 ". TexPath: "                 ;@line 390
						StrCat ::temp110 ::temp107 TexPath                       ;@line 390
						CallMethod Log self ::NoneVar ::temp110 "NOTICE"         ;@line 390
						CompareEQ ::temp113 TexPath ""                           ;@line 391
						Cast ::temp115 ::temp113                                 ;@line 391
						JumpT ::temp115 _label16                                 ;@line 391
						CallStatic stringutil Find ::temp108 TexPath "SexLab" 0  ;@line 391
						CompareEQ ::temp114 ::temp108 -1                         ;@line 391
						Not ::temp114 ::temp114                                  ;@line 391
						Cast ::temp114 ::temp114                                 ;@line 391
						JumpF ::temp114 _label17                                 ;@line 391
						CallStatic stringutil Find ::temp108 TexPath typeStr 0   ;@line 391
						CompareEQ ::temp115 ::temp108 -1                         ;@line 391
						Not ::temp115 ::temp115                                  ;@line 391
						Cast ::temp114 ::temp115                                 ;@line 391
					_label17:
						Cast ::temp115 ::temp114                                 ;@line 391
					_label16:
						Cast ::temp114 ::temp115                                 ;@line 391
						JumpT ::temp114 _label18                                 ;@line 391
						CompareEQ ::temp113 TexPath "actors\\character\\overlays\\default.dds"  ;@line 391
						Cast ::temp114 ::temp113                                 ;@line 391
					_label18:
						JumpF ::temp114 _label19                                 ;@line 391
						Cast ::temp107 i                                         ;@line 392
						StrCat ::temp110 "GetEmptySlot(): Slot " ::temp107       ;@line 392
						StrCat ::temp107 ::temp110 " chosen for area: "          ;@line 392
						StrCat ::temp110 ::temp107 asArea                        ;@line 392
						StrCat ::temp107 ::temp110 " on "                        ;@line 392
						CallMethod GetLeveledActorBase akTarget ::temp116        ;@line 392
						CallMethod GetName ::temp116 ::temp110                   ;@line 392
						StrCat ::temp107 ::temp107 ::temp110                     ;@line 392
						CallMethod Log self ::NoneVar ::temp107 "NOTICE"         ;@line 392
						Return i                                                 ;@line 393
						Jump _label19                                            ;@line 393
					_label19:
						Jump _label20                                            ;@line 393
					_label15:
						StrCat ::temp110 "GetEmptySlot(): Error: Could not find a free slot in area: " asArea  ;@line 396
						CallMethod Log self ::NoneVar ::temp110 "NOTICE"         ;@line 396
						Return -1                                                ;@line 397
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
						.param asSet String
					.endParamTable
					.localTable
						.local ::temp95 objectreference
						.local ::NoneVar None
						.local ::temp96 Float
						.local ::temp97 String
						.local alpha Float
						.local node String
						.local ::slpNative Bool
					.endLocalTable
					.code
						CallStatic SLPPlusUBECum NativeOverlaysEnabled ::slpNative  ;@line 348 ; SLP+ patch: skip SexLab P+ overlay when SLACS SCO handles it
						JumpF ::slpNative _label124                                   ;@line 348
						Cast ::temp95 akTarget                                   ;@line 348
						CallStatic nioverride AddOverlays ::NoneVar ::temp95     ;@line 348
						CallStatic sslsystemconfig GetSettingFlt ::temp96 "fCumAlpha"  ;@line 349
						Assign alpha ::temp96                                    ;@line 349
						StrCat ::temp97 asArea " [ovl"                           ;@line 350
						StrCat ::temp97 ::temp97 asOverlaySlot                   ;@line 350
						StrCat ::temp97 ::temp97 "]"                             ;@line 350
						Assign node ::temp97                                     ;@line 350
						Cast ::temp95 akTarget                                   ;@line 351
						CallStatic nioverride AddNodeOverrideString ::NoneVar ::temp95 isFemale node 9 0 asTexture True  ;@line 351
						Cast ::temp95 akTarget                                   ;@line 352
						CallStatic nioverride AddNodeOverrideInt ::NoneVar ::temp95 isFemale node 7 -1 0 True  ;@line 352
						Cast ::temp95 akTarget                                   ;@line 353
						CallStatic nioverride AddNodeOverrideInt ::NoneVar ::temp95 isFemale node 0 -1 0 True  ;@line 353
						Cast ::temp95 akTarget                                   ;@line 354
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp95 isFemale node 8 -1 alpha True  ;@line 354
						Cast ::temp95 akTarget                                   ;@line 355
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp95 isFemale node 2 -1 0.000000 True  ;@line 355
						Cast ::temp95 akTarget                                   ;@line 356
						CallStatic nioverride AddNodeOverrideFloat ::NoneVar ::temp95 isFemale node 3 -1 0.000000 True  ;@line 356
						Cast ::temp95 akTarget                                   ;@line 357
						CallStatic nioverride ApplyNodeOverrides ::NoneVar ::temp95  ;@line 357
					_label124:
						Return None                                              ;@line 348 ; SLP+ patch: native overlay gate exit
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
						.local ::temp41 Int
						.local ::temp42 Bool
						.local ::temp43 Bool
						.local result Int
						.local ::temp44 faction
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sslActorLibrary ValidateActorImpl ::temp41 ActorRef  ;@line 166
						Assign result ::temp41                                   ;@line 166
						CompareEQ ::temp42 result -10                            ;@line 167
						Cast ::temp42 ::temp42                                   ;@line 167
						JumpF ::temp42 _label21                                  ;@line 167
						Cast ::temp42 ::ThreadSlots_var                          ;@line 167
					_label21:
						Cast ::temp42 ::temp42                                   ;@line 167
						JumpF ::temp42 _label22                                  ;@line 167
						CallMethod FindActorController ::ThreadSlots_var ::temp41 ActorRef  ;@line 167
						CompareEQ ::temp43 ::temp41 -1                           ;@line 167
						Cast ::temp42 ::temp43                                   ;@line 167
					_label22:
						JumpF ::temp42 _label23                                  ;@line 167
						PropGet AnimatingFaction self ::temp44                   ;@line 168
						CallMethod RemoveFromFaction ActorRef ::NoneVar ::temp44  ;@line 168
						CallStatic sslActorLibrary ValidateActorImpl ::temp41 ActorRef  ;@line 169
						Assign result ::temp41                                   ;@line 169
						Jump _label23                                            ;@line 169
					_label23:
						Return result                                            ;@line 171
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
						JumpF AsFemale _label24                                  ;@line 685
						CallMethod TreatAsSex self ::NoneVar ActorRef 1          ;@line 686
						Jump _label25                                            ;@line 686
					_label24:
						CallMethod TreatAsSex self ::NoneVar ActorRef 0          ;@line 688
					_label25:
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
						.local ::temp277 Bool
						.local ::temp278 Bool
						.local ::temp279 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						Not ::temp277 Vaginal                                    ;@line 806
						Cast ::temp277 ::temp277                                 ;@line 806
						JumpF ::temp277 _label26                                 ;@line 806
						Not ::temp278 Oral                                       ;@line 806
						Cast ::temp277 ::temp278                                 ;@line 806
					_label26:
						Cast ::temp277 ::temp277                                 ;@line 806
						JumpF ::temp277 _label27                                 ;@line 806
						Not ::temp278 Anal                                       ;@line 806
						Cast ::temp277 ::temp278                                 ;@line 806
					_label27:
						JumpF ::temp277 _label28                                 ;@line 806
						Return None                                              ;@line 807
						Jump _label28                                            ;@line 807
					_label28:
						JumpF Vaginal _label29                                   ;@line 809
						PropGet FX_VAGINAL self ::temp279                        ;@line 810
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp279    ;@line 810
						Jump _label29                                            ;@line 810
					_label29:
						JumpF Oral _label30                                      ;@line 812
						PropGet FX_ORAL self ::temp279                           ;@line 813
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp279    ;@line 813
						Jump _label30                                            ;@line 813
					_label30:
						JumpF Anal _label31                                      ;@line 815
						PropGet FX_ANAL self ::temp279                           ;@line 816
						CallMethod AddCumFx self ::NoneVar ActorRef ::temp279    ;@line 816
						Jump _label31                                            ;@line 816
					_label31:
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
						.local ::temp227 Int
						.local ::temp228 Int[]
						.local ::temp229 Bool
						.local i Int
						.local Trans Int[]
						.local ::temp230 Actor
						.local ::temp231 Int
					.endLocalTable
					.code
						ArrayLength ::temp227 Positions                          ;@line 715
						Assign i ::temp227                                       ;@line 715
						CallStatic utility CreateIntArray ::temp228 i 0          ;@line 716
						Assign Trans ::temp228                                   ;@line 716
					_label33:
						CompareGT ::temp229 i 0                                  ;@line 717
						JumpF ::temp229 _label32                                 ;@line 717
						ISubtract ::temp227 i 1                                  ;@line 718
						Assign i ::temp227                                       ;@line 718
						ArrayGetElement ::temp230 Positions i                    ;@line 719
						CallMethod GetTrans self ::temp231 ::temp230             ;@line 719
						Assign ::temp227 ::temp231                               ;@line 719
						ArraySetElement Trans i ::temp227                        ;@line 719
						Jump _label33                                            ;@line 719
					_label32:
						Return Trans                                             ;@line 721
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
						CallMethod ClearForcedSex self ::NoneVar ActorRef        ;@line 692
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
						.local ::temp47 Bool
					.endLocalTable
					.code
						CallMethod IsInFaction ActorRef ::temp47 ::ForbiddenFaction_var  ;@line 184
						Return ::temp47                                          ;@line 184
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
						.local ::temp214 actorbase
						.local ::temp215 race
						.local ::temp216 Bool
						.local BaseRef actorbase
						.local ::temp217 sslsystemconfig
						.local ::temp218 Bool
						.local ::temp219 Bool
						.local ::temp220 Int
						.local ::temp221 Int
						.local ::temp222 Int
						.local ::temp223 Int
					.endLocalTable
					.code
						JumpF ActorRef _label34                                  ;@line 665
						CallMethod GetLeveledActorBase ActorRef ::temp214        ;@line 666
						Assign BaseRef ::temp214                                 ;@line 666
						CallMethod GetRace BaseRef ::temp215                     ;@line 667
						CallStatic sslcreatureanimationslots HasRaceType ::temp216 ::temp215  ;@line 667
						JumpF ::temp216 _label35                                 ;@line 667
						PropGet Config self ::temp217                            ;@line 668
						PropGet UseCreatureGender ::temp217 ::temp218            ;@line 668
						Not ::temp218 ::temp218                                  ;@line 668
						JumpF ::temp218 _label36                                 ;@line 668
						Return 2                                                 ;@line 669
						Jump _label37                                            ;@line 669
					_label36:
						CallMethod IsInFaction ActorRef ::temp219 ::GenderFaction_var  ;@line 670
						JumpF ::temp219 _label38                                 ;@line 670
						CallMethod GetFactionRank ActorRef ::temp220 ::GenderFaction_var  ;@line 671
						IAdd ::temp220 2 ::temp220                               ;@line 671
						Return ::temp220                                         ;@line 671
						Jump _label37                                            ;@line 671
					_label38:
						CallMethod GetSex BaseRef ::temp221                      ;@line 673
						IAdd ::temp221 2 ::temp221                               ;@line 673
						Return ::temp221                                         ;@line 673
					_label37:
						Jump _label39                                            ;@line 673
					_label35:
						CallMethod IsInFaction ActorRef ::temp219 ::GenderFaction_var  ;@line 675
						JumpF ::temp219 _label40                                 ;@line 675
						CallMethod GetFactionRank ActorRef ::temp222 ::GenderFaction_var  ;@line 676
						Return ::temp222                                         ;@line 676
						Jump _label39                                            ;@line 676
					_label40:
						CallMethod GetSex BaseRef ::temp223                      ;@line 678
						Return ::temp223                                         ;@line 678
					_label39:
						Jump _label34                                            ;@line 678
					_label34:
						Return 0                                                 ;@line 681
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
						.local ::temp18 Int
						.local ::temp19 Bool
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp18 ItemRef   ;@line 116
						CompareEQ ::temp19 ::temp18 -1                           ;@line 116
						Return ::temp19                                          ;@line 116
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
						.local ::temp232 Int[]
						.local ::temp233 Int
						.local ::temp234 Bool
						.local Trans Int[]
						.local i Int
						.local ::temp235 Actor
						.local ::temp236 Bool
						.local ::temp237 Bool
						.local g Int
						.local ::temp238 Int
					.endLocalTable
					.code
						ArrayCreate ::temp232 4                                  ;@line 725
						Assign Trans ::temp232                                   ;@line 725
						ArrayLength ::temp233 Positions                          ;@line 726
						Assign i ::temp233                                       ;@line 726
					_label44:
						CompareGT ::temp234 i 0                                  ;@line 727
						JumpF ::temp234 _label41                                 ;@line 727
						ISubtract ::temp233 i 1                                  ;@line 728
						Assign i ::temp233                                       ;@line 728
						ArrayGetElement ::temp235 Positions i                    ;@line 729
						CallMethod GetTrans self ::temp233 ::temp235             ;@line 729
						Assign g ::temp233                                       ;@line 729
						CompareGTE ::temp236 g 0                                 ;@line 730
						Cast ::temp236 ::temp236                                 ;@line 730
						JumpF ::temp236 _label42                                 ;@line 730
						CompareLT ::temp237 g 4                                  ;@line 730
						Cast ::temp236 ::temp237                                 ;@line 730
					_label42:
						JumpF ::temp236 _label43                                 ;@line 730
						ArrayGetElement ::temp238 Trans g                        ;@line 731
						IAdd ::temp238 ::temp238 1                               ;@line 731
						Assign ::temp233 ::temp238                               ;@line 731
						ArraySetElement Trans g ::temp233                        ;@line 731
						Jump _label43                                            ;@line 731
					_label43:
						Jump _label44                                            ;@line 731
					_label41:
						Return Trans                                             ;@line 734
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
						.local ::temp77 form
						.local ::temp78 Bool
						.local ::temp83 Form[]
						.local ::temp79 actorbase
						.local ::temp80 Int
						.local ::temp81 String
						.local ::temp82 objectreference
						.local ::NoneVar None
						.local Gender Int
						.local ret Form[]
						.local RightHand form
						.local LeftHand form
					.endLocalTable
					.code
						Cast ::temp78 abAnimate                                  ;@line 273
						JumpF ::temp78 _label45                                  ;@line 273
						CallMethod GetWornForm akActor ::temp77 4                ;@line 273
						Cast ::temp78 ::temp77                                   ;@line 273
					_label45:
						Assign abAnimate ::temp78                                ;@line 273
						JumpF abAnimate _label46                                 ;@line 274
						CallMethod GetLeveledActorBase akActor ::temp79          ;@line 275
						CallMethod GetSex ::temp79 ::temp80                      ;@line 275
						Assign Gender ::temp80                                   ;@line 275
						Cast ::temp81 Gender                                     ;@line 276
						StrCat ::temp81 "Arrok_Undress_G" ::temp81               ;@line 276
						Cast ::temp82 akActor                                    ;@line 276
						CallStatic debug SendAnimationEvent ::NoneVar ::temp82 ::temp81  ;@line 276
						CallStatic utility Wait ::NoneVar 0.600000               ;@line 277
						Jump _label46                                            ;@line 277
					_label46:
						CallStatic sslActorLibrary UnequipSlots ::temp83 akActor aiSlots  ;@line 279
						Assign ret ::temp83                                      ;@line 279
						JumpF abStripWeapons _label47                            ;@line 280
						CallMethod GetEquippedObject akActor ::temp77 1          ;@line 281
						Assign RightHand ::temp77                                ;@line 281
						Cast ::temp78 RightHand                                  ;@line 282
						JumpF ::temp78 _label48                                  ;@line 282
						CallMethod IsStrippable self ::temp78 RightHand          ;@line 282
						Cast ::temp78 ::temp78                                   ;@line 282
					_label48:
						JumpF ::temp78 _label49                                  ;@line 282
						PropGet EquipSlot_RightHand akActor ::temp80             ;@line 283
						CallMethod UnequipItemEX akActor ::NoneVar RightHand ::temp80 False  ;@line 283
						CallStatic papyrusutil PushForm ::temp83 ret LeftHand    ;@line 284
						Assign ret ::temp83                                      ;@line 284
						CallStatic storageutil SetIntValue ::temp80 RightHand "hand" 1  ;@line 285
						Jump _label49                                            ;@line 285
					_label49:
						CallMethod GetEquippedObject akActor ::temp77 0          ;@line 287
						Assign LeftHand ::temp77                                 ;@line 287
						Cast ::temp78 LeftHand                                   ;@line 288
						JumpF ::temp78 _label50                                  ;@line 288
						CallMethod IsStrippable self ::temp78 LeftHand           ;@line 288
						Cast ::temp78 ::temp78                                   ;@line 288
					_label50:
						JumpF ::temp78 _label51                                  ;@line 288
						PropGet EquipSlot_LeftHand akActor ::temp80              ;@line 289
						CallMethod UnequipItemEX akActor ::NoneVar LeftHand ::temp80 False  ;@line 289
						CallStatic papyrusutil PushForm ::temp83 ret LeftHand    ;@line 290
						Assign ret ::temp83                                      ;@line 290
						CallStatic storageutil SetIntValue ::temp80 RightHand "hand" 2  ;@line 291
						Jump _label51                                            ;@line 291
					_label51:
						Jump _label47                                            ;@line 291
					_label47:
						JumpF abAnimate _label52                                 ;@line 294
						CallStatic utility Wait ::NoneVar 0.400000               ;@line 295
						Jump _label52                                            ;@line 295
					_label52:
						Return ret                                               ;@line 297
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
						CallMethod AddToFaction ActorRef ::NoneVar ::ForbiddenFaction_var  ;@line 178
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
						.local ::temp212 Int
						.local ::temp213 Bool
					.endLocalTable
					.code
						CallStatic sexlabregistry GetRaceID ::temp212 ActorRef   ;@line 661
						CompareGT ::temp213 ::temp212 0                          ;@line 661
						Return ::temp213                                         ;@line 661
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
						CallMethod TreatAsGender self ::NoneVar ActorRef False   ;@line 696
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
						.local ::temp125 Int
						.local ::temp126 Bool
						.local ::temp127 Bool
					.endLocalTable
					.code
						PropGet FX_VAGINAL self ::temp125                        ;@line 422
						CompareEQ ::temp126 aiType ::temp125                     ;@line 422
						JumpF ::temp126 _label53                                 ;@line 422
						Return "Vaginal"                                         ;@line 423
						Jump _label54                                            ;@line 423
					_label53:
						PropGet FX_ANAL self ::temp125                           ;@line 424
						CompareEQ ::temp127 aiType ::temp125                     ;@line 424
						JumpF ::temp127 _label55                                 ;@line 424
						Return "Anal"                                            ;@line 425
						Jump _label54                                            ;@line 425
					_label55:
						PropGet FX_ORAL self ::temp125                           ;@line 426
						CompareEQ ::temp127 aiType ::temp125                     ;@line 426
						JumpF ::temp127 _label56                                 ;@line 426
						Return "Oral"                                            ;@line 427
						Jump _label54                                            ;@line 427
					_label56:
						Return "Unknown"                                         ;@line 429
					_label54:
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
						.local ::temp29 Bool
						.local ::temp30 Int
						.local ::temp31 Bool
						.local ::temp33 Form[]
						.local ::temp32 Form[]
					.endLocalTable
					.code
						Not ::temp29 ActorRef                                    ;@line 130
						Cast ::temp29 ::temp29                                   ;@line 130
						JumpT ::temp29 _label57                                  ;@line 130
						ArrayLength ::temp30 Strip                               ;@line 130
						CompareLT ::temp31 ::temp30 33                           ;@line 130
						Cast ::temp29 ::temp31                                   ;@line 130
					_label57:
						JumpF ::temp29 _label58                                  ;@line 130
						CallStatic utility CreateFormArray ::temp32 0 None       ;@line 131
						Return ::temp32                                          ;@line 131
						Jump _label58                                            ;@line 131
					_label58:
						CallStatic sslutility BoolToBit ::temp30 Strip           ;@line 133
						ArrayGetElement ::temp31 Strip 32                        ;@line 133
						CallMethod StripActorImpl self ::temp33 ActorRef ::temp30 ::temp31 DoAnimate  ;@line 133
						Return ::temp33                                          ;@line 133
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
						CallMethod TreatAsGender self ::NoneVar ActorRef True    ;@line 699
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
						CallStatic sslActorLibrary WriteStrip ::NoneVar ItemRef False  ;@line 106
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
						.local ::temp281 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						PropGet FX_ALL self ::temp281                            ;@line 835
						CallMethod RemoveCumFx self ::NoneVar ActorRef ::temp281  ;@line 835
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
						.local ::temp53 Int
						.local ::temp54 Bool
						.local baseSex Int
						.local ::NoneVar None
						.local ::temp55 Bool
						.local ::temp56 Bool
						.local handle Int
						.local ::temp57 form
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp53 akActor True   ;@line 204
						Assign baseSex ::temp53                                  ;@line 204
						IMod ::temp53 baseSex 3                                  ;@line 205
						CompareEQ ::temp54 aiSexTag ::temp53                     ;@line 205
						JumpF ::temp54 _label59                                  ;@line 205
						CallMethod RemoveFromFaction akActor ::NoneVar ::GenderFaction_var  ;@line 206
						Jump _label60                                            ;@line 206
					_label59:
						CompareGT ::temp55 baseSex 3                             ;@line 208
						Cast ::temp55 ::temp55                                   ;@line 208
						JumpF ::temp55 _label61                                  ;@line 208
						CompareEQ ::temp56 aiSexTag 2                            ;@line 208
						Cast ::temp55 ::temp56                                   ;@line 208
					_label61:
						JumpF ::temp55 _label62                                  ;@line 208
						Assign aiSexTag 1                                        ;@line 209
						Jump _label62                                            ;@line 209
					_label62:
						CallMethod SetFactionRank akActor ::NoneVar ::GenderFaction_var aiSexTag  ;@line 211
					_label60:
						CallStatic modevent Create ::temp53 "SexLabActorGenderChange"  ;@line 213
						Assign handle ::temp53                                   ;@line 213
						JumpF handle _label63                                    ;@line 214
						Cast ::temp57 akActor                                    ;@line 215
						CallStatic modevent PushForm ::NoneVar handle ::temp57   ;@line 215
						CallStatic modevent PushInt ::NoneVar handle aiSexTag    ;@line 216
						CallStatic modevent Send ::temp56 handle                 ;@line 217
						Jump _label63                                            ;@line 217
					_label63:
					.endCode
				.endFunction
				.function GetAreas
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return String[]
					.paramTable
					.endParamTable
					.localTable
						.local ::temp117 String[]
						.local ::temp118 String
						.local retVal String[]
					.endLocalTable
					.code
						ArrayCreate ::temp117 4                                  ;@line 401
						Assign retVal ::temp117                                  ;@line 401
						Assign ::temp118 "Face"                                  ;@line 402
						ArraySetElement retVal 0 ::temp118                       ;@line 402
						Assign ::temp118 "Body"                                  ;@line 403
						ArraySetElement retVal 1 ::temp118                       ;@line 403
						Assign ::temp118 "Hands"                                 ;@line 404
						ArraySetElement retVal 2 ::temp118                       ;@line 404
						Assign ::temp118 "Feet"                                  ;@line 405
						ArraySetElement retVal 3 ::temp118                       ;@line 405
						Return retVal                                            ;@line 406
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
						.local ::temp280 Int
					.endLocalTable
					.code
						Assign retVal 0                                          ;@line 821
						JumpF Vaginal _label64                                   ;@line 822
						PropGet FX_VAGINAL self ::temp280                        ;@line 823
						CallMethod CountCumFx self ::temp280 ActorRef ::temp280  ;@line 823
						IAdd ::temp280 retVal ::temp280                          ;@line 823
						Assign retVal ::temp280                                  ;@line 823
						Jump _label64                                            ;@line 823
					_label64:
						JumpF Oral _label65                                      ;@line 825
						PropGet FX_ORAL self ::temp280                           ;@line 826
						CallMethod CountCumFx self ::temp280 ActorRef ::temp280  ;@line 826
						IAdd ::temp280 retVal ::temp280                          ;@line 826
						Assign retVal ::temp280                                  ;@line 826
						Jump _label65                                            ;@line 826
					_label65:
						JumpF Anal _label66                                      ;@line 828
						PropGet FX_ANAL self ::temp280                           ;@line 829
						CallMethod CountCumFx self ::temp280 ActorRef ::temp280  ;@line 829
						IAdd ::temp280 retVal ::temp280                          ;@line 829
						Assign retVal ::temp280                                  ;@line 829
						Jump _label66                                            ;@line 829
					_label66:
						Return retVal                                            ;@line 831
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
						CallStatic sslActorLibrary EraseStripAll ::NoneVar       ;@line 112
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
						.local ::temp224 Int
						.local ::temp225 Bool
						.local ::temp226 Bool
						.local configSex Int
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp224 ActorRef True  ;@line 703
						Assign configSex ::temp224                               ;@line 703
						CompareEQ ::temp225 configSex 2                          ;@line 704
						Not ::temp225 ::temp225                                  ;@line 704
						Cast ::temp225 ::temp225                                 ;@line 704
						JumpF ::temp225 _label67                                 ;@line 704
						CallStatic sexlabregistry GetSex ::temp224 ActorRef False  ;@line 704
						CompareEQ ::temp226 configSex ::temp224                  ;@line 704
						Cast ::temp225 ::temp226                                 ;@line 704
					_label67:
						JumpF ::temp225 _label68                                 ;@line 704
						Return -1                                                ;@line 706
						Jump _label69                                            ;@line 706
					_label68:
						CompareGTE ::temp226 configSex 2                         ;@line 707
						JumpF ::temp226 _label69                                 ;@line 707
						ISubtract ::temp224 configSex 1                          ;@line 709
						Return ::temp224                                         ;@line 709
						Jump _label69                                            ;@line 709
					_label69:
						Return configSex                                         ;@line 711
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
						.local ::temp253 Int[]
						.local ::temp254 Int
						.local ::temp255 Int
						.local Genders Int[]
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp253 Positions          ;@line 765
						Assign Genders ::temp253                                 ;@line 765
						ArrayGetElement ::temp254 Genders 2                      ;@line 766
						ArrayGetElement ::temp255 Genders 3                      ;@line 766
						IAdd ::temp254 ::temp254 ::temp255                       ;@line 766
						Return ::temp254                                         ;@line 766
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
						CallStatic sslActorLibrary WriteStrip ::NoneVar ItemRef True  ;@line 103
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
						.local ::temp273 Bool
						.local ::temp274 Bool
						.local ::temp275 Bool
						.local ::temp276 Bool
						.local ::NoneVar None
					.endLocalTable
					.code
						CompareEQ ::temp273 CumID 1                              ;@line 802
						Cast ::temp273 ::temp273                                 ;@line 802
						JumpT ::temp273 _label70                                 ;@line 802
						CompareEQ ::temp274 CumID 4                              ;@line 802
						Cast ::temp273 ::temp274                                 ;@line 802
					_label70:
						Cast ::temp273 ::temp273                                 ;@line 802
						JumpT ::temp273 _label71                                 ;@line 802
						CompareEQ ::temp274 CumID 5                              ;@line 802
						Cast ::temp273 ::temp274                                 ;@line 802
					_label71:
						Cast ::temp273 ::temp273                                 ;@line 802
						JumpT ::temp273 _label72                                 ;@line 802
						CompareEQ ::temp274 CumID 7                              ;@line 802
						Cast ::temp273 ::temp274                                 ;@line 802
					_label72:
						CompareEQ ::temp274 CumID 2                              ;@line 802
						Cast ::temp274 ::temp274                                 ;@line 802
						JumpT ::temp274 _label73                                 ;@line 802
						CompareEQ ::temp275 CumID 4                              ;@line 802
						Cast ::temp274 ::temp275                                 ;@line 802
					_label73:
						Cast ::temp274 ::temp274                                 ;@line 802
						JumpT ::temp274 _label74                                 ;@line 802
						CompareEQ ::temp275 CumID 6                              ;@line 802
						Cast ::temp274 ::temp275                                 ;@line 802
					_label74:
						Cast ::temp274 ::temp274                                 ;@line 802
						JumpT ::temp274 _label75                                 ;@line 802
						CompareEQ ::temp275 CumID 7                              ;@line 802
						Cast ::temp274 ::temp275                                 ;@line 802
					_label75:
						CompareEQ ::temp275 CumID 3                              ;@line 802
						Cast ::temp275 ::temp275                                 ;@line 802
						JumpT ::temp275 _label76                                 ;@line 802
						CompareEQ ::temp276 CumID 5                              ;@line 802
						Cast ::temp275 ::temp276                                 ;@line 802
					_label76:
						Cast ::temp275 ::temp275                                 ;@line 802
						JumpT ::temp275 _label77                                 ;@line 802
						CompareEQ ::temp276 CumID 6                              ;@line 802
						Cast ::temp275 ::temp276                                 ;@line 802
					_label77:
						Cast ::temp275 ::temp275                                 ;@line 802
						JumpT ::temp275 _label78                                 ;@line 802
						CompareEQ ::temp276 CumID 7                              ;@line 802
						Cast ::temp275 ::temp276                                 ;@line 802
					_label78:
						CallMethod AddCum self ::NoneVar ActorRef ::temp273 ::temp274 ::temp275  ;@line 802
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
						CallMethod RemoveFromFaction ActorRef ::NoneVar ::ForbiddenFaction_var  ;@line 181
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
				.function BeginOverlay
					.userFlags 0	; Flags: 0x00000000
					.docString ""
					.return None
					.paramTable
						.param akTarget Actor
						.param aiType Int
					.endParamTable
					.localTable
						.local ::temp84 actorbase
						.local ::temp85 Int
						.local ::temp86 Bool
						.local ::temp87 String
						.local ::temp88 String
						.local ::temp89 form
						.local ::temp90 Float
						.local ::temp91 String[]
						.local isFemale Bool
						.local set String
						.local ::NoneVar None
						.local layer Int
						.local maxLayer Int
						.local texturePath String
						.local parts String[]
						.local i Int
						.local ::temp92 Bool
						.local ::temp93 Bool
						.local ::temp94 Bool
						.local part String
						.local slot Int
					.endLocalTable
					.code
						CallMethod GetLeveledActorBase akTarget ::temp84         ;@line 301
						CallMethod GetSex ::temp84 ::temp85                      ;@line 301
						Cast ::temp86 ::temp85                                   ;@line 301
						Assign isFemale ::temp86                                 ;@line 301
						PropGet ACTIVE_SET_PREFIX self ::temp87                  ;@line 302
						Cast ::temp88 aiType                                     ;@line 302
						StrCat ::temp88 ::temp87 ::temp88                        ;@line 302
						Cast ::temp89 akTarget                                   ;@line 302
						CallStatic storageutil GetStringValue ::temp87 ::temp89 ::temp88 ""  ;@line 302
						Assign set ::temp87                                      ;@line 302
						CompareEQ ::temp86 set ""                                ;@line 303
						JumpF ::temp86 _label79                                  ;@line 303
						CallStatic sslActorLibrary PickRandomFxSet ::temp88 aiType  ;@line 304
						Assign set ::temp88                                      ;@line 304
						PropGet ACTIVE_SET_PREFIX self ::temp87                  ;@line 305
						Cast ::temp88 aiType                                     ;@line 305
						StrCat ::temp88 ::temp87 ::temp88                        ;@line 305
						Cast ::temp89 akTarget                                   ;@line 305
						CallStatic storageutil SetStringValue ::temp87 ::temp89 ::temp88 set  ;@line 305
						Cast ::temp88 akTarget                                   ;@line 306
						StrCat ::temp87 ::temp88 ": Selecting cum fx set; Random "  ;@line 306
						Cast ::temp88 aiType                                     ;@line 306
						StrCat ::temp88 ::temp87 ::temp88                        ;@line 306
						StrCat ::temp87 ::temp88 " set "                         ;@line 306
						StrCat ::temp88 ::temp87 set                             ;@line 306
						StrCat ::temp87 ::temp88 " selected for "                ;@line 306
						CallMethod GetBaseObject akTarget ::temp89               ;@line 306
						CallMethod GetName ::temp89 ::temp88                     ;@line 306
						StrCat ::temp87 ::temp87 ::temp88                        ;@line 306
						CallMethod Log self ::NoneVar ::temp87 "NOTICE"          ;@line 306
						Jump _label80                                            ;@line 306
					_label79:
						Cast ::temp88 akTarget                                   ;@line 308
						StrCat ::temp87 ::temp88 ": Selecting cum fx set; Using "  ;@line 308
						Cast ::temp88 aiType                                     ;@line 308
						StrCat ::temp88 ::temp87 ::temp88                        ;@line 308
						StrCat ::temp87 ::temp88 " set "                         ;@line 308
						StrCat ::temp88 ::temp87 set                             ;@line 308
						StrCat ::temp87 ::temp88 " for "                         ;@line 308
						CallMethod GetBaseObject akTarget ::temp89               ;@line 308
						CallMethod GetName ::temp89 ::temp88                     ;@line 308
						StrCat ::temp87 ::temp87 ::temp88                        ;@line 308
						CallMethod Log self ::NoneVar ::temp87 "NOTICE"          ;@line 308
					_label80:
						PropGet ACTIVE_LAYER_PREFIX self ::temp88                ;@line 310
						Cast ::temp87 aiType                                     ;@line 310
						StrCat ::temp87 ::temp88 ::temp87                        ;@line 310
						Cast ::temp89 akTarget                                   ;@line 310
						CallStatic storageutil GetIntValue ::temp85 ::temp89 ::temp87 0  ;@line 310
						IAdd ::temp85 ::temp85 1                                 ;@line 310
						Assign layer ::temp85                                    ;@line 310
						CallStatic sslActorLibrary GetFxSetCount ::temp85 aiType set  ;@line 311
						Assign maxLayer ::temp85                                 ;@line 311
						CompareGT ::temp86 layer maxLayer                        ;@line 312
						JumpF ::temp86 _label81                                  ;@line 312
						Assign layer maxLayer                                    ;@line 313
						Jump _label81                                            ;@line 313
					_label81:
						PropGet ACTIVE_LAYER_PREFIX self ::temp88                ;@line 315
						Cast ::temp87 aiType                                     ;@line 315
						StrCat ::temp87 ::temp88 ::temp87                        ;@line 315
						Cast ::temp89 akTarget                                   ;@line 315
						CallStatic storageutil SetIntValue ::temp85 ::temp89 ::temp87 layer  ;@line 315
						CompareEQ ::temp86 ::temp85 maxLayer                     ;@line 315
						JumpF ::temp86 _label82                                  ;@line 315
						Return None                                              ;@line 316
						Jump _label82                                            ;@line 316
					_label82:
						CallMethod TypeToString self ::temp88 aiType             ;@line 318
						StrCat ::temp87 "SexLab/CumFx/" ::temp88                 ;@line 318
						StrCat ::temp88 ::temp87 "/"                             ;@line 318
						StrCat ::temp87 ::temp88 set                             ;@line 318
						StrCat ::temp88 ::temp87 "/"                             ;@line 318
						Cast ::temp87 layer                                      ;@line 318
						StrCat ::temp87 ::temp88 ::temp87                        ;@line 318
						StrCat ::temp88 ::temp87 ".dds"                          ;@line 318
						Assign texturePath ::temp88                              ;@line 318
						CallStatic SLPPlusUBECum ResolveTexturePath texturePath akTarget aiType set layer texturePath  ;@line 318 ; SLP+ UBE Cum Overlay Patch
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp87        ;@line 324
						Cast ::temp88 aiType                                     ;@line 324
						StrCat ::temp88 ::temp87 ::temp88                        ;@line 324
						Cast ::temp89 akTarget                                   ;@line 324
						CallStatic storageutil SetStringValue ::temp87 ::temp89 ::temp88 texturePath  ;@line 324
						PropGet LAST_APPLIED_TIME_PREFIX self ::temp88           ;@line 325
						Cast ::temp87 aiType                                     ;@line 325
						StrCat ::temp87 ::temp88 ::temp87                        ;@line 325
						CallStatic sexlabutil GetCurrentGameRealTime ::temp90    ;@line 325
						Cast ::temp89 akTarget                                   ;@line 325
						CallStatic storageutil SetFloatValue ::temp90 ::temp89 ::temp87 ::temp90  ;@line 325
						PropGet APPLIED_TEXTURE_LIST self ::temp88               ;@line 326
						Cast ::temp89 akTarget                                   ;@line 326
						CallStatic storageutil IntListAdd ::temp85 ::temp89 ::temp88 aiType False  ;@line 326
						CallMethod GetAreas self ::temp91                        ;@line 327
						Assign parts ::temp91                                    ;@line 327
						Assign i 0                                               ;@line 328
					_label89:
						ArrayLength ::temp85 parts                               ;@line 329
						CompareLT ::temp86 i ::temp85                            ;@line 329
						JumpF ::temp86 _label83                                  ;@line 329
						ArrayGetElement ::temp87 parts i                         ;@line 330
						Assign part ::temp87                                     ;@line 330
						CompareEQ ::temp92 part "Face"                           ;@line 332
						Not ::temp92 ::temp92                                    ;@line 332
						Cast ::temp94 ::temp92                                   ;@line 332
						JumpT ::temp94 _label84                                  ;@line 332
						CompareEQ ::temp93 part "Face"                           ;@line 332
						Cast ::temp93 ::temp93                                   ;@line 332
						JumpF ::temp93 _label85                                  ;@line 332
						PropGet FX_ORAL self ::temp85                            ;@line 332
						CompareEQ ::temp94 aiType ::temp85                       ;@line 332
						Cast ::temp93 ::temp94                                   ;@line 332
					_label85:
						Cast ::temp94 ::temp93                                   ;@line 332
					_label84:
						JumpF ::temp94 _label86                                  ;@line 332
						CallMethod GetEmptySlot self ::temp85 akTarget isFemale part aiType  ;@line 333
						Assign slot ::temp85                                     ;@line 333
						CompareEQ ::temp92 slot -1                               ;@line 334
						Not ::temp92 ::temp92                                    ;@line 334
						JumpF ::temp92 _label87                                  ;@line 334
						Cast ::temp88 slot                                       ;@line 335
						CallMethod ApplyOverlay self ::NoneVar akTarget isFemale part ::temp88 texturePath set  ;@line 335
						Jump _label88                                            ;@line 335
					_label87:
						Cast ::temp87 akTarget                                   ;@line 337
						StrCat ::temp88 ::temp87 ": Error applying overlay to area: "  ;@line 337
						StrCat ::temp87 ::temp88 part                            ;@line 337
						CallMethod Log self ::NoneVar ::temp87 "NOTICE"          ;@line 337
					_label88:
						Jump _label86                                            ;@line 337
					_label86:
						IAdd ::temp85 i 1                                        ;@line 340
						Assign i ::temp85                                        ;@line 340
						Jump _label89                                            ;@line 340
					_label83:
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
						.local ::temp6 Int
						.local ::temp7 Bool
						.local ::temp8 String
						.local ::temp9 form
						.local ::temp10 actorbase
						.local ::temp11 String
						.local ::NoneVar None
						.local removed Int
						.local isFemale Bool
						.local LastEffect String
						.local ::temp12 Bool
						.local ::temp13 Bool
						.local handle Int
					.endLocalTable
					.code
						PropGet FX_ALL self ::temp6                              ;@line 54
						CompareEQ ::temp7 aiType ::temp6                         ;@line 54
						JumpF ::temp7 _label90                                   ;@line 54
						PropGet FX_VAGINAL self ::temp6                          ;@line 55
						CallMethod RemoveCumFx self ::NoneVar akTarget ::temp6   ;@line 55
						PropGet FX_ANAL self ::temp6                             ;@line 56
						CallMethod RemoveCumFx self ::NoneVar akTarget ::temp6   ;@line 56
						PropGet FX_ORAL self ::temp6                             ;@line 57
						CallMethod RemoveCumFx self ::NoneVar akTarget ::temp6   ;@line 57
						Return None                                              ;@line 58
						Jump _label90                                            ;@line 58
					_label90:
						PropGet APPLIED_TEXTURE_LIST self ::temp8                ;@line 60
						Cast ::temp9 akTarget                                    ;@line 60
						CallStatic storageutil IntListRemove ::temp6 ::temp9 ::temp8 aiType False  ;@line 60
						Assign removed ::temp6                                   ;@line 60
						CompareEQ ::temp7 removed 0                              ;@line 61
						JumpF ::temp7 _label91                                   ;@line 61
						Return None                                              ;@line 62
						Jump _label91                                            ;@line 62
					_label91:
						CallMethod GetLeveledActorBase akTarget ::temp10         ;@line 64
						CallMethod GetSex ::temp10 ::temp6                       ;@line 64
						CompareEQ ::temp7 ::temp6 1                              ;@line 64
						Assign isFemale ::temp7                                  ;@line 64
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp8         ;@line 65
						Cast ::temp11 aiType                                     ;@line 65
						StrCat ::temp11 ::temp8 ::temp11                         ;@line 65
						Cast ::temp9 akTarget                                    ;@line 65
						CallStatic storageutil GetStringValue ::temp8 ::temp9 ::temp11 ""  ;@line 65
						Assign LastEffect ::temp8                                ;@line 65
						CallMethod RemovePartOverlay self ::NoneVar akTarget isFemale LastEffect  ;@line 66
						PropGet FX_VAGINAL self ::temp6                          ;@line 67
						CompareEQ ::temp7 aiType ::temp6                         ;@line 67
						JumpF ::temp7 _label92                                   ;@line 67
						CallMethod RemoveSpell akTarget ::temp12 ::CumVaginalSpell_var  ;@line 68
						Jump _label93                                            ;@line 68
					_label92:
						PropGet FX_ORAL self ::temp6                             ;@line 69
						CompareEQ ::temp12 aiType ::temp6                        ;@line 69
						JumpF ::temp12 _label94                                  ;@line 69
						CallMethod RemoveSpell akTarget ::temp13 ::CumOralSpell_var  ;@line 70
						Jump _label93                                            ;@line 70
					_label94:
						PropGet FX_ANAL self ::temp6                             ;@line 71
						CompareEQ ::temp13 aiType ::temp6                        ;@line 71
						JumpF ::temp13 _label93                                  ;@line 71
						CallMethod RemoveSpell akTarget ::temp12 ::CumAnalSpell_var  ;@line 72
						Jump _label93                                            ;@line 72
					_label93:
						PropGet ACTIVE_SET_PREFIX self ::temp11                  ;@line 74
						Cast ::temp8 aiType                                      ;@line 74
						StrCat ::temp8 ::temp11 ::temp8                          ;@line 74
						Cast ::temp9 akTarget                                    ;@line 74
						CallStatic storageutil UnsetIntValue ::temp12 ::temp9 ::temp8  ;@line 74
						PropGet ACTIVE_LAYER_PREFIX self ::temp11                ;@line 75
						Cast ::temp8 aiType                                      ;@line 75
						StrCat ::temp8 ::temp11 ::temp8                          ;@line 75
						Cast ::temp9 akTarget                                    ;@line 75
						CallStatic storageutil UnsetIntValue ::temp13 ::temp9 ::temp8  ;@line 75
						PropGet LAST_APPLIED_TIME_PREFIX self ::temp11           ;@line 76
						Cast ::temp8 aiType                                      ;@line 76
						StrCat ::temp8 ::temp11 ::temp8                          ;@line 76
						Cast ::temp9 akTarget                                    ;@line 76
						CallStatic storageutil UnsetFloatValue ::temp7 ::temp9 ::temp8  ;@line 76
						PropGet LAST_APPLIED_TEXTURE_PREFIX self ::temp11        ;@line 77
						Cast ::temp8 aiType                                      ;@line 77
						StrCat ::temp8 ::temp11 ::temp8                          ;@line 77
						Cast ::temp9 akTarget                                    ;@line 77
						CallStatic storageutil UnsetStringValue ::temp12 ::temp9 ::temp8  ;@line 77
						PropGet APPLIED_TEXTURE_LIST self ::temp11               ;@line 78
						Cast ::temp9 akTarget                                    ;@line 78
						CallStatic storageutil IntListCount ::temp6 ::temp9 ::temp11  ;@line 78
						CompareEQ ::temp13 ::temp6 0                             ;@line 78
						JumpF ::temp13 _label95                                  ;@line 78
						CallMethod RemoveSpell akTarget ::temp7 ::abCumFX_var    ;@line 79
						Jump _label95                                            ;@line 79
					_label95:
						CallStatic modevent Create ::temp6 "SexLabClearCum"      ;@line 81
						Assign handle ::temp6                                    ;@line 81
						Cast ::temp9 akTarget                                    ;@line 82
						CallStatic modevent PushForm ::NoneVar handle ::temp9    ;@line 82
						CallStatic modevent PushInt ::NoneVar handle aiType      ;@line 83
						CallStatic modevent Send ::temp12 handle                 ;@line 84
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
						CallStatic sslActorLibrary EraseStrip ::NoneVar ItemRef  ;@line 109
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
						.local ::temp244 Int[]
						.local ::temp245 Int
						.local ::temp246 Bool
						.local Genders Int[]
						.local i Int
						.local ::temp247 Actor
						.local ::temp248 Int
						.local g Int
					.endLocalTable
					.code
						ArrayCreate ::temp244 4                                  ;@line 748
						Assign Genders ::temp244                                 ;@line 748
						ArrayLength ::temp245 Positions                          ;@line 749
						Assign i ::temp245                                       ;@line 749
					_label97:
						CompareGT ::temp246 i 0                                  ;@line 750
						JumpF ::temp246 _label96                                 ;@line 750
						ISubtract ::temp245 i 1                                  ;@line 751
						Assign i ::temp245                                       ;@line 751
						ArrayGetElement ::temp247 Positions i                    ;@line 752
						CallMethod GetGender self ::temp245 ::temp247            ;@line 752
						Assign g ::temp245                                       ;@line 752
						ArrayGetElement ::temp248 Genders g                      ;@line 753
						IAdd ::temp248 ::temp248 1                               ;@line 753
						Assign ::temp245 ::temp248                               ;@line 753
						ArraySetElement Genders g ::temp245                      ;@line 753
						Jump _label97                                            ;@line 753
					_label96:
						Return Genders                                           ;@line 755
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
						.local ::temp249 Int[]
						.local ::temp250 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp249 Positions          ;@line 759
						ArrayGetElement ::temp250 ::temp249 0                    ;@line 759
						Return ::temp250                                         ;@line 759
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
						.local ::temp14 String
						.local ::temp15 String
						.local ::temp16 form
						.local ::temp17 Int
					.endLocalTable
					.code
						PropGet ACTIVE_LAYER_PREFIX self ::temp14                ;@line 88
						Cast ::temp15 aiType                                     ;@line 88
						StrCat ::temp15 ::temp14 ::temp15                        ;@line 88
						Cast ::temp16 akActor                                    ;@line 88
						CallStatic storageutil CountObjIntValuePrefix ::temp17 ::temp16 ::temp15  ;@line 88
						Return ::temp17                                          ;@line 88
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
						.local ::temp0 form
						.local ::temp1 Bool
						.local ::temp3 Int
						.local ::temp2 Bool
						.local ::NoneVar None
						.local ::temp4 Bool
						.local ::temp5 Bool
						.local handle Int
					.endLocalTable
					.code
						Cast ::temp0 ::abCumFX_var                               ;@line 27
						CallMethod HasSpell akActor ::temp1 ::temp0              ;@line 27
						Not ::temp1 ::temp1                                      ;@line 27
						JumpF ::temp1 _label98                                   ;@line 27
						CallMethod AddSpell akActor ::temp2 ::abCumFX_var True   ;@line 28
						Jump _label98                                            ;@line 28
					_label98:
						PropGet FX_ALL self ::temp3                              ;@line 30
						CompareEQ ::temp2 aiType ::temp3                         ;@line 30
						JumpF ::temp2 _label99                                   ;@line 30
						PropGet FX_VAGINAL self ::temp3                          ;@line 31
						CallMethod BeginOverlay self ::NoneVar akActor ::temp3   ;@line 31
						PropGet FX_ANAL self ::temp3                             ;@line 32
						CallMethod BeginOverlay self ::NoneVar akActor ::temp3   ;@line 32
						PropGet FX_ORAL self ::temp3                             ;@line 33
						CallMethod BeginOverlay self ::NoneVar akActor ::temp3   ;@line 33
						CallMethod AddSpell akActor ::temp1 ::CumVaginalSpell_var True  ;@line 34
						CallMethod AddSpell akActor ::temp1 ::CumOralSpell_var True  ;@line 35
						CallMethod AddSpell akActor ::temp1 ::CumAnalSpell_var True  ;@line 36
						Jump _label100                                           ;@line 36
					_label99:
						PropGet FX_VAGINAL self ::temp3                          ;@line 38
						CompareEQ ::temp1 aiType ::temp3                         ;@line 38
						JumpF ::temp1 _label101                                  ;@line 38
						CallMethod AddSpell akActor ::temp4 ::CumVaginalSpell_var True  ;@line 39
						Jump _label102                                           ;@line 39
					_label101:
						PropGet FX_ORAL self ::temp3                             ;@line 40
						CompareEQ ::temp4 aiType ::temp3                         ;@line 40
						JumpF ::temp4 _label103                                  ;@line 40
						CallMethod AddSpell akActor ::temp5 ::CumOralSpell_var True  ;@line 41
						Jump _label102                                           ;@line 41
					_label103:
						PropGet FX_ANAL self ::temp3                             ;@line 42
						CompareEQ ::temp5 aiType ::temp3                         ;@line 42
						JumpF ::temp5 _label102                                  ;@line 42
						CallMethod AddSpell akActor ::temp4 ::CumAnalSpell_var True  ;@line 43
						Jump _label102                                           ;@line 43
					_label102:
						CallMethod BeginOverlay self ::NoneVar akActor aiType    ;@line 45
					_label100:
						CallStatic modevent Create ::temp3 "SexLabApplyCum"      ;@line 47
						Assign handle ::temp3                                    ;@line 47
						Cast ::temp0 akActor                                     ;@line 48
						CallStatic modevent PushForm ::NoneVar handle ::temp0    ;@line 48
						CallStatic modevent PushInt ::NoneVar handle aiType      ;@line 49
						CallStatic modevent Send ::temp4 handle                  ;@line 50
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
						.local ::temp261 String
					.endLocalTable
					.code
						CallStatic sexlabutil GetGenderTag ::temp261 Females Males Creatures  ;@line 780
						Return ::temp261                                         ;@line 780
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
						.local ::temp34 form
						.local ::temp35 Bool
						.local ItemRef form
						.local ::NoneVar None
					.endLocalTable
					.code
						CallMethod GetWornForm ActorRef ::temp34 SlotMask        ;@line 136
						Assign ItemRef ::temp34                                  ;@line 136
						Cast ::temp35 ItemRef                                    ;@line 137
						JumpF ::temp35 _label104                                 ;@line 137
						CallMethod IsStrippable self ::temp35 ItemRef            ;@line 137
						Cast ::temp35 ::temp35                                   ;@line 137
					_label104:
						JumpF ::temp35 _label105                                 ;@line 137
						CallMethod UnequipItemEX ActorRef ::NoneVar ItemRef 0 False  ;@line 138
						Return ItemRef                                           ;@line 139
						Jump _label105                                           ;@line 139
					_label105:
						Cast ::temp34 None                                       ;@line 141
						Return ::temp34                                          ;@line 141
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
						.local ::temp264 Bool
						.local ::temp265 actorbase
						.local ::temp266 race
						.local ::temp267 String
						.local ::temp268 String
						.local ::temp269 Int
						.local ::temp270 Bool
						.local ::temp271 Float
						.local ::temp272 Bool
						.local ActorRace race
						.local RaceName String
					.endLocalTable
					.code
						Not ::temp264 ActorRef                                   ;@line 793
						JumpF ::temp264 _label106                                ;@line 793
						Return False                                             ;@line 794
						Jump _label106                                           ;@line 794
					_label106:
						CallMethod GetLeveledActorBase ActorRef ::temp265        ;@line 796
						CallMethod GetRace ::temp265 ::temp266                   ;@line 796
						Assign ActorRace ::temp266                               ;@line 796
						CallMethod GetName ActorRace ::temp267                   ;@line 797
						CallStatic miscutil GetRaceEditorID ::temp268 ActorRace  ;@line 797
						StrCat ::temp267 ::temp267 ::temp268                     ;@line 797
						Assign RaceName ::temp267                                ;@line 797
						CallMethod IsRaceFlagSet ActorRace ::temp264 4           ;@line 798
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label107                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Moli" 0   ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label107:
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label108                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Child" 0  ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label108:
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label109                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Little" 0  ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label109:
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label110                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "117" 0    ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label110:
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label111                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Enfant" 0  ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label111:
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpT ::temp264 _label112                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Teen" 0   ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label112:
						Cast ::temp272 ::temp264                                 ;@line 798
						JumpT ::temp272 _label113                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Elin" 0   ;@line 798
						CompareEQ ::temp270 ::temp269 -1                         ;@line 798
						Not ::temp270 ::temp270                                  ;@line 798
						Cast ::temp270 ::temp270                                 ;@line 798
						JumpF ::temp270 _label114                                ;@line 798
						CallMethod GetScale ActorRef ::temp271                   ;@line 798
						CompareLT ::temp272 ::temp271 0.920000                   ;@line 798
						Cast ::temp270 ::temp272                                 ;@line 798
					_label114:
						Cast ::temp272 ::temp270                                 ;@line 798
					_label113:
						Cast ::temp270 ::temp272                                 ;@line 798
						JumpT ::temp270 _label115                                ;@line 798
						CallStatic stringutil Find ::temp269 RaceName "Monli" 0  ;@line 798
						CompareEQ ::temp264 ::temp269 -1                         ;@line 798
						Not ::temp264 ::temp264                                  ;@line 798
						Cast ::temp264 ::temp264                                 ;@line 798
						JumpF ::temp264 _label116                                ;@line 798
						CallMethod GetScale ActorRef ::temp271                   ;@line 798
						CompareLT ::temp270 ::temp271 0.920000                   ;@line 798
						Cast ::temp264 ::temp270                                 ;@line 798
					_label116:
						Cast ::temp270 ::temp264                                 ;@line 798
					_label115:
						Not ::temp272 ::temp270                                  ;@line 798
						Return ::temp272                                         ;@line 798
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
						.local ::temp239 Int
						.local ::temp240 Int[]
						.local ::temp241 Bool
						.local i Int
						.local Genders Int[]
						.local ::temp242 Actor
						.local ::temp243 Int
					.endLocalTable
					.code
						ArrayLength ::temp239 Positions                          ;@line 738
						Assign i ::temp239                                       ;@line 738
						CallStatic utility CreateIntArray ::temp240 i 0          ;@line 739
						Assign Genders ::temp240                                 ;@line 739
					_label118:
						CompareGT ::temp241 i 0                                  ;@line 740
						JumpF ::temp241 _label117                                ;@line 740
						ISubtract ::temp239 i 1                                  ;@line 741
						Assign i ::temp239                                       ;@line 741
						ArrayGetElement ::temp242 Positions i                    ;@line 742
						CallMethod GetGender self ::temp243 ::temp242            ;@line 742
						Assign ::temp239 ::temp243                               ;@line 742
						ArraySetElement Genders i ::temp239                      ;@line 742
						Jump _label118                                           ;@line 742
					_label117:
						Return Genders                                           ;@line 744
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
						.local ::temp36 Int
						.local ::temp37 Bool
						.local i Int
						.local ::temp38 form
						.local ::temp39 form
						.local ::NoneVar None
						.local hand Int
						.local ::temp40 Bool
					.endLocalTable
					.code
						Assign i 0                                               ;@line 145
					_label122:
						ArrayLength ::temp36 Stripped                            ;@line 146
						CompareLT ::temp37 i ::temp36                            ;@line 146
						JumpF ::temp37 _label119                                 ;@line 146
						ArrayGetElement ::temp38 Stripped i                      ;@line 147
						JumpF ::temp38 _label120                                 ;@line 147
						ArrayGetElement ::temp39 Stripped i                      ;@line 148
						CallStatic storageutil GetIntValue ::temp36 ::temp39 "hand" 0  ;@line 148
						Assign hand ::temp36                                     ;@line 148
						JumpF hand _label121                                     ;@line 149
						ArrayGetElement ::temp39 Stripped i                      ;@line 150
						CallStatic storageutil UnsetIntValue ::temp40 ::temp39 "hand"  ;@line 150
						Jump _label121                                           ;@line 150
					_label121:
						ArrayGetElement ::temp39 Stripped i                      ;@line 152
						CallMethod EquipItemEx ActorRef ::NoneVar ::temp39 hand False True  ;@line 152
						Jump _label120                                           ;@line 152
					_label120:
						IAdd ::temp36 i 1                                        ;@line 154
						Assign i ::temp36                                        ;@line 154
						Jump _label122                                           ;@line 154
					_label119:
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
						.local ::temp20 Int
						.local ::temp21 Bool
					.endLocalTable
					.code
						CallStatic sslActorLibrary CheckStrip ::temp20 ItemRef   ;@line 119
						CompareEQ ::temp21 ::temp20 1                            ;@line 119
						Return ::temp21                                          ;@line 119
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
						.local ::temp258 Int[]
						.local ::temp259 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp258 Positions          ;@line 772
						ArrayGetElement ::temp259 ::temp258 3                    ;@line 772
						Return ::temp259                                         ;@line 772
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
						.local ::temp256 Int[]
						.local ::temp257 Int
					.endLocalTable
					.code
						CallMethod GenderCount self ::temp256 Positions          ;@line 769
						ArrayGetElement ::temp257 ::temp256 2                    ;@line 769
						Return ::temp257                                         ;@line 769
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
						.local ::temp22 Bool
					.endLocalTable
					.code
						CallMethod IsNoStrip self ::temp22 ItemRef               ;@line 122
						Not ::temp22 ::temp22                                    ;@line 122
						Return ::temp22                                          ;@line 122
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
						.local ::temp260 String
					.endLocalTable
					.code
						CallStatic sexlabutil MakeGenderTag ::temp260 Positions  ;@line 776
						Return ::temp260                                         ;@line 776
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
						.local ::temp45 Int
						.local ::temp46 Bool
					.endLocalTable
					.code
						CallMethod ValidateActor self ::temp45 ActorRef          ;@line 174
						CompareGT ::temp46 ::temp45 0                            ;@line 174
						Return ::temp46                                          ;@line 174
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
						.local ::temp23 Bool
						.local ::temp24 Int
						.local ::temp25 Bool
						.local ::temp26 Int[]
						.local ::temp27 Int
						.local ::temp28 Form[]
						.local strips Int[]
					.endLocalTable
					.code
						CompareEQ ::temp23 ActorRef VictimRef                    ;@line 126
						Cast ::temp23 ::temp23                                   ;@line 126
						JumpT ::temp23 _label123                                 ;@line 126
						CallStatic sexlabregistry GetSex ::temp24 ActorRef False  ;@line 126
						CompareEQ ::temp25 ::temp24 1                            ;@line 126
						Cast ::temp23 ::temp25                                   ;@line 126
					_label123:
						Cast ::temp25 VictimRef                                  ;@line 126
						CallStatic sslsystemconfig GetStripForms ::temp26 ::temp23 ::temp25  ;@line 126
						Assign strips ::temp26                                   ;@line 126
						ArrayGetElement ::temp24 strips 0                        ;@line 127
						ArrayGetElement ::temp27 strips 1                        ;@line 127
						Cast ::temp25 ::temp27                                   ;@line 127
						CallMethod StripActorImpl self ::temp28 ActorRef ::temp24 ::temp25 DoAnimate  ;@line 127
						Return ::temp28                                          ;@line 127
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
						.local ::temp58 Int
						.local ::NoneVar None
					.endLocalTable
					.code
						CallStatic sexlabregistry GetSex ::temp58 akActor True   ;@line 222
						CallMethod TreatAsSex self ::NoneVar akActor ::temp58    ;@line 222
					.endCode
				.endFunction
			.endState
		.endStateTable
	.endObject
.endObjectTable
