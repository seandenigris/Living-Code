as yet unclassified
whichXmlAttributesMatterIn: soupCollection
	"Usage: say you're importing a large data set where many fields may be irrelevant (to you or in general), like text messages, which have fields like service_center and subject that you may not care about. This will open an inspector to help you decide whether you care about the actual values in the dataset"
	
	| data |
	data := soupCollection last attributes keys collect: [ :key |
		| uniqueValues |
		uniqueValues := self collect: [ :e | e @ key ] as: Set.
		key->uniqueValues ].
	data inspect