private
addArgumentMorphFor: selectorToken
	"selectorToken - the part of the selector e.g. for the first argument of #ifNil:ifNotNil: would be ifNil:"

	| argMorph |
	argMorph := ArgumentTextMorph send: selectorToken asSymbol to: object.
	self addLabel: selectorToken.
	self panel addMorphBack: argMorph.