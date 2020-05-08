accessing
generateTreasure
	| things list expandedthings |
	list := GameItem itemList.
	expandedthings := OrderedCollection new.
	things := list values
		select: [ :thing | (thing at: #level) < (level + 1) ].
	things
		do: [ :thing | 
			| c |
			c := thing at: #commonality ifAbsent: [ c := 1 ].
			Transcript show:'generateTreasure adding ',(thing at: #name),' ',c asString,' times';cr.
			c timesRepeat: [ expandedthings add: thing ] ].
	^ expandedthings at: expandedthings size atRandom