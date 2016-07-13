as yet unclassified
pin: aMorph and: anotherMorph
	"Stick pointy end somewhere that the two arguments overlap"

	| intersection target pointyEnd |
	intersection := aMorph bounds intersect: 	anotherMorph bounds.
	target := intersection center.
	pointyEnd := self bottomLeft.
	self align: pointyEnd with: target.
	anotherMorph addMorph: self.