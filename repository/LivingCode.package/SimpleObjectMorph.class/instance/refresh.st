private
refresh
	
	| description |
	description := self object printStringLimitedTo: 50.
	self title: description.
	self flag: 'not really refreshing much. e.g. the slot values are not updated'