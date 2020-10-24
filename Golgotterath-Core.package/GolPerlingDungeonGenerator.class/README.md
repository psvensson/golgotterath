int x,y,s,o,p,f,c=480;
void setup(){size(480,480);}
void draw(){
	f++;
	s++;
	for(x=0;x<c;x++)
		for(y=0;y<c;y++)
			set(x,y,color(round(noise((x+f)*.01,y/99f))*255));
			o+=key=='a'?-2:key=='d'?2:0;
			p+=key=='w'?-2:key=='s'?2:0;
			if(red(get(o=(o+c)%c,p=(p+c)%c))>0)s=0;
			fill(c,0,0);
			text(s,o,p);
}