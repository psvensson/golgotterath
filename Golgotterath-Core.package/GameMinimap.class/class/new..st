instance creation
new: map
	| instance |
	instance := self new.
	instance gamemap: map.
	
	^ instance