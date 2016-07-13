private
initializeSyntaxHighlighting
	"Shout is designed to highlight traditional body methods, which start with the selector and arguments as the beginning. Since we have the header in a separate editor, we have to treat it like a workspace and manually tell Shout which bindings are recognized"

	bodyModel widget widget styler workspace: self.