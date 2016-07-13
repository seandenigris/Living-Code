as yet unclassified
openOn: aClass 

	| contentMorph dialog instVarMorphs |
	typeChoosers := aClass livingInstanceVariables collect: [ :e | MagritteTypeChooser on: e ].
	instVarMorphs := typeChoosers collect: [ :e | e morph ].
	contentMorph := UITheme builder newColumn: instVarMorphs.
	dialog := (UITheme builder newPluggableDialogWindow: 'Magrittize ', aClass name) useDefaultOKButton.
	dialog
		contentMorph: contentMorph;
		model: self;
		applyChangesSelector: #ok;
		openInWorld.