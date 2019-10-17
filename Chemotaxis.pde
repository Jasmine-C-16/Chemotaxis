Bacteria[] colony;

 void setup()   
 {     
 	size(400,400);
 	background(10);
 	colony = new Bacteria[400];

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

 	Bacteria(){
 		x=(int)(Math.random()*800-400);
 		y=(int)(Math.random()*400);
 		rgb=(int)(Math.random()*255);
 		exy = (int)(Math.random()*7);
 	}

 	void move(){
 		x++;
 		if (x>401){
 			x=0;
 			y=(int)(Math.random()*400);
 		}
 	}

 	void show(){
 		fill(rgb);
 		ellipse(x,y,exy,exy);
 	}
 }    