as yet unclassified
open

	| dialogModel instance |
	instance := self new.
	dialogModel := instance openDialogWithSpec.
	instance initializeSyntaxHighlighting.
	^ dialogModel
		okAction: [ dialogModel model ok ];
		yourself.