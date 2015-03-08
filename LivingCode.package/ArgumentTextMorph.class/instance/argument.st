as yet unclassified
argument
	
	| source bindings |
	bindings := Dictionary new.
	source := String streamContents: [ :str | 
		self contents doWithIndex: [ :e :i | 
			e = Character home
				ifFalse: [ str nextPut: e ]
				ifTrue: [ 
					| tempName |
					tempName := 'arg' , (bindings size + 1) asString.
					bindings at: tempName put: ((self contents attributesAt: i) detect: [ :a | a isKindOf: TextAnchor ]) anchoredMorph object.
					str nextPutAll: tempName ] ] ].
	^ Smalltalk compiler
		evaluate: source
		notifying: bindings
		logged: nil