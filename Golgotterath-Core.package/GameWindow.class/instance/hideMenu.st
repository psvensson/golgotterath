initialization
hideMenu
Transcript show:'---- remvoing game menu from game window';cr.
	menuShowing := false.
	self removeMorph: menu.