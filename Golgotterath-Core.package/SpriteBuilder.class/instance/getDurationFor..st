accessing
getDurationFor: values
	| valueString valueArr |
	valueString := values at: 'duration'.
	valueArr := valueString substrings: 'ms'.
	"Transcript show:'valueArr for ',valueString,' is ',valueArr asString;cr."
	^ valueArr first asNumber 