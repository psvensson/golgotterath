actions
load: fileName spriteWidth: w
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"

	| sprites |
	spriteWidth := w.
	image := fileName asFileReference
		binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].
	Transcript
		show: 'Loading sprite file with width ';
		show: w greaseString.
	sprites := Dictionary new.
	0 to: image width - w by: w do:
		[ :x | | index | index := 1. 0 to: image height - w by: w do: [ :y | sprites at:index put: (image copy: (x @ y corner: (x + w) @ (y + w))). index := index +1. ] ].
	spriteImages := sprites