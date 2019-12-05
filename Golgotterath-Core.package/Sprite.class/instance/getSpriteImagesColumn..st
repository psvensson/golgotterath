accessing
getSpriteImagesColumn: c
    ^(1 to: 8) collect: [:i | spriteImages at: ((c - 1) * spritesPerRow) + i ]