as yet unclassified
testUserRemovesAllInstancesOfMorphClassFromWorld

	| deletablesInWorld originalNumberOfMorphsInWorld |
	originalNumberOfMorphsInWorld := World submorphs size.
	10 timesRepeat: [ DeletableMorph new openInWorld ].
	
	[ DeletableMorph removeAllFromWorld ] valueSupplyingAnswer: #('Remove all DeletableMorphs from the world?' true).
	
	deletablesInWorld := World submorphsSatisfying: [ :m | m isKindOf: DeletableMorph ].
	deletablesInWorld isEmpty should beTrue.
	World submorphs size should = originalNumberOfMorphsInWorld.
	
	deletablesInWorld do: [ :m | m delete ].