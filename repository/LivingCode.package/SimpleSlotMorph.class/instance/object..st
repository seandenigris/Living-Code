private
object: anObject 

	self flag: #dynamicSlots.
	anObject isClass ifTrue: [ SystemAnnouncer uniqueInstance weak
		when: ClassRecategorized send: #classRecategorized: to: self ].
	object := anObject.