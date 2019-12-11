event handler
keyStroke: anEvent
	| keyValue | 
		keyValue := anEvent keyValue. 
		player hp < 1 ifTrue: [ ^self  ].
		Logger log: 'key '; log:keyValue;cr .
			keyValue = 32 ifTrue: [ gameMap stepMap ].
    		((keyValue = 30) or: (keyValue = 56))    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'up']. 
			keyValue = 55    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'upleft']. 
			keyValue = 57    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'upright']. 
			keyValue = 49    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'downleft']. 
			keyValue = 51    "up arrow" 
       		ifTrue: [self moveEntity: (self player) dir: 'downright']. 
    		((keyValue = 31) or: (keyValue = 50))   "down arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'down']. 
    		((keyValue = 29) or: (keyValue = 54))    "right arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'right']. 
    		((keyValue = 28) or: (keyValue = 52))    "left arrow" 
        	ifTrue: [self moveEntity: (self player) dir: 'left']. 
			keyValue = 122 ifTrue: [ self playAnimation: 'hit' for: self player. ].
			keyValue = 120 ifTrue: [ self playAnimation: 'shoot' for: self player. ].
			keyValue = 99 ifTrue: [ self playAnimation: 'hurt' for: self player. ].
			keyValue = 118 ifTrue: [ self playAnimation: 'die' for: self player. ].
			keyValue = 103 ifTrue: [ self player pickup . ].
			keyValue = 100 ifTrue: [ self dropItemFor: player ].
			keyValue = 119 ifTrue: [ self wieldItemFor: player ].
			keyValue = 101 ifTrue: [ self equipItemFor: player ].
			keyValue = 105 ifTrue: [ self showInventoryFor: player onSelect: [] ]