private
refresh
	
	| description |
	description := self object printStringLimitedTo: 50.
	self title: description.
	slotMorph
		object: self object;
		slotValue: self object class.
	self object isClass
		ifTrue: [ 
			packageSlotMorph
				object: self object;
				slotValue: self object package ]
		ifFalse: [ 
			packageSlotMorph
				object: self object;
				slotValue: self object class package ].