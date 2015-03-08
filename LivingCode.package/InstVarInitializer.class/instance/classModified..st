as yet unclassified
classModified: anAnnouncement

	| event instVarsAdded |
	event := anAnnouncement event.
	instVarsAdded := event instVarNames reject: [ :e | event oldInstVarNames includes: e ].
	self offerToInitialize: instVarsAdded.