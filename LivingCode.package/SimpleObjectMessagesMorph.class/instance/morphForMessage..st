*LivingCode-Specifications
morphForMessage: aSymbol 

	^ self submorphs detect: [ :m | m selector = aSymbol ].