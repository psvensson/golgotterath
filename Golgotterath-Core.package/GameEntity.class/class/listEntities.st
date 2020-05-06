accessing
listEntities
	| list |
	list := Dictionary new.
	list at: 'elemental' put: (Dictionary newFrom:
		{#name->'elemental'.#speed->1.#sprite->Elemental.#level->6.
		#hp->10.#ac->5.#str->20.#con->20.#dex->10.#int->5.#wis->5.#exp->1100.
		#vulnerable->#('fire').#resist->#('edged').#special->#('slow')}).
	list at: 'goblin' put: (Dictionary newFrom:
		{#name->'goblin'.#speed->2.#sprite->Goblin.#level->1.
		#hp->10.#ac->8.#str->8.#con->8.#dex->10.#int->10.#wis->6.#exp->250.
		#vulnerable->#().#resist->#().#special->#()}).	
	list at: 'human' put: (Dictionary newFrom:
		{#name->'human'.#speed->1.#sprite->Human.#level->1.
		#hp->10.#ac->10.#str->10.#con->10.#dex->10.#int->10.#wis->10.#exp->600.
		#vulnerable->#().#resist->#().#special->#()}).	
	list at: 'magician' put: (Dictionary newFrom:
		{#name->'magician'.#speed->2.#sprite->Magician.#level->3.
		#hp->15.#ac->7.#str->8.#con->10.#dex->15.#int->15.#wis->10.#exp->1000.
		#vulnerable->#('missile').#resist->#('blunt')}).		
	list at: 'maleheavy' put: (Dictionary newFrom:
		{#name->'maleheavy'.#speed->1.#sprite->MaleHeavy.#level->3.
		#hp->15.#ac->7.#str->13.#con->13.#dex->10.#int->10.#wis->8.#exp->800.
		#vulnerable->#().#resist->#().#special->#()}).		
	list at: 'malelight' put: (Dictionary newFrom:
		{#name->'malelight'.#speed->1.#sprite->MaleLight.#level->2.
		#hp->11.#ac->8.#str->11.#con->13.#dex->13.#int->10.#wis->10.#exp->700.
		#vulnerable->#().#resist->#().#special->#()}).	
	list at: 'ogre' put: (Dictionary newFrom:
		{#name->'ogre'.#speed->1.#sprite->Ogre.#level->5.
		#hp->25.#ac->8.#str->20.#con->15.#dex->8.#int->6.#wis->6.#exp->1500.
		#vulnerable->#('fire').#resist->#().#special->#()}).
	list at: 'skeleton' put: (Dictionary newFrom:
		{#name->'skeleton'.#speed->1.#sprite->Skeleton.#level->1.#exp->400.
		#hp->6.#ac->8.#str->8.#con->8.#dex->8.#int->1.#wis->1. 
		#vulnerable->#('blunt','holy').#resist->#().#special->#() }).	
	list at: 'werewolf' put: (Dictionary newFrom:
		{#name->'werewolf'.#speed->2.#sprite->Werewolf.#level->6.
		#hp->16.#ac->8.#str->16.#con->14.#dex->12.#int->8.#wis->12.#exp->2100.
		#vulnerable->#('holy').#resist->#().#special->#('poison')}).		
	list at: 'zombie' put: (Dictionary newFrom:
		{#name->'zombie'.#speed->1.#sprite->Zombie.#level->2.
		#hp->10.#ac->6.#str->12.#con->8.#dex->10.#int->1.#wis->1.#exp->1400.
		#vulnerable->#('holy').#resist->#().#special->#()}).															
	^ list