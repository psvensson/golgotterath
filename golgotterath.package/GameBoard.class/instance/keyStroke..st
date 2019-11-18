accessing
keyStroke: anEvent
	| keyValue | 
		keyValue := anEvent keyValue. 
		Transcript show: 'key ',keyValue asString;cr .
    		keyValue = 30    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'up']. 
    		keyValue = 31    "down arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'down']. 
    		keyValue = 29    "right arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'right']. 
    		keyValue = 28    "left arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'left']. 
			keyValue = 122 ifTrue: [ self playAnimation: 'hit' for: self player. ].
			keyValue = 120 ifTrue: [ self playAnimation: 'shoot' for: self player. ].
			keyValue = 99 ifTrue: [ self playAnimation: 'hurt' for: self player. ].
			keyValue = 118 ifTrue: [ self playAnimation: 'die' for: self player. ].