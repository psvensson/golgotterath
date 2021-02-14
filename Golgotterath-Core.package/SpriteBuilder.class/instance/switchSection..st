parsing
switchSection: row

	section := row onlyLetters.
	Transcript show:'--- switching to section "',section,'"';cr.
	animationDefinitions at: section put: Dictionary new