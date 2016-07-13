as yet unclassified
showMenu
	"Modified from OBPluggableListMorph"
	
	| menu |
	menu := MenuMorph new.
	menu add: 'description' target: self action: #selector.
	menu popUpEvent: self activeHand lastEvent in: self world.