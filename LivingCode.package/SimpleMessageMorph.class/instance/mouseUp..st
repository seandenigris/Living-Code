event handling
mouseUp: anEvent

	| isRightButton |
	isRightButton := anEvent whichButton anyMask: MouseEvent yellowButton.
	isRightButton
		ifFalse: [ self sendMessage ]
		ifTrue: [ self browseMethod ].