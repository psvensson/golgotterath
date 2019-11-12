I am the base class for animated sprites.

I use an Animation class to store all frames for all animations for my Sprite.

My subclasses adds one or more Animations to me like 'walk', 'hit', et.c. byt pointing out which framerows to crete the animations from.

Public API and Key Messages

- addAnimation: anim named: animName store a newly created Animation under a name 
- play: animName removes any old and add the correct Animation morph to this morph 
- paint: gameBoard at: aCanvas pos: pos draws the current frame of the current animation at the gamboard canvas and position

