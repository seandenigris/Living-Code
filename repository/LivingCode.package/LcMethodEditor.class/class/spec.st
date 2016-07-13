as yet unclassified
spec
	<spec>
	
	^ SpecLayout composed
			newColumn: [ :col |
				col
					add: #selectorModel height: 30;
					add: #commentModel height: 60;
					add: #bodyModel ];
			yourself