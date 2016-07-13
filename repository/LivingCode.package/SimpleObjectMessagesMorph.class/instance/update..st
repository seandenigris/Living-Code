as yet unclassified
update: aSystemEvent

	aSystemEvent itemClass = self object class
		ifTrue: [ self addMessageSendMorphOn: aSystemEvent itemSelector ].