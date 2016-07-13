event handling
startDrag: anEvent

	self flag: 'why wasn''t the default behavior good enough?'.
	anEvent hand grabMorph: self.