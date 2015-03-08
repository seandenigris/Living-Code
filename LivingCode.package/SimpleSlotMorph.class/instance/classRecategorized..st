callbacks
classRecategorized: aClassRecategorized 

	| newPackage |
	self object = aClassRecategorized classRecategorized ifFalse: [ ^ self ].
	self slotName = 'package' ifFalse: [ ^ self ].
	newPackage := RPackageOrganizer default packageNamed: aClassRecategorized newCategory.
	self slotValue: newPackage.