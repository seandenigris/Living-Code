instance creation
slot: aString in: modelObject equals: valueObject

	^ self new
		object: modelObject;
		slotName: aString;
		slotValue: valueObject;
		yourself.