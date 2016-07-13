private
refresh
	
	| description packageValue |
	description := self object printStringLimitedTo: 50.
	self title: description.
	self flag: 'I am disgusted with myself that the following code exists - SPD'.
	slotMorph slotValue: self object class.
	packageValue := self object isClass
		ifTrue: [ self object package ]
		ifFalse: [ self object class package ].
	packageSlotMorph slotValue: packageValue