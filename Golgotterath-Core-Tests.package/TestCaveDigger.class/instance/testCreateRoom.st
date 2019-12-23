tests
testCreateRoom
	| digger | 
	digger := CaveDigger new.
	digger dimensions: 10.
	digger createRoomFrom: (-3)@(-3) to: 3@3.
	self assert:  (digger tileAt: 0@0) equals: 'floor'.