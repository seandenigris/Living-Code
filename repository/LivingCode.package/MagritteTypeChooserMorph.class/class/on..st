as yet unclassified
on: anInstanceVariable

	| list instance |
	list := ListModel new list: #('Boolean' 'String').
	instance := super on: list list: #list selected: #selectionIndex changeSelected: #selectionIndex:.
	^ instance
			setInstanceVariable: anInstanceVariable;
			yourself.