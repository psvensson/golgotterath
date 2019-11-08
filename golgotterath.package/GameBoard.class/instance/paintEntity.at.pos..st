drawing
paintEntity: entitypos at: aCanvas pos: pos
	| entity |	
	entities at: (entitypos x @ entitypos y) ifPresent: [ 
		entity := entities at: (entitypos x @ entitypos y).
		Transcript show: 'painging entity at '; show: entitypos asString ; cr.
		self paintEntity: entity tilepos: entitypos at: 	aCanvas pos: pos. ]
		
	