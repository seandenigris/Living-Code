as yet unclassified
doesNotUnderstand: aMessage

	instanceBehaviors
		at: aMessage selector
		ifPresent: [ :behaviorBlock | behaviorBlock value ]
		ifAbsent: [ super doesNotUnderstand: aMessage ]