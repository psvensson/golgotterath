accessing
new: itemname 
	| item template kind |
	template := GameItem itemList at: itemname.
	item := self new.
	kind := (template at: #kind)	.
	item	kind: kind named: (template at: #name).
	longname := (template at: #longname).
	item	longname: longname.
	item attributes: template.
	Logger log:'new Item ';log:longname;log: ' kind ';log:kind;cr.
	^ item