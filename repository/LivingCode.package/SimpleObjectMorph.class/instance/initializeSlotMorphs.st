private - initialization
initializeSlotMorphs

"	Halt now.
	self lcSlots do: []."

	slotMorph := self newMorphForSlotNamed: 'class'.
	slotMorph beConstant.
	packageSlotMorph := self newMorphForSlotNamed: 'package'.
	packageSlotMorph beAssignable.
	self
		addMorphBack: slotMorph;
		addMorphBack: packageSlotMorph.