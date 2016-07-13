as yet unclassified
show

	| morph |
	morph := SimpleObjectMorph on: slotValue.
	morph topLeft: self bottomRight + (50@0).
	self selfWorld
		addMorph: morph;
		addMorph: (DirectionalConnector connect: self button to: morph).
	self selfWorld centerMorph: morph