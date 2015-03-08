actions
toggleClassComment

	| comment |
	commentMorph ifNotNil: [ 
		commentMorph delete.
		commentMorph := nil.
		^ self ].
	
	comment := self object isClass
		ifTrue: [ self object comment ]
		ifFalse: [ self object class comment ].
	commentMorph := TextModel new
		text: comment;
		buildWithSpec.
	commentMorph
		hResizing: #rigid;
		vResizing: #rigid;
		width: 0.95 * self width.
	self addMorph: commentMorph asElementNumber: 2.