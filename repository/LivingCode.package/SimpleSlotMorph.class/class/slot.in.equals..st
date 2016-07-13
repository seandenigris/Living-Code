instance creation
slot: aSymbol in: modelObject equals: valueObject

	^ self new
		object: modelObject;
		slotName: aSymbol;
		slotValue: valueObject;
		yourself.