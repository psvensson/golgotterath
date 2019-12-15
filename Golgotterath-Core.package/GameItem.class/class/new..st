accessing
new: itemname 
	| item template |
	template := GameItem itemList at: itemname.
	item := self new.
	item	kind: (template at: #kind)	named: (template at: #name).
	item	longname: (template at: #longname).
	item attributes: template.
	^ item