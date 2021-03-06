*LivingCode
openMenuIn: aBlock 
	| alternatives labels actions lines caption choice name |
	name := node name.
	alternatives := self possibleVariablesFor: name.
	labels := OrderedCollection new.
	actions := OrderedCollection new.
	lines := OrderedCollection new.
	name first isLowercase 
		ifTrue: 
			[labels add: 'Declare new temporary variable'.
			actions add: [self declareTempAndPaste: name].
			labels add: 'Declare new instance variable'.
			actions add: [self declareInstVar: name].
			labels add: 'Declare and initialize new instance variable'.
			actions add: [self declareAndInitializeInstVar: name]]
		ifFalse: 
			[labels add: 'Define new class'.
			actions add: [self defineClass: name].
			labels add: 'Declare new global'.
			actions add: [self declareGlobal].
			labels add: 'Declare new class variable'.
			actions add: [self declareClassVar]].
	lines add: labels size.
	alternatives do: 
		[:each | 
		labels add: each.
		actions add: [self substituteVariableNamed: each]].
	lines add: labels size.
	labels add: 'Cancel'.
	caption := 'Unknown variable: ' , name , ' please correct, or cancel:'.
	choice := aBlock value: labels value: lines value: caption.
	choice ifNotNil: [self resume: (actions at: choice ifAbsent: [compilationContext failBlock value]) value]