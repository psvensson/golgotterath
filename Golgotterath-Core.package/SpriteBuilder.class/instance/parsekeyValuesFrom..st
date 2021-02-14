parsing
parsekeyValuesFrom: row

	| kv animationDefinition |
	kv := row substrings: '='.
	section ifNil: [ self parseGlobalKeyValue: kv ] ifNotNil: [ 
		Transcript show:'   parseKeyValues ',kv first,' -> ',kv last;cr.
		animationDefinition := animationDefinitions at: section.
		animationDefinition at: kv first put: kv last ]