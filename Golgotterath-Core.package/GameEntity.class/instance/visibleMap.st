accessing
visibleMap
	| tiles entities items maps top bottom left right |
	tiles := OrderedCollection new.
	entities := SortedCollection sortBlock: [:a :b | a boardPosition > b boardPosition].
	items := OrderedCollection new.
	top := (self boardPosition) y - lightradius .
	bottom := (self boardPosition y) + lightradius .
	left := (self boardPosition x) - lightradius .
	right := (self boardPosition x) + lightradius .
	maps := Dictionary new.
	maps at: #items put: items; at: #tiles put: tiles; at: #entities put: entities .
	top to: bottom do: 
		[ :y | left to: right do: 
			[ :x |	
				gamemap entityAt: x@y ifPresent: [ :entity |	entities add:entity	].
				gamemap itemAt: x@y ifPresent: [ :item |	items add:item 	].
				tiles add: (gamemap mapAt: x@y).  ] ].
	 ^ maps