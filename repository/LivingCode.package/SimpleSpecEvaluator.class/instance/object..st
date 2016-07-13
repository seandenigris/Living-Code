private - accessing
object: anObject

	object := anObject.
	text
		doItReceiver: object;
		behavior: object class.