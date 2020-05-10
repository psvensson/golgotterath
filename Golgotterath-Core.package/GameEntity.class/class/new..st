instance creation
new: entityname
	| entity template |
	Transcript show:'GameEntity new: for ',entityname;cr.
	template := (GameEntity listEntities) at: entityname.
	entity := self new.
	entity ac: (template at: 'ac');
				hp: (template at: 'hp');
				maxhp: (template at: 'hp');
				"animatedSprite: (Sprite getSprite: (template at: 'sprite')) ;"
				animatedSprite: ((template at: 'sprite') new) ;
				speed: (template at: 'speed').
	entity abilities: template.		
	entity animatedSprite play: 'walk'.		
	entity createDefaultStrategies.				
	^ entity