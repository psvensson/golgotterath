accessing
weapontiles
	weapontiles isNil ifTrue: [ 
		weapontiles := WeaponTiles new.
	].
	^ weapontiles