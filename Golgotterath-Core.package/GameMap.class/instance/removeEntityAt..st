accessing
removeEntityAt: pos
	self
		entityAt: pos
		ifPresent: [ :entity | 
			entities removeKey: pos.
			"entity gamemap: nil."
			"Logger log:'removeEntityAt: ';log:pos;log:' removes ';log:entity;cr.
			Logger log:'entitesArray before = ';log:entitiesArray size;cr."		
			entitiesArray := entitiesArray select: [:e | e ~= entity]] .
			"Logger log:'entitesArray after = ';log:entitiesArray size;cr."	
			"entitiesArray do:[:foo|Logger log:foo;cr.]	"
			