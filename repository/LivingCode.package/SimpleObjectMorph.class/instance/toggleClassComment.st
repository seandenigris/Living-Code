actions
toggleClassComment

	self isShowingComment
		ifTrue: [ self hideComment ]
		ifFalse: [ self showComment ]