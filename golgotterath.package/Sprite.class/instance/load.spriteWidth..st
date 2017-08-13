actions
load: fileName spriteWidth: w
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"

	| sprites index |
	spriteWidth := w.
	image := fileName asFileReference
		binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].
	Transcript
		show: 'Loading sprite file with width ';
		show: w greaseString.
	sprites := Dictionary new.
	index := 1.
	0 to: image width - w by: w do:
		[ :x | 
			0 to: image height - w by: w do: [ :y | | i aMorph |
				i := (image copy: (x @ y corner: (x + w) @ (y + w))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites