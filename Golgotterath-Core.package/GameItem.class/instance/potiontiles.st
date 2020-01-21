accessing
potiontiles
	potiontiles isNil ifTrue: [ 
		potiontiles := PotionTiles new.
	].
	^ potiontiles