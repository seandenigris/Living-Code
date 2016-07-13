as yet unclassified
newControls

	| builder inspectButton exploreButton browseClassButton |
	builder := UITheme builder.
	browseClassButton := builder newButtonFor: object action: #browse label: 'b' help: ''.
	exploreButton := builder newButtonFor: object action: #explore label: 'e' help: ''.
	inspectButton := builder newButtonFor: object action: #inspect label: 'i' help: ''.
	^ builder newRow: { browseClassButton. exploreButton. inspectButton }.