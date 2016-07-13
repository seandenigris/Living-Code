as yet unclassified
messagesUnderstoodBy: anObject
	"This might eventually be better in Object/Class/elsewhere, but I'm keeping it here to work with it"

	^ anObject class allSelectorsBelow: Object class.