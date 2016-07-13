private
object: anObject 

	self flag: #dynamicSlots.
	anObject isClass ifTrue: [ SystemAnnouncer uniqueInstance weak
		on: ClassRecategorized send: #classRecategorized: to: self ].
	object := anObject.