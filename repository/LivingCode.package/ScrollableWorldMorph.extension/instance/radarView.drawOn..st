*LivingCode-Core
radarView: radar drawOn: aCanvas

	| terrainRect transform scale viewRect offset |
	terrainRect := self radarCoverageArea.
	terrainRect isZero ifTrue: [ ^ self ].	
	viewRect := terrainRect scaledAndCenteredIn: radar innerBounds.
	scale := viewRect width / terrainRect width.
	offset := terrainRect topLeft.
	transform := MorphicTransform offset: offset * scale angle: 0 scale: scale. 
	aCanvas transformBy: transform clippingTo: aCanvas clipRect during: [ :c |
		| viewportBorderWidth |
		c fillRectangle: radar innerBounds fillStyle: self fillStyle borderStyle: self borderStyle.
		submorphs reverseDo: [ :m | m drawRadarViewOn: c ].
		viewportBorderWidth := scale < 1.0 ifTrue: [ 1 / scale ] ifFalse: [ 1 ].
		c fillRectangle: self bounds fillStyle: Color transparent borderStyle: (BorderStyle color: Color blue width: viewportBorderWidth ) ].