private
resetSubmorphs

	self removeAllMorphs.
	toolbar := nil.
	selector asLivingSelector addToMessageMorph: self.
	self addMorph: self panel.
	self panel addMorphBack: self newBrowseButton.