accessing
getUncheckedDoors: doors
	^ doors select: [ :d | 
		"Transcript show:'door checked = ',(d at: #checked) asString;cr."
		((d at: #checked) = false) ] 