instance creation
new: entityname
	| entity template aSprite spriteClass |
	"Transcript show:'GameEntity new: for ',entityname;cr."
	template := GameEntity listEntities at: entityname.
	entity := self new.
	spriteClass := template at: 'sprite'.
	aSprite := spriteClass new.
	entity
		ac: (template at: 'ac');
		hp: (template at: 'hp');
		maxhp: (template at: 'hp');
		"animatedSprite: (Sprite getSprite: (template at: 'sprite')) ;"
			animatedSprite: aSprite;
		speed: (template at: 'speed').
	entity abilities: template.
	entity animatedSprite play: 'walk'.
	entity createDefaultStrategies.
	^ entity