instance creation
sending: aSelector to: anObject

	^ self new
		selector: aSelector;
		object: anObject;
		yourself.