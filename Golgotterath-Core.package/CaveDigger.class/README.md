This digger was covnerted from ruby, the sources can be found here; 
http://rubyquiz.com/quiz80.html

| digger | 
	digger := CaveDigger new.
	digger createDungeonWalkLength: 400 haveStairs: true walker: CaveWalker new.
	digger getContent.