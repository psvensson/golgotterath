accessing
listCollection: aCollection

	listCollection := aCollection.
	list
		deselectAll;
		on: self
		list: #listCollection
		selected: #selectListRow
		changeSelected: #itemSelected:
		menu: nil
		keystroke: nil
	"aCollection isEmpty ifFalse: [ self itemSelectedIndex: 1 ]."