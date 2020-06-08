accessing
getProjectileForWeapon: rangedWeapon
	| projectile projectiles projectileName |
	projectileName := rangedWeapon name = #crossbow
		ifTrue: [ #bolt ]
		ifFalse: [ #arrow ].
	projectiles := inventory
		select: [ :each | each name = projectileName ].
	projectiles isNotEmpty
		ifTrue: [ projectile := projectiles first ].
	^ projectile