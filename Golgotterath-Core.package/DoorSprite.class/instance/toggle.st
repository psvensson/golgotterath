accessing
toggle
	rotated
		ifFalse: [ state = 1
				ifTrue: [ state := 2 ]
				ifFalse: [ state := 1 ] ]
		ifTrue: [ state = 3
				ifTrue: [ state := 4 ]
				ifFalse: [ state := 3 ] ].
	"Transcript
		show: 'door toggle state is now ' , state asString;
		cr"