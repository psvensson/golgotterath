initialization
loadSounds
	sounds := Dictionary new.
	sounds at: 'walk1' put: (self getAIFFSound: self getEncodedWalk1).
	sounds at: 'walk2' put: (self getAIFFSound: self getEncodedWalk2).
	sounds at: 'walk3' put: (self getAIFFSound: self getEncodedWalk3).
	sounds at: 'walk4' put: (self getAIFFSound: self getEncodedWalk4).
	sounds at: 'walk5' put: (self getAIFFSound: self getEncodedWalk5).
	sounds at: 'walk6' put: (self getAIFFSound: self getEncodedWalk6).
	sounds at: 'swing' put: (self getAIFFSound: self getEncodedSwing).
	sounds at: 'sword' put: (self getAIFFSound: self getEncodedSword).
	sounds at: 'hurt1' put: (self getAIFFSound: self getEncodedHurt1).
	sounds at: 'hurt2' put: (self getAIFFSound: self getEncodedHurt2).
	sounds at: 'monster1' put: (self getAIFFSound: self getEncodedMonster1).
	sounds at: 'monster2' put: (self getAIFFSound: self getEncodedMonster2).
	