as yet unclassified
testUserBrowsesClass

	| browser |
	browser := SimpleObjectBrowser new openInWorld.

	self simulateKeyStrokes: 'Object'.
	self simulateKeyStroke: $s command.
	(ActiveHand submorphs anySatisfy: [ :m | m isKindOf: SimpleObjectMorph ]) should beTrue.

	browser delete.
	(ActiveHand submorphs select: [ :m | m isKindOf: SimpleObjectMorph ]) do: [ :e | e delete ].
	