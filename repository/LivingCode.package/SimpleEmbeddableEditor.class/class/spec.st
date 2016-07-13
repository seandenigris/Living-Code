as yet unclassified
spec
	<spec>
	
	^ SpecLayout composed
		newColumn: [ :col | col
			add: #text;
			newRow: [ :toolbar |
				self buttonGetters do: [ :e | toolbar add: e ] ] height: 30 ];
		yourself