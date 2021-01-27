drawing
inventoryItemSelected: item

	| result list choice |
	list := item inventoryActions.
	result := UIManager default
		          chooseFrom: list
		          message: 'Actions for ' , item asString.
	result > 0 ifFalse: [ ^ self ].
	choice := list at: result.
	player inventoryActionSelected: choice item: item