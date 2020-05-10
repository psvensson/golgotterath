initialization
text: aText
	"Transcript
		show: 'top showing text: ' , aText;
		cr."
	text backgroundColor: Color darkGray.
	text color: Color white.
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	text contents: aText