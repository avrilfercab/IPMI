//Avril Fernandez Cabrera
// comision 2
// 119027/4

PImage paisaje;   
                   
 void setup() {
 
  size(800, 400);
  paisaje = loadImage("paisaje.jpeg");
  smooth();
  
}
void draw() {
  background( 0, 170, 228 );

  fill( 120, 70, 40);
  noStroke();
  rect( 590, 200, 20, 80 );

  fill( 45, 87, 44);
  noStroke();
  ellipse( 600, 170, 70, 70 );
  
   fill( 24, 70, 52 );
  noStroke();
  triangle(420, 350, 452, 235, 550, 300);
   
   fill(255, 100);
  noStroke();
  ellipse(700, 100, 60, 60);
  
   fill(255, 100);
  noStroke();
  ellipse(750, 50, 60, 60);
  

   fill(255, 100);
  noStroke();
  ellipse(700, 50, 60, 60);
  
  
   fill(255, 100);
  noStroke();
  ellipse(730, 100, 60, 60);
  
   fill(255, 100);
  noStroke();
  ellipse(800, 80, 60, 60);
  
   fill(255, 100);
  noStroke();
  ellipse(750, 120, 60, 60);
  
   fill(255, 100);
  noStroke();
  ellipse(800, 120, 60, 60);
   
   fill(255, 100);
  noStroke();
  ellipse(750, 70, 60, 60);
  
  
   fill(255, 100);
  noStroke();
  ellipse(750, 70, 60, 60);
  
  
   fill(255, 100);
  noStroke();
  ellipse(790, 50, 60, 60);
  
   fill(255, 100);
  noStroke();
  ellipse(650, 100, 60, 60);

  fill( 0, 143, 59 );
  noStroke();
  triangle( 1400, 90, 000, 350, 0, 2000);
  
  fill( 24, 70, 52, 200 );
  noStroke();
  triangle( 2000, 90, 000, 450, 0, 2000); 

  image( paisaje, 0, 0, 400, 400 );
  

}
