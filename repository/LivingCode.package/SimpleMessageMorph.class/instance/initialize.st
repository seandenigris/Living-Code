initialization
initialize

	super initialize.
	self
		borderStyle: self styler borderStyle;
		fillStyle: self styler fillStyle;
		color: self styler color;
		layoutInset: 10@3;
		layoutPolicy: TableLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #topToBottom.
		
"	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method change: #Removed using: #update:. 
"