private
showSourceCode

	| editor |
	editor := self newEditor.
	self addMorphBack: (editor buildWithSpec
		hResizing: #rigid;
		vResizing: #rigid;
		yourself).
	editor takeKeyboardFocus.