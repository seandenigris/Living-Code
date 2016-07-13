instance creation
giveLifeTo: anObject
	"(self giveLifeTo: Object) openInWorld"

	^ self basicNew
			setObject: anObject;
			initialize.