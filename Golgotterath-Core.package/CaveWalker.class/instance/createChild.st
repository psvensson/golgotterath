creating classes
createChild
	| walker |
	walker := self class new.
	walker walkerPosition: (walkerPosition x )@(walkerPosition y); 
				direction: walkerDirection + ((Random new next) * 
																	(self wiggleMax - (self wiggleMax /2))).
	^ walker