drawing
paintDarkness

	| fc m |
	Transcript show: 'calculating darkness';cr.
	m := ImageMorph new.
	fc := FormCanvas new.
	fc setForm: (Form extent: 1150@700 depth: Display depth).
	1 to: 12 do: [ :i | 
		| c p r w e |
		w := 50.
		p := (1150@700)/2.
		r := w @ w.
		c := Color black alpha: i * 0.1.
		e := EllipseMorph new
			     borderWidth: 0;
			     borderWidth: w;
			     color: Color transparent;
			     borderColor: c;
			     bounds: (p - (r * i) corner: p + (r * i)).
		e drawOn: fc ].	
	"m extent: self extent."
	m image: fc form.
	"m position: self position."
	^ m 