initialization
text: aText
	Transcript
		show: 'gamebar showing text: ' , aText;
		cr.
	text backgroundColor: Color transparent .
	text color: Color white.
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	text contents: aText