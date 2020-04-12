testing
futuresAll: futures
	"Works like Promise.All() in JavaScript"

	| count results fblock |
	count := futures size.
	results := OrderedCollection new.
	fblock := TKTFuture new.
	futures
		do: [ :each | 
			each
				onSuccessDo: [ :v | 
					v ifNotNil: [ results add: v value ].
					count := count - 1.
					count < 1
						ifTrue: [ fblock deploySuccess: results ] ].
			each
				onFailureDo: [ :fail | 
					Logger
						log: '******** futuresAll failure: ' , fail asString;
						cr.
						fail debug ] ].
	^ fblock