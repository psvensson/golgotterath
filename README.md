# golgotterath

I am an experimental isometric game engine written in Pharo Smalltalk.

![Screenshot](https://github.com/psvensson/golgotterath/blob/master/gamescreenshot.png?raw=true)

## Loading
```
Metacello new
    repository: 'github://psvensson/golgotterath:master';
    baseline: 'Golgotterath';
    load
```

## Running 
```
GameWindow open 
```

## In-game commands
    Arrow keys up,down,left right move the player character
    The numeric keyboard also move the player character in any of eight directions
    i - show Inventory
    g - get an item off the ground
    d - drop item from inventory
    w - wield a weapon
    e - equip an armour
    q - quaff a potion
    f <direction> - fire ranged wewapon
    o <direction> - open door at direction
    
    You can hit monsters by moving onto them.
