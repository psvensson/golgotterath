accessing
visibleMap
	| tiles entities items maps top bottom left right |
	tiles := OrderedCollection new.
	entities := SortedCollection sortBlock: [:a :b | a boardPosition > b boardPosition].
	items := OrderedCollection new.
	top := boardPosition y - lightradius .
	bottom := boardPosition y + lightradius .
	left := boardPosition x - lightradius .
	right := boardPosition x + lightradius .
	maps := Dictionary new.
	maps at: #items put: items; at: #tiles put: tiles; at: #entities put: entities .
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x |	
				gamemap entitiesAt: x@y ifPresent: [ :entity |	entities add:entity	].
				gamemap itemAt: x@y ifPresent: [ :item |	items add:item 	].
				tiles add: (gamemap mapAt: x@y).  ] ].
	 ^ maps