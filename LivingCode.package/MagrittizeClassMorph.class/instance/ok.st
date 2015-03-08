as yet unclassified
ok

	typeChoosers do: [ :e |
		e instanceVariable
			ensureAccessors;
			addMagritteDescriptionAs: e type ].