as yet unclassified
new

	| form |
	form := Form fromFileNamed: 'red-pushpin-trimmed.png'.
	^ super new
		form: (form scaledToSize: 33@71);
		yourself.