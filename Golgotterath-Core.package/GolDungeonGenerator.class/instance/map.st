initialization
map
| rv |
	rv := OrderedCollection new.
	map keysAndValuesDo: [  :key :value | 
		| split |
		split := key substrings: '_'.
		value = 0 ifFalse: [rv add: ((split at: 1) asNumber )@ ((split at: 2) asNumber )] ].
	^ rv