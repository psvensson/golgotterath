stepping
stepMap
"Step each entity and ongoing event"
	"Transcript show: 'stepMap';cr."
	entitiesArray do: [ :entity | entity player ifFalse: [entity step] ] 