accessing
generateTreasure
	| things list |
	list := GameItem itemList.
	things := list values select: [ :thing | (thing at: #level) < (level +1) ].
	^ things at: things size atRandom