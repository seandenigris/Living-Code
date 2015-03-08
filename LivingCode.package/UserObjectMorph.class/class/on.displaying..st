as yet unclassified
on: anObject displaying: aSelectorOrBlock
	"aSelectorOrBlock - if a selector, send to object; if a block, takes object as a parameter and returns string describing the object"

	^ self new setObject: anObject displayBehavior: aSelectorOrBlock.