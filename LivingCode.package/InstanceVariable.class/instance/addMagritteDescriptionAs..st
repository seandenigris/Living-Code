as yet unclassified
addMagritteDescriptionAs: type

	| methodTemplate methodString |
	methodTemplate := 'description{1}
	
	^ MAStringDescription new
        accessor: #{2};
        label: {1};
"        priority: 100;"
        yourself.'.
	methodString := methodTemplate format: { name capitalized. name }.
	class class compile: methodString classified: 'magritte descriptions'.