as yet unclassified
delete

"	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self."
	super delete.
	self messageMorphs do: [ :mm | mm delete ].