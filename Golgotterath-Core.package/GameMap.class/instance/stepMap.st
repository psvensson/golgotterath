stepping
stepMap
"Step each entity and ongoing event"
	entitiesArray do: [ :entity | entity player ifFalse: [entity step] ] 