accessing
itemList
	| list |
	list := Dictionary new.
"--------------------------- Armour"		
	list at: 'orange_robe' put: (Dictionary newFrom:
		{ #name -> 'orange_robe'.#kind->'armour'.#longname -> 'Orange Robe'.#dac -> -1 }). 
	list at: 'blue_robe' put: (Dictionary newFrom:
		{ #name -> 'blue_robe'.#kind->'armour'.#longname -> 'Blue Robe'.#dac -> -2 }). 
	list at: 'yellow_robe' put: (Dictionary newFrom:
		{ #name -> 'yellow_robe'.#kind->'armour'.#longname -> 'Yellow Robe'.#dac -> -3 }).
	list at: 'leather_armour' put: (Dictionary newFrom:
		{ #name -> 'leather_armour'.#kind->'armour'.#longname -> 'Leather Armour'.#dac -> -3 }).	
	list at: 'studded_leather_armour' put: (Dictionary newFrom:
		{ #name -> 'studded_leather_armour'.#kind->'armour'.#longname -> 'Studded Leather Armour'.#dac -> -4 }).		 	
"--------------------------- Weapons"	
	list at: 'short_sword' put: (Dictionary newFrom:
		{ #name -> 'short_sword'.#kind->'weapon'.#longname -> 'Short Sword'.#dam -> '1d6'. 		#subtype->'edged'.#tohit->0 }).
	list at: 'dagger' put: (Dictionary newFrom:
		{ #name -> 'dagger'.#kind->'weapon'.#longname -> 'Dagger'.#dam -> '1d4'. 
		#subtype->'edged'.#tohit->1 }).	
	list at: 'rapier' put: (Dictionary newFrom:
		{ #name -> 'rapier'.#kind->'weapon'.#longname -> 'Rapier'.#dam -> '1d6'. 
		#subtype->'edged'.#tohit->1 }).		
	list at: 'long_sword' put: (Dictionary newFrom:
		{ #name -> 'long_sword'.#kind->'weapon'.#longname -> 'Long Sword'.#dam -> '1d8'. 		#subtype->'edged'.#tohit->(-1) }).		
	list at: 'short_sword' put: (Dictionary newFrom:
		{ #name -> 'bastard_sword'.#kind->'weapon'.#longname -> 'Bastard Sword'.#dam -> '2d4'. 		#subtype->'edged'.#tohit->(-2) }).	
	list at: 'mace' put: (Dictionary newFrom:
		{ #name -> 'mace'.#kind->'weapon'.#longname -> 'Mace'.#dam -> '1d4'. 
		#subtype->'blunt'.#tohit->0}).		
	list at: 'axe' put: (Dictionary newFrom:
		{ #name -> 'axe'.#kind->'weapon'.#longname -> 'Axe'.#dam -> '1d5'. 
		#subtype->'edged'.#tohit->(-1) }).	
	list at: 'flail' put: (Dictionary newFrom:
		{ #name -> 'flail'.#kind->'weapon'.#longname -> 'Flail'.#dam -> '2d4'. 
		#subtype->'blunt'.#tohit->(-2)}).							
	^ list
"--------------------------- Treasure"
		