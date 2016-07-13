*LivingCode
createMCPackage
	"Adapted from NautilusMonticello>>#createMCPackageFor:"
	
	| mcPackage |
	mcPackage := MCPackage new name: self name.
	MCWorkingCopy forPackage: mcPackage.
	^ mcPackage.