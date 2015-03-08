world scroll handlers
mouseMove: anEvent

	| delta scaleFactor |
	delta := anEvent position - anEvent startPoint.
	scaleFactor := self selfWorld width / self width.
	self scrollSelfWorldBy: delta * scaleFactor