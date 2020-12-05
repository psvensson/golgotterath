accessing
updateLightAndMemory: cpos gridPos: gridPos

	| distanceSquared |
	distanceSquared := cpos x * cpos x + (cpos y * cpos y).
	"updatedLight at: cpos put: distanceSquared."
	updatedLight at: cpos put: cpos.
	Transcript
		show:
			cpos asString , ' distanceSquared is ' , distanceSquared asString;
		cr.
	distanceSquared <= self class DARK_TRESHOLD ifTrue: [ 
		updatedMemory at: gridPos put: (getTileBlock value: gridPos) ]