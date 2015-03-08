as yet unclassified
on: anObject

	^ self new setObject: anObject displayBehavior: [ :obj | obj printStringLimitedTo: 30 ].