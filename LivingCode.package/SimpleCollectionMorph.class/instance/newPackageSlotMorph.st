private - initialization
newPackageSlotMorph
		
	| result |
	result := SimpleSlotMorph slot: 'package' in: self object equals: nil.
	^ result
		beTransparent;
		hResizing: #spaceFill;
		yourself.