I am an Agenda for NPC and monster entities in the game.
Each entity have zero or more agendas which can be of the following types;

LookForSpecific (entity, item, dungeon tile)
AvoidSpecific (entity, item, dungeon tile)

The entity have agenda rules, which is used to decide which agendas to create in 
response to a detected object of some type. The rules matches objects and results in agenda creation for the specific object (non-floor tile, entity or item) if
there isn't one active already.
