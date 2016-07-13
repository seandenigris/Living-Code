as yet unclassified
showMenu
	"Modified from OBPluggableListMorph"
	
	| menu |
	menu := MenuMorph new.
	menu add: 'New instance creation method' target: self action: #addInstanceCreationMethod.
"	menu setInvokingView: self."
	menu popUpEvent: self activeHand lastEvent in: self world.