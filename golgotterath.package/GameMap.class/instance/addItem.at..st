accessing
addItem: item at: pos
	"Transcript show: 'adding tile ',x asString,',',y asString ;cr."
	item boardpos: pos.
	items at: pos put: item .