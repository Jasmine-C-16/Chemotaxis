Star[] stars;
Bacteria[] colony;

void setup() {     
 	size(800,800);
 	background(10);
 	frameRate(30);

 	colony = new Bacteria[1000];
 	stars = new Star[1000];

 	for (int n=0; n<stars.length; n++){
 		stars[n] = new Star();
 	}

 	for (int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria();
 	}
}   

void draw() {    
 	background(10);
 	
 	for (int n=0;n<stars.length; n++){
 		stars[n].move();
 		stars[n].show();
 	}

 	for (int i=0; i<colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
}  

class Bacteria {     
 	int x,y,rgb,exy;
 	int r,g,b,bx,by;

 	Bacteria(){
 		r=(int)(Math.random()*255);
 		g=(int)(Math.random()*255);
 		b=(int)(Math.random()*255);
 		bx=(int)(Math.random()*400+200);
 		by=(int)(Math.random()*400+200);
 		exy = (int)(Math.random()*15);
 	}

 	void move(){
 		if (mouseX > bx)
 			bx+=(int)(Math.random()*10-3);
 		if (mouseX < bx)
 			bx+=(int)(Math.random()*10-7);
 		if (mouseX == bx)
 			bx+=(int)(Math.random()*50-25);
 		if (mouseY > by)
 			by+=(int)(Math.random()*10-3);
 		if (mouseY < by)
 			by+=(int)(Math.random()*10-7);
 		if (mouseY == by)
 			by+=(int)(Math.random()*50-25);

 		// if (mouseX > bx)
 		// 	bx+=(int)(Math.random()*5);
 		// if (mouseX < bx)
 		// 	bx+=(int)(Math.random()*5-5);
 		// if (mouseX == bx)
 		// 	bx+=(int)(Math.random()*20-10);
 		// if (mouseY > by)
 		// 	by+=(int)(Math.random()*5);
 		// if (mouseY < by)
 		// 	by+=(int)(Math.random()*5-5);
 		// if (mouseY == by)
 		// 	by+=(int)(Math.random()*20-10);

 	}

 	void show(){
 		noStroke();
 		fill(r,g,b);
 		ellipse(bx,by,exy,exy);
 	}
}    


class Star{
 	int sx,sy,srgb,sxy;

 	Star() {
 		srgb=(int)(Math.random()*215);
 		sx=(int)(Math.random()*800);
 		sy=(int)(Math.random()*800);
 		sxy = (int)(Math.random()*7);
 	}

 	void move(){
 		sx++;
 		if (sx>800){
 			sx=0;
 			sy=(int)(Math.random()*800);
 		}
 	}

 	void show(){
 		noStroke();
 		fill(srgb);
 		ellipse(sx,sy,sxy,sxy);
 	}
}
