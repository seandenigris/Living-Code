actions
toggleClassComment

	| comment |
	commentMorph ifNotNil: [ 
		commentMorph delete.
		commentMorph := nil.
		^ self ].
	
	comment := self object class comment.
	commentMorph := TextModel new
		text: comment;
		acceptBlock: [ :txt | self object class comment: txt stamp: Author changeStamp ];
		buildWithSpec.
	commentMorph
		hResizing: #rigid;
		vResizing: #rigid;
		width: 0.95 * self width.
	self addMorph: commentMorph asElementNumber: 2.