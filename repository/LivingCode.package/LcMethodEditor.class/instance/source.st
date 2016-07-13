callbacks
source

	| methodTemplate |
	methodTemplate := '{1}
	{2}

{3}'. "The body lines are already indented"
	^ methodTemplate format: { selectorModel text. commentModel text. bodyModel text }.