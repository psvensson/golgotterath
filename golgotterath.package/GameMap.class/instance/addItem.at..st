accessing
addItem: item at: pos
	"Transcript show: 'adding tile current boardpos=',item boardpos asString ;cr."
	item boardpos: pos.
	items at: pos put: item .