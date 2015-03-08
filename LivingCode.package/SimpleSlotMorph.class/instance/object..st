private
object: anObject 

	anObject isClass ifTrue: [ SystemAnnouncer uniqueInstance weak
		on: ClassRecategorized send: #classRecategorized: to: self ].
	object := anObject.