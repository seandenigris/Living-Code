as yet unclassified
baseline: spec
	<baseline>

	spec for: #'common' do: [
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
			package: 'Morphic-Core' with: [
				spec repository: 'github://seandenigris/Pharo-Kernel-Extensions:master/repository' ];
			package: #ScrollableWorldMorph;
			package: 'LivingCode' with: [
				spec requires: #(#PetitParser #GrowableTextMorph #MorphicExperiments #ScrollableWorldMorph #'Morphic-Core'). ]. ].
