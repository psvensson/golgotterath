testing
isPosition: pos withinRadius: r of: pos2	
	| rectangle origin corner rv |
	origin := (pos2 x - r)@(pos2 y - r).
	corner := (pos2 x + r)@(pos2 y + r).
	rectangle := Rectangle origin: origin corner: corner.
	rv := rectangle containsPoint: pos.
	"Logger log:'isPosition ';log:pos;log:' within radius ';
	log:r;log:' of ';log:pos2;log:' rv = ';log:rv;cr."
	^ rv