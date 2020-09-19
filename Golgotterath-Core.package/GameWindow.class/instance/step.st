initialization
step
	logoAlpha := logoAlpha - 0.15.
	logo alpha: logoAlpha.
	logoAlpha = 0
		ifTrue: [ self onLogoHidden ]