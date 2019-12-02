accessing
createDefaultStrategies
	| strategy |
	strategy := DefaultMoveStrategy new.
	strategy entity: self.
	strategies add: strategy.