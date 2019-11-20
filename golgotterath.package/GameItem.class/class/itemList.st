accessing
itemList
	| list |
	list := Dictionary new.
	list at: 'orange_robe' put: (Dictionary newFrom:
		{ #name -> 'orange_robe'.#kind->'armour'.#longname -> 'Orange Robe'.#dac -> -1 }). 
	list at: 'blue_robe' put: (Dictionary newFrom:
		{ #name -> 'blue_robe'.#kind->'armour'.#longname -> 'Blue Robe'.#dac -> -2 }). 
	list at: 'yellow_robe' put: (Dictionary newFrom:
		{ #name -> 'yellow_robe'.#kind->'armour'.#longname -> 'Yellow Robe'.#dac -> -3 }). 		
	^ list