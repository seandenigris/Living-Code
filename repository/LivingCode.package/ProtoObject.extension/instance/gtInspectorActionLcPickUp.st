*LivingCode
gtInspectorActionLcPickUp
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self lcPickUp ];
		icon: #objects asIcon;
		title: 'Pick Up'