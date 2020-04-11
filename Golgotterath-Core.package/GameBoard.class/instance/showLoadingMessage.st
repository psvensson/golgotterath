initialization - private
showLoadingMessage
	loadingMorph := TextMorph new.
	loadingMorph contents: 'Loading...'; color: (Color blue); backgroundColor: (Color white).
	loadingMorph fontName: 'Lato' pointSize: 36.	
	loadingMorph position: 1000@500.
	loadingMorph openInWorld.
	loadingMorph  changed.