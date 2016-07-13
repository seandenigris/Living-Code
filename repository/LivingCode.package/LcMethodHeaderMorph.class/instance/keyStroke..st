initialization
keyStroke: anEvent
	"Maybe this would be better in updateFromParagraph, but in TextMorph, it seems to be called all the time anyway (from #handleInteraction:, and then (seemingly incorrectly) from #keyStroke:)"

	^ super keyStroke: anEvent.