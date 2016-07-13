compiling
correctFrom: startInteger to: endInteger with: aString 

	bodyModel widget widget correctFrom: startInteger - self sourceCharsBeforeBody to: endInteger - self sourceCharsBeforeBody with: aString.
	bodyModel accept.