instance creation
initialize: aString of: aClass 

	^ self new
		instVarName: aString;
		containerClass: aClass;
		execute.