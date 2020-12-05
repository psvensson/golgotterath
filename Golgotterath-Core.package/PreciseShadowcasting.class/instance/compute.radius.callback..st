accessing
compute: pos radius: R callback: callback
	| shadows cpos blocks A1 A2 visibility |
	shadows := OrderedCollection new.
	callback value: pos value: 0 value: 1.
	(lightPassesCallback value: pos) ifFalse: [ ^ self ].
	1 to: R do: [:r | | neighbors |
		neighbors := self getCircle: pos radius: r.
		1 to: neighbors size do: [ :i | | neighbor |
			neighbor := neighbors at: i.
			cpos :=  (neighbor at: 1)@(neighbor at: 2).
			A1 := self arc1: i neighborCount: neighbors  size.
			A2 := self arc2: i neighborCount: neighbors  size.
			blocks := (lightPassesCallback value: cpos) not.
			]
		  ]
	