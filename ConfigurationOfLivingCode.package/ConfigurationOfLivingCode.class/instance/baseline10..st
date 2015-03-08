baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/SeanDeNigris/SeansPlayground/main/'.
		spec project: 'GrowableTextMorph' with: [
			spec
				className: 'ConfigurationOfGrowableTextMorph';
				version: #'bleedingEdge';
				repository: 'http://smalltalkhub.com/mc/SeanDeNigris/SeansPlayground/main/' ].
		spec project: 'PetitParser' with: [
			spec
				className: 'ConfigurationOfPetitParser';
				repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/';
				version: #'development';
				loads: 'Core' ].
		spec 
			package: 'MorphicExperiments';
			package: 'LivingCode' with: [ spec requires: #(PetitParser GrowableTextMorph MorphicExperiments) ] ].