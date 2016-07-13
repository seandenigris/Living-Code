*LivingCode
removeAllFromWorld

	| shouldRemove instances |
	shouldRemove := self confirm: 'Remove all ', self name, 's from the world?'.
	shouldRemove ifTrue: [
		instances := World submorphsSatisfying: [ :m | m isKindOf: self ].
		instances do: [ :e | e delete ]  ].