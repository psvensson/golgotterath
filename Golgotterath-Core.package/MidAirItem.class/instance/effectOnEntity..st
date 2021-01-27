accessing
effectOnEntity: entity 
	"Transcript show:'effectOnEntity not implemented';cr."
	| damage |
	damage := referenceObject handleEffectOnTarget: entity.
	referenceEntity dealDamageTo: entity  damage: damage cause: referenceObject name