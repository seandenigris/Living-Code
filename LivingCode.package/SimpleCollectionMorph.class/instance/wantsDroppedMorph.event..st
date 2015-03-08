as yet unclassified
wantsDroppedMorph: aMorph event: anEvent

	(aMorph isKindOf: ConnectorArrowhead) ifTrue: [ aMorph pointTo: self ].
	"From a Morphic perspective, I always reject the drop because we do not want the connector to become my submorph"
	^ false.