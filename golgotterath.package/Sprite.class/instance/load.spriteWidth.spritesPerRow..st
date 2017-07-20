actions
load: fileName spriteWidth: w spritesPerRow: spr
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"

	| sprites index |
	index := 1. 
	spriteWidth := w.
	spritesPerRow := spr.
	image := fileName asFileReference
		binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].	
	sprites := Dictionary new.
	0 to: image width - w by: w do:
		[ :x | 
			0 to: image height - w by: w do: [ :y | 
				sprites at:index put: (image copy: (x @ y corner: (x + w) @ (y + w))). index := index +1. ] ].
	spriteImages := sprites