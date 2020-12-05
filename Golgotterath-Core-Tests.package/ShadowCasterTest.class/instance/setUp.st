running
setUp
	super setUp.
	gamemap := GameMap new level: 1.
	shadowCaster := ShadowCaster new gamemap: gamemap.
	"Put here a common initialization logic for tests"