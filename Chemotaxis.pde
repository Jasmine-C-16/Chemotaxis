Bacteria[] colony;

 void setup()   
 {     
 	size(800,800);
 	background(10);
 	frameRate(30);
 	colony = new Bacteria[1600];

 	for (int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria();
 	}
 }   

 void draw()   
 {    
 	background(10);
 	for (int i=0; i<colony.length; i++){
 		colony[i].move();
 		colony[i].show();
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