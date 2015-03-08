baselines
baseline11: spec
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/SeanDeNigris/LivingCode/main/'.
		spec 
			project: 'GrowableTextMorph' with: [
				spec
					className: #ConfigurationOfGrowableTextMorph;
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/SeanDeNigris/SeansPlayground/main/' ];
			project: 'PetitParser' with: [
				spec
					className: #ConfigurationOfPetitParser;
					versionString: #'development';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/' ].
		spec 
			package: 'MorphicExperiments' with: [
				spec repository: 'http://smalltalkhub.com/mc/SeanDeNigris/SeansPlayground/main/' ];
			package: #ScrollableWorldMorph;
			package: 'LivingCode' with: [
				spec requires: #(#PetitParser #GrowableTextMorph #MorphicExperiments #ScrollableWorldMorph ). ]. ].
