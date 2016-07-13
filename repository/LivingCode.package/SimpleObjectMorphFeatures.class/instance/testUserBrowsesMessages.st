as yet unclassified
testUserBrowsesMessages

	| objectMorph existingMessageMorphs messageMorphs newMessageMorphs |
	existingMessageMorphs := World submorphs select: [ :m | m isKindOf: SimpleObjectMessagesMorph ].
	objectMorph := SimpleObjectMorph on: Object.
	objectMorph openInWorld.
	objectMorph takeKeyboardFocus.

	self simulateKeyStroke: $m.

	messageMorphs := World submorphs select: [ :m | m isKindOf: SimpleObjectMessagesMorph ].
	newMessageMorphs := messageMorphs reject: [ :m | existingMessageMorphs includes: m ].
	newMessageMorphs isEmpty should beFalse.
	objectMorph delete.
	newMessageMorphs first delete.