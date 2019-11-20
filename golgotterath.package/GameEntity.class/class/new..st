instance creation
new: entityname
	| entity template abilities |
	template := (GameEntity listEntities) at: entityname.
	entity := self new.
	entity ac: (template at: 'ac');
				hp: (template at: 'hp');
				animatedSprite: (template at: 'sprite') new;
				speed: (template at: 'speed').
	abilities := entity abilities.			
	abilities at: 'str' put: (template at: 'str').
	abilities at: 'con' put: (template at: 'con').
	abilities at: 'dex' put: (template at: 'dex').
	abilities at: 'int' put: (template at: 'int').
	abilities at: 'wis' put: (template at: 'wis').		
	entity animatedSprite play: 'walk'.				
	^ entity