action
drop: item
	gamemap itemAt: boardPosition ifAbsent: [ 
		Logger log: self name;log: ' dropped ';log: item;cr.
		inventory remove: item.
		gamemap addItem: item at: boardPosition. ] .
	gamemap itemAt: boardPosition ifPresent: [ 
		Logger log: self name;log: ' could not drop ';log: item;log: ' because there was already something on the floor';cr]