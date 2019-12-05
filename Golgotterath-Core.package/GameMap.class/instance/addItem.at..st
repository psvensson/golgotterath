accessing
addItem: item at: pos
	"Transcript show: 'adding tile current boardpos=',item boardpos asString ;cr."
	item boardPosition: pos.
	items at: pos put: item .