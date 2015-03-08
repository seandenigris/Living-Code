as yet unclassified
tokens

	| identifier selectorPart selectorParser |
	identifier := #letter asParser, #word asParser star.
	selectorPart := (identifier, $: asParser) flatten.
	selectorParser := selectorPart plus.
	^ selectorParser parse: symbol.