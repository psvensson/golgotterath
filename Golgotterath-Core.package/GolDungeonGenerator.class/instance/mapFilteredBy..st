initialization
mapFilteredBy: v
| rv |
	rv := OrderedCollection new.
	map keysAndValuesDo: [  :key :value | 
		| split |
		split := key substrings: '_'.
		value = v ifTrue: [
			"Transcript show:'map filterby adding ',key;cr."
			rv add: ((split at: 1) asNumber )@ ((split at: 2) asNumber )] ].
	^ rv