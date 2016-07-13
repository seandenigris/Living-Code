as yet unclassified
fillStyleFor: aMorph

	| fill |
	fill := GradientFillStyle ramp: {
		0.0->aMorph color whiter whiter. 0.2->aMorph color lighter.
		0.8->aMorph color. 1.0->aMorph color lighter }.
	fill origin: aMorph topLeft ;
		direction: 0 @ aMorph bounds extent y ;
		normal: aMorph bounds extent x @ 0 ;
		radial: false.
	^ fill.