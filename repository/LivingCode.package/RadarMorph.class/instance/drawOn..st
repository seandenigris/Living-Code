drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self selfWorld ifNotNil: [ :world | 
		aCanvas translateTo: self topLeft clippingTo: self innerBounds during: [ :c | world radarView: self drawOn: c ] ]