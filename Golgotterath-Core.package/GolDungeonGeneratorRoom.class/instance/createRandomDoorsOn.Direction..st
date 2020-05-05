initialization
createRandomDoorsOn: dungeon Direction: dir
	| interval numdoors |
	interval := MAX_DOORS - MIN_DOORS.
	numdoors := interval atRandom + MIN_DOORS.
	"numdoors := 1."
	Transcript
		show: 'generating ' , numdoors asString , ' random doors for room';
		cr.
	numdoors
		timesRepeat: [ | door |
			door := self createRandomDoorOn: dungeon Direction: dir.
			door ifNotNil: [ doors add: door ] ]