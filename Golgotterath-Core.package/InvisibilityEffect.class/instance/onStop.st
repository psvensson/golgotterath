accessing
onStop
	entity abilities removeKey: #invisible ifAbsent: [].
	Transcript show:'disabling invisibility steps = ', step asString;cr.