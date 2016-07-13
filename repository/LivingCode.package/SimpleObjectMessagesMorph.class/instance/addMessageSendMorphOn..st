as yet unclassified
addMessageSendMorphOn: aSelector

	self addMorphBack: (self messageSendMorphOn: aSelector of: self object).