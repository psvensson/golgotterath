actions
load: fileName spriteWidth: w
	"loads a png sprite file and splits it up into individuel sprite images by the spriteWidth argument"
	| sprites |	
	image :=  fileName asFileReference binaryReadStreamDo: [ :stream | PNGReadWriter formFromStream: stream ].	
	Transcript show: 'loading sprite file with width ',w asString .
	sprites := OrderedCollection new.
	0 to: (image width - w) by: w do: [ :x |
   		0 to: (image height - w) by: w do: [ :y |
      		sprites add: (image copy: (x@y corner: (x+w)@(y+w)))]].
	spriteImages := sprites.