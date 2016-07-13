accessing
arguments

	| argumentMorphs |
	argumentMorphs := self submorphs first submorphsSatisfying: [ :e | e isKindOf: ArgumentTextMorph ].
	^ argumentMorphs collect: [ :e | e argument ]