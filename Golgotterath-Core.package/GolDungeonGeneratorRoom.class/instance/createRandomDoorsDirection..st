initialization
createRandomDoorsDirection: dir
	| interval numdoors |
	interval := MAX_DOORS - MIN_DOORS.
	numdoors := interval atRandom + MIN_DOORS.
	"numdoors := 1."
	Transcript
		show: 'generating ' , numdoors asString , ' random doors for room';
		cr.
	numdoors
		timesRepeat: [ | door |
			door := self createRandomDoorDirection: dir.
			doors add: door ]