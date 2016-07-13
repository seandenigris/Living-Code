as yet unclassified
setInstanceVariable: anInstanceVariable

	list := ListModel new
		list: #('Boolean' 'String');
		selectionIndex: 2;
		yourself.
	instanceVariable := anInstanceVariable.
	^ self.