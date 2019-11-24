I am an Agenda for NPC and monster entities in the game.
Each entity have zero or more agendas which can be of the following types;

Tactical (only one of each type can be active):
---------
MoveTo x@y
Attack entity
Pick up item
Drop item

Strategical (any number of unique veriants can be active):
------------
LookForAny (item type, entity type, dungeon tile type)
LookForSpecific (entity, item, dungeon tile)
AvoidAny (item type, entity type, dungeon tile type)
AvoidSpecific (entity, item, dungeon tile)

Strategic agendas create and delete tactical agendas when triggered.