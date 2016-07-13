private
addSlotMorphs

	object lcSlots do: [ :slot | | slotMorph |
	slotMorph := slot asMorph
		beTransparent;
		hResizing: #spaceFill;
		yourself.
	self addMorphBack: slotMorph ].