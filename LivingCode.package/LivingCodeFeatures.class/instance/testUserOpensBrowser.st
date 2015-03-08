as yet unclassified
testUserOpensBrowser

	| browser |
	browser := SimpleObjectBrowser new openInWorld.
	
	World submorphs should include: browser.
	"User can just start typing"
	browser searchField hasKeyboardFocus should beTrue.
	browser delete.