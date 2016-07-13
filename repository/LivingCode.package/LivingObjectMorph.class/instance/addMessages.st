private
addMessages

	self object class selectors do: [ :selector | self addMorphBack: selector asMorph ].