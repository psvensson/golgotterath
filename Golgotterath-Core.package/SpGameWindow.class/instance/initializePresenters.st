initialization
initializePresenters

	| morph |
	morph := self class getImageFromEncoded: self class getEncodedLogo.
	morph
		extent: 1150 @ 700;
		width: 1150.
	logo := self newMorph.
	logo morph: morph.

	game := self newMorph.
	game morph: GameWindow new.

	menu := SpGameMenu new.

	toolbar := self newToolbar
		           color: Color black;
		           addItem: (SpToolbarButtonPresenter new
				            label: 'Ok';
				            icon: (self iconNamed: #smallOk);
				            help: 'Ok';
				            action: [ self inform: 'Ok' ];
				            yourself);
		           addItem: (SpToolbarButtonPresenter new
				            label: 'Cancel';
				            icon: (self iconNamed: #smallCancel);
				            help: 'Cancel';
				            action: [ self inform: 'Cancel' ];
				            yourself);
		           yourself