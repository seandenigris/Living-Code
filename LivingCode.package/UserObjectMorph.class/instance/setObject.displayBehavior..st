as yet unclassified
setObject: anObject displayBehavior: aSelectorOrBlock

	| description |
	SimpleToolMorph style: self.
	self
		layoutPolicy: TableLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	object := anObject.
	description := aSelectorOrBlock value: object.
	self addMorphBack: description asMorph.
	controlsMorph := self newControls.
	self addMorphBack: controlsMorph.
	^ self.