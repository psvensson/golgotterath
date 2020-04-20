initialization
mapAt: pos
| posStr something |
posStr := pos x asString , '_' , pos y asString.
something := map at: ( (pos x) asString , '_' , (pos y) asString) ifAbsent: [  ].
	"Transcript
		show: 'map ' , something asString , ' at ' , posStr;
		cr."
	^ something