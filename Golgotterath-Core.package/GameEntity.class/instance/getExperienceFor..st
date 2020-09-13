accessing
getExperienceFor: entity
	self exp: self exp + (entity abilities at: 'exp').
	Logger
		log: '*** Experience is now: ';
		log: self exp;
		cr.
	self checkLevelUp