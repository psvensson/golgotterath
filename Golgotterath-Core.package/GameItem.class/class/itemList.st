accessing
itemList
	| list |
	list := Dictionary new.
	"--------------------------- Armour"
	list
		at: 'orange_robe'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'orange_robe').
					(#kind -> 'armour').
					(#longname -> 'Orange Robe').
					(#dac -> -1).
					(#level -> 1)}).
	list
		at: 'blue_robe'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'blue_robe').
					(#kind -> 'armour').
					(#longname -> 'Blue Robe').
					(#dac -> -2).
					(#level -> 2)}).
	list
		at: 'yellow_robe'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'yellow_robe').
					(#kind -> 'armour').
					(#longname -> 'Yellow Robe').
					(#dac -> -3).
					(#level -> 3)}).
	list
		at: 'leather_armour'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'leather_armour').
					(#kind -> 'armour').
					(#longname -> 'Leather Armour').
					(#dac -> -3).
					(#level -> 1)}).
	list
		at: 'studded_leather_armour'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'studded_leather_armour').
					(#kind -> 'armour').
					(#longname -> 'Studded Leather Armour').
					(#dac -> -4).
					(#level -> 1)}).
	list
		at: 'leather_helmet'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'leather_helmet').
					(#kind -> 'armour').
					(#longname -> 'Leather Helmet').
					(#dac -> -1).
					(#level -> 1)}).	
	list
		at: 'brass_helmet'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'brass_helmet').
					(#kind -> 'armour').
					(#longname -> 'Brass Helmet').
					(#dac -> -2).
					(#level -> 2)}).		
	list
		at: 'iron_helmet'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'iron_helmet').
					(#kind -> 'armour').
					(#longname -> 'Leather Helmet').
					(#dac -> -3).
					(#level -> 3)}).	
	list
		at: 'steel_helmet'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'steel_helmet').
					(#kind -> 'armour').
					(#longname -> 'Steel Helmet').
					(#dac -> -4).
					(#level -> 4)}).	
	list
		at: 'mithril_helmet'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'mithril_helmet').
					(#kind -> 'armour').
					(#longname -> 'Mithril Helmet').
					(#dac -> -5).
					(#level -> 5)}).
	list
		at: 'brass_scale_armour'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'brass_scale_armou').
					(#kind -> 'armour').
					(#longname -> 'Brass Scale Armou').
					(#dac -> -5).
					(#level -> 3)}).	
	list
		at: 'iron_scale_armour'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'iron_scale_armour').
					(#kind -> 'armour').
					(#longname -> 'Iron Scale Armou').
					(#dac -> -6).
					(#level -> 5)}).	
	list
		at: 'chain_mail'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'chain_mail').
					(#kind -> 'armour').
					(#longname -> 'Chain Mail').
					(#dac -> -6).
					(#level -> 5)}).	
	list
		at: 'plate_mail'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'plate_mail').
					(#kind -> 'armour').
					(#longname -> 'Plate Mail').
					(#dac -> -7).
					(#level -> 7)}).	
	list
		at: 'mithril_mail'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'mitril_mail').
					(#kind -> 'armour').
					(#longname -> 'Mithril Mail').
					(#dac -> -9).
					(#level -> 10)}).																																															
	"--------------------------- Weapons"
	list
		at: 'short_sword'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'short_sword').
					(#kind -> 'weapon').
					(#longname -> 'Short Sword').
					(#dam -> '1d6').
					(#subtype -> 'edged').
					(#tohit -> 0).
					(#level -> 1)}).
	list
		at: 'dagger'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'dagger').
					(#kind -> 'weapon').
					(#longname -> 'Dagger').
					(#dam -> '1d4').
					(#subtype -> 'edged').
					(#tohit -> 1).
					(#level -> 1)}).
	list
		at: 'rapier'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'rapier').
					(#kind -> 'weapon').
					(#longname -> 'Rapier').
					(#dam -> '1d6').
					(#subtype -> 'edged').
					(#tohit -> 1).
					(#level -> 2)}).
	list
		at: 'long_sword'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'long_sword').
					(#kind -> 'weapon').
					(#longname -> 'Long Sword').
					(#dam -> '1d8').
					(#subtype -> 'edged').
					(#tohit -> -1).
					(#level -> 3)}).
	list
		at: 'short_sword'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'bastard_sword').
					(#kind -> 'weapon').
					(#longname -> 'Bastard Sword').
					(#dam -> '2d4').
					(#subtype -> 'edged').
					(#tohit -> -2).
					(#level -> 2)}).
	list
		at: 'mace'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'mace').
					(#kind -> 'weapon').
					(#longname -> 'Mace').
					(#dam -> '1d4').
					(#subtype -> 'blunt').
					(#tohit -> 0).
					(#level -> 1)}).
	list
		at: 'war_hammer'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'war_hammer').
					(#kind -> 'weapon').
					(#longname -> 'War Hammer').
					(#dam -> '1d8').
					(#subtype -> 'blunt').
					(#tohit -> 0).
					(#level -> 3)}).				
	list
		at: 'axe'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'axe').
					(#kind -> 'weapon').
					(#longname -> 'Axe').
					(#dam -> '1d5').
					(#subtype -> 'edged').
					(#tohit -> -1).
					(#level -> 3)}).
	list
		at: 'flail'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'flail').
					(#kind -> 'weapon').
					(#longname -> 'Flail').
					(#dam -> '2d4').
					(#subtype -> 'blunt').
					(#tohit -> -2).
					(#level -> 3)}).
	list
		at: 'crossbow'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'crossbow').
					(#kind -> 'weapon').
					(#longname -> 'Crossbow').
					(#dam -> '2d4').
					(#subtype -> 'ranged').
					(#tohit -> -2).
					(#level -> 3)}).	
	list
		at: 'short_bow'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'short_bow').
					(#kind -> 'weapon').
					(#longname -> 'Shortbow').
					(#dam -> '1d4').
					(#subtype -> 'ranged').
					(#tohit -> -2).
					(#level -> 1)}).	
	list
		at: 'long_bow'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'long_bow').
					(#kind -> 'weapon').
					(#longname -> 'Longbow').
					(#dam -> '1d6').
					(#subtype -> 'ranged').
					(#tohit -> -2).
					(#level -> 3)}).	
	list
		at: 'arrow'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'arrow').
					(#kind -> 'weapon').
					(#longname -> 'Arrow').
					(#dam -> '1d4').
					(#subtype -> 'ranged').
					(#tohit -> 0).
					(#level -> 1)}).	
	list
		at: 'bolt'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'bolt').
					(#kind -> 'weapon').
					(#longname -> 'Bolt').
					(#dam -> '2d4').
					(#subtype -> 'ranged').
					(#tohit -> 1).
					(#level -> 3)}).																						
	"--------------------------- Treasure"
	list
		at: 'small_wooden_chest'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'small_wooden_chest').
					(#kind -> 'misc').
					(#longname -> 'Small Wooden Chest').
					(#subtype -> 'chest').
					(#size -> 1).
					(#level -> 2)}).
	list
		at: 'large_wooden_chest'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'large_wooden_chest').
					(#kind -> 'misc').
					(#longname -> 'Large Wooden Chest').
					(#subtype -> 'chest').
					(#size -> 2).
					(#level -> 4)}).	
	list
		at: 'small_iron_chest'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'small_iron_chest').
					(#kind -> 'misc').
					(#longname -> 'Small Iron Chest').
					(#subtype -> 'chest').
					(#size -> 3).
					(#level -> 6)}).		
	list
		at: 'large_iron_chest'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'large_iron_chest').
					(#kind -> 'misc').
					(#longname -> 'Small Iron Chest').
					(#subtype -> 'chest').
					(#size -> 4).
					(#level -> 8)}).												
	list
		at: 'copper_pieces'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'copper_pieces').
					(#kind -> 'misc').
					(#longname -> 'Copper Pieces').
					(#subtype -> 'money').
					(#size -> 1).
					(#amount -> 1).
					(#level -> 2)}).
	list
		at: 'silver_pieces'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'silver_pieces').
					(#kind -> 'misc').
					(#longname -> 'Silver Pieces').
					(#subtype -> 'money').
					(#size -> 1).
					(#amount -> 1).
					(#level -> 3)}).	
	list
		at: 'gold_pieces'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'gold_pieces').
					(#kind -> 'misc').
					(#longname -> 'Gold Pieces').
					(#subtype -> 'money').
					(#size -> 1).
					(#amount -> 1).
					(#level -> 4)}).		
	list
		at: 'platinum_pieces'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'platinum_pieces').
					(#kind -> 'misc').
					(#longname -> 'Platinum Pieces').
					(#subtype -> 'money').
					(#size -> 1).
					(#amount -> 1).
					(#level -> 7)}).												
	list
		at: 'blue_crystal'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'blue_crystal').
					(#kind -> 'misc').
					(#longname -> 'Blue Crystal').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 3)}).
	list
		at: 'rubies'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'rubies').
					(#kind -> 'misc').
					(#longname -> 'Rubies').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 4)}).	
	list
		at: 'sapphires'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'sapphires').
					(#kind -> 'misc').
					(#longname -> 'Sapphires').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 6)}).	
	list
		at: 'emeralds'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'emeralds').
					(#kind -> 'misc').
					(#longname -> 'Emeralds').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 9)}).														
	list
		at: 'wooden_sticks'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'wooden_sticks').
					(#kind -> 'misc').
					(#longname -> 'Wooden Sticks').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).	
	list
		at: 'skull'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'skull').
					(#kind -> 'misc').
					(#longname -> 'Skull').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).
	list
		at: 'bones'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'bones').
					(#kind -> 'misc').
					(#longname -> 'Bones').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).	
	list
		at: 'skeletal_remains'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'skeletal_remains').
					(#kind -> 'misc').
					(#longname -> 'Skeletal Remains').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).	
	list
		at: 'cadaver'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'cadaver').
					(#kind -> 'misc').
					(#longname -> 'Cadaver').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).	
	list
		at: 'corpse'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'corpse').
					(#kind -> 'misc').
					(#longname -> 'Corpse').
					(#subtype -> 'rubble').
					(#size -> 1).
					(#level -> 1)}).																																							
	"--------------------------- Potions"
	list
		at: 'small_healing_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'small_healing_potion').
					(#kind -> 'potion').
					(#longname -> 'Small Healing Potion').
					(#subtype -> 'healing').
					(#commonality -> 2).
					(#size -> 1).
					(#level -> 1)}).
	list
		at: 'large_healing_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'large_healing_potion').
					(#kind -> 'potion').
					(#longname -> 'Large Healing Potion').
					(#subtype -> 'healing').
					(#size -> 3).
					(#level -> 3)}).
	list
		at: 'small_mana_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'small_mana_potion').
					(#kind -> 'potion').
					(#longname -> 'Small Mana Potion').
					(#subtype -> 'magic').
					(#size -> 3).
					(#level -> 6)}).	
	list
		at: 'large_mana_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'large_mana_potion').
					(#kind -> 'potion').
					(#longname -> 'Large Mana Potion').
					(#subtype -> 'magic').
					(#size -> 5).
					(#level -> 10)}).	
	list
		at: 'cure_posion_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'cure_posion_potion').
					(#kind -> 'potion').
					(#longname -> 'Cure Posion Potion').
					(#subtype -> 'antidote').
					(#size -> 1).
					(#level -> 4)}).		
	list
		at: 'infra_vision_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'infra_vision_potion').
					(#kind -> 'potion').
					(#longname -> 'Small Mana Potion').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 4)}).	
	list
		at: 'speed_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'speed_potion').
					(#kind -> 'potion').
					(#longname -> 'Speed Potion').
					(#subtype -> 'magic').
					(#size -> 1).
					(#level -> 6)}).		
	list
		at: 'increase_strength_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'increase_strength_potion').
					(#kind -> 'potion').
					(#longname -> 'Increase Strength Potion').
					(#subtype -> 'stats').
					(#size -> 1).
					(#level -> 4)}).
	list
		at: 'increase_dexterity_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'increase_dexterity_potion').
					(#kind -> 'potion').
					(#longname -> 'Increase Dexterity Potion').
					(#subtype -> 'stats').
					(#size -> 1).
					(#level -> 8)}).		
	list
		at: 'increase_constitution_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'increase_consitution_potion').
					(#kind -> 'potion').
					(#longname -> 'Increase Constitution Potion').
					(#subtype -> 'stats').
					(#size -> 1).
					(#level -> 9)}).		
	list
		at: 'increase_intelligence_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'increase_intelligence_potion').
					(#kind -> 'potion').
					(#longname -> 'Increase Intelligence Potion').
					(#subtype -> 'stats').
					(#size -> 1).
					(#level -> 10)}).		
	list
		at: 'increase_wisdom_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'increase_wisdom_potion').
					(#kind -> 'potion').
					(#longname -> 'Increase Wisdom Potion').
					(#subtype -> 'stats').
					(#size -> 1).
					(#level -> 10)}).			
	list
		at: 'resist_heat_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'resist_heat_potion').
					(#kind -> 'potion').
					(#longname -> 'Resist Heat Potion').
					(#subtype -> 'antidote').
					(#size -> 1).
					(#level -> 1)}).
	list
		at: 'resist_cold_potion'
		put:
			(Dictionary
				newFrom:
					{(#name -> 'resist_cold_potion').
					(#kind -> 'potion').
					(#longname -> 'Resist ColdPotion').
					(#subtype -> 'antidote').
					(#size -> 1).
					(#level -> 1)}).																																																
	"------------------------------------"
	^ list