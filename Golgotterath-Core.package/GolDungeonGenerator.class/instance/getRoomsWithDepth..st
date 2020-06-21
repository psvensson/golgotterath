accessing
getRoomsWithDepth: depth
	| size |
	size := rooms
		select: [ :room | 
			Transcript
				show:
					'getRoomsWithDepth room ' , room pos asString , ' has depth '
						, room depth asString;
				cr.
			room depth = depth ].
	Transcript
		show: 'getRoomsWithDepth room list size = ' , size;
		cr.
	^ size > 0