private - accessing
slotValue: anObject

	| maximumValueWidth |
	slotValue := anObject.
	valueMorph contents: anObject fullPrintString.
	maximumValueWidth := 400.
	valueMorph width > maximumValueWidth ifTrue: [ valueMorph width: maximumValueWidth ]