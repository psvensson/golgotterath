playing
play
	"Play animation starting from sprite 1"
	Transcript show: 'playing animation ';
	show: self name;
	show: ' direction ';
	show: direction ;cr.
 	self startStepping.