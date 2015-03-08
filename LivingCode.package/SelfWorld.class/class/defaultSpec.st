specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :c | 
			c
				add: #browserModel height: 40;
				newRow: [ :r | 
					r
						add: #toolbarModel origin: 0@0 corner: 0.1@1;
						add: #worldModel origin: 0.1@0 corner: 1@1 ] ];
		yourself