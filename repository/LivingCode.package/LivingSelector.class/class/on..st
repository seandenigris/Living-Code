instance creation
on: aSymbol

	| class |
	class := self subclasses detect: [ :e | e isClassFor: aSymbol ].
	^ class new
		symbol: aSymbol;
		yourself