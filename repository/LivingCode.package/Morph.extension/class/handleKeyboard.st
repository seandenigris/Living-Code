*LivingCode
handleKeyboard

	self compile: 'handlesMouseOver: anEvent

	^ true.'.
	
	self compile: 'mouseEnter: anEvent

	anEvent hand newKeyboardFocus: self.'.
	
	self compile: 'mouseLeave: anEvent

	anEvent hand newKeyboardFocus: nil.'.
	
	self compile: 'handlesKeyboard: aKeyboardEvent

  ^ true.'.

	self compile: 'handleKeystroke: anEvent
	"handle keystrokes here"'.