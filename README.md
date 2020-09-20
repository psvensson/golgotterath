# golgotterath

I am an experimental isometric game engine written in Pharo Smalltalk.

![Screenshot](https://drive.google.com/file/d/1f1338oGPL2EhxPmf8_w4iZD-7Z8WmeWH/view?usp=sharing)

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
