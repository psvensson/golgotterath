initialization
mapAt: pos put: something
	| posStr |
	posStr := pos x asString , '_' , pos y asString.
	"Transcript
		show: 'map put ' , something asString , ' at ' , posStr;
		cr."
	^ map at: posStr put: something