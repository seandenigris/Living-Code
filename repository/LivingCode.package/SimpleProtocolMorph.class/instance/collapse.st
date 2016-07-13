private - actions
collapse

	toggleMorph form: UITheme current treeUnexpandedForm.
	self
		removeAllMorphs;
		addMorphBack: headerMorph.
	self vResizing: #shrinkWrap.
	isExpanded := false.