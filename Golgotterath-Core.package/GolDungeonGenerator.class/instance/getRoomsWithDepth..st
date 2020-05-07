accessing
getRoomsWithDepth: depth
	| size |
	Transcript show:'getRoomsWithDepth current amount of rooms = ',rooms size asString;cr.
	size := (rooms
		select: [ :room | 
			Transcript
				show:
					'getRoomsWithDepth room ' , room pos asString , ' has depth '
						, room depth asString;
				cr.
			room depth = depth ]).
	Transcript show:'getRoomsWithDepth room list size = ',size;cr.
	^  size > 0