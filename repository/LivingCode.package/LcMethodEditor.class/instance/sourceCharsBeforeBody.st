callbacks
sourceCharsBeforeBody

	| methodTemplate sourceBeforeBody |
	methodTemplate := '{1}
	{2}

	'.
	sourceBeforeBody := methodTemplate format: { selectorModel text. commentModel text }.
	^ sourceBeforeBody size.