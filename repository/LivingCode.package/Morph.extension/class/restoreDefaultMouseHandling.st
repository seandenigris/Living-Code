*LivingCode
restoreDefaultMouseHandling

	self compile: 'mouseDown: anEvent

	anEvent hand waitForClicksOrDrag: self event: anEvent.'.
	
	self compile: 'startDrag: anEvent

	anEvent hand grabMorph: self.'