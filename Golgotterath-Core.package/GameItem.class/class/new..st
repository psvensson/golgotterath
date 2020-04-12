accessing
new: itemname 
	| item template kind |
	template := GameItem itemList at: itemname.
	item := self new.
	kind := (template at: #kind)	.
	item	
		kind: kind 	named: (template at: #name);
		longname: (template at: #longname);
		attributes: template.
	"Logger log:'new Item ';log: item longname;log: ' kind ';log:kind;cr."
	^ item