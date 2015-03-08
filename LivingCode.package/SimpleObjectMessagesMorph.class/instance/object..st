as yet unclassified
object: anObject

	|  protocols |
	object := anObject.
	self flag: 'fix for system announcements'.
	"SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method change: #Added using: #update:."
	protocols := self object class protocols.
	protocols sorted do: [ :pc | | protocolMorph |
		protocolMorph := SimpleProtocolMorph new
	object: self object;
	title: pc.
		self addMorphBack: protocolMorph ].