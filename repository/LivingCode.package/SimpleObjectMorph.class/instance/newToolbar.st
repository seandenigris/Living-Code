private - building
newToolbar

	| evaluatorButton toolbar specificationButton inspectorButton browseButton closeButton messagesButton |
	browseButton := self newButtonLabeled: 'B' sending: #browseObject help: 'Browse'.
	inspectorButton := self newButtonLabeled: 'I' sending: #showInspector help: 'Show Inspector'.
	messagesButton := self newButtonLabeled: 'M' sending: #showUnderstoodMessages  help: 'Show Messages'.
	specificationButton := self newButtonLabeled: 'S' sending: #showSpecification help: 'Show Specification'.
	evaluatorButton := self newButtonLabeled: 'E' sending: #showEvaluator help: 'Show evaluator'.
	closeButton := self newButtonLabeled: 'X' sending: #close help: 'Show evaluator'.
	toolbar :=  UITheme builder newRow: { browseButton. inspectorButton. messagesButton. specificationButton. evaluatorButton. closeButton }.
	^ toolbar
		hResizing: #shrinkWrap;
		yourself