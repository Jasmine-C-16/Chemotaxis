Bacteria[] colony;
Star[] stars;

 void setup()   
 {     
 	size(800,800);
 	background(10);
 	frameRate(30);

 	colony = new Bacteria[1600];
 	stars = new Star[1600];

 	for (int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria();
 	}

 	for (int n=0; n<stars.length; n++){
 		stars[n] = new Star();
 	}
 }   

 void draw()   
 {    
 	background(10);
 	for (int i=0; i<colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}

 	for (int n=0;n<stars.length; n++){
 		stars[n].move();
 		stars[n].show();
 	}
 }  

 class Bacteria    
 {     
 	int x,y,rgb,exy;
 	int r,g,b,bx,by;

 	Bacteria(){
 		// x=(int)(Math.random()*1600-800);
 		// y=(int)(Math.random()*800);
 		//rgb=(int)(Math.random()*255);
 		r=(int)(Math.random()*255);
 		g=(int)(Math.random()*255);
 		b=(int)(Math.random()*255);
 		bx=(int)(Math.random()*200+400);
 		by=(int)(Math.random()*200+400);
 		exy = (int)(Math.random()*10);
 	}

 	void move(){
 		// x++;
 		// if (x>801){
 		// 	x=0;
 		// 	y=(int)(Math.random()*800);
 		// }

 		if (mouseX > bx){
 			bx+=(int)(Math.random()*10-3);
 		}

 		if (mouseX < bx){
 			bx+=(int)(Math.random()*10-7);
 		}

 		if (mouseX == bx){
 			bx+=(int)(Math.random()*50-25);
 		}

 		if (mouseY > by){
 			by+=(int)(Math.random()*10-3);
 		}

 		if (mouseY < by){
 			by+=(int)(Math.random()*10-7);
 		}

 		if (mouseY == by){
 			by+=(int)(Math.random()*50-25);
 		}


 	}

 	void show(){
 		noStroke();
 		//fill(rgb);
 		fill(r,g,b);
 		//ellipse(x,y,exy,exy);
 		ellipse(bx,by,exy,exy);
 	}
 }    


 class Star{
 	int sx,sy,srgb,sxy;
 	int sbx,sby;

 	Star() {
 		srgb=(int)(Math.random()*255);
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
 		ellipse(sbx,sby,sxy,sxy);
 	}

 }

// Star[] stars;

// 	void setup(){
// 		for (int i=0; i<stars.length; i++){
// 	 		stars[i] = new Star();
// 	 	}
// 	}