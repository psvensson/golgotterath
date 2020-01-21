# golgotterath

I am an experimental isometric game engine written in Pharo Smalltalk.

## Loading
```
Metacello new
    repository: 'github://psvensson/golgotterath:master';
    baseline: 'Golgotterath';
    load
```

## Running 
```
GameBoard open 
```

## In-game commands
    Arrow keys up,down,left right move the player character
    The numeric keyboard also move the player character in any of eight directions
    i - show Inventory
    g - get an item off the ground
    w - wield a weapon
    e - equip an armour
    q - quaff a potion
    
    You can hit monsters by moving onto them.
