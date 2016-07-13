*LivingCode
declareAndInitializeInstVar: name

	| return |
	return := self declareInstVar: name.
	InstVarInitializer initialize: name of: self methodClass.
	^ return.