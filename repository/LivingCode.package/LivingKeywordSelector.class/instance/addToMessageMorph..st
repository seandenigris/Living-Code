metamorphizing
addToMessageMorph: aMorph 

	self tokens do: [ :token | aMorph addArgumentMorphFor: token ]