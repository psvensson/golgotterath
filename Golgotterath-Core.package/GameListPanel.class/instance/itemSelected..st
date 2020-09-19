accessing
itemSelected: anIndex
	| item |
	anIndex > 0
		ifFalse: [ ^ self ].
	selectedIndex := anIndex.
	item := listCollection at: selectedIndex.
	selectedCallback ifNotNil: [ selectedCallback value: item ].
	self highlightSelectedItem