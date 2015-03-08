updating
update: aSystemEvent

	aSystemEvent itemClass = self object class ifFalse: [ ^ self ].
	aSystemEvent itemSelector = self selector ifTrue: [ self delete ].