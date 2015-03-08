as yet unclassified
buildWindowKeymappingsOn: aBuilder

	<keymap>
	(aBuilder shortcut: #showMessageMenu) 
		category: #LivingObject
		default: $m asShortcut
		do: [ :morph :event | morph showUnderstoodMessages ].
	aBuilder attachShortcutCategory: #LivingObject to: SimpleObjectMorph.