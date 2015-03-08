*LivingCode-Specifications
mcPackage
	"Adapted from GoferReference>>#workingCopyIfAbsent:"

	| workingCopy |
	self flag: 'Right now, doing exactly the same thing as #correspondingMcPackage'.
	workingCopy := MCWorkingCopy allManagers detect: [ :wc | wc package name = self name ].
	^ workingCopy package.