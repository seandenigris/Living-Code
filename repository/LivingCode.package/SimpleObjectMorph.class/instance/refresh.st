private
refresh
	
	| description |
	description := self object printStringLimitedTo: 50.
	self title: description.