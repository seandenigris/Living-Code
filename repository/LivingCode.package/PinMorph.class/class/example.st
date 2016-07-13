as yet unclassified
example
	"self example"

	| parent child |
	parent := Morph new openInHand.
	child := CircleMorph new
		width: parent width;
		topLeft: parent center;
		yourself.
	parent addMorph: child.
	self new pin: parent and: child.