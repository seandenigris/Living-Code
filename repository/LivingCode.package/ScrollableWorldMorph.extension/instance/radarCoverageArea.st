*LivingCode-Core
radarCoverageArea
	"Adapted from Morph>>#submorphBounds"
	
	| aBox visibleSubmorphs |
	visibleSubmorphs := submorphs select: [ :m | m visible and: [ (m isKindOf: RadarMorph) not ] ].
	visibleSubmorphs ifEmpty: [ ^ Rectangle origin: 0@0 corner: 0@0 ].
	aBox := visibleSubmorphs first fullBounds.
	visibleSubmorphs allButFirst do: [ :m | aBox := aBox quickMerge: m fullBounds ].
	^ aBox
