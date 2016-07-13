*LivingCode-Core
selfWorld

	^ self outermostMorphThat: [ :m | m isKindOf: ScrollableWorldMorph ]