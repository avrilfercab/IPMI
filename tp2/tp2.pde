PImage diapo1, diapo2, diapo3, diapo4, diapo5;
String nom, tex1, tex2, tex3, tex4, tex5;
int tam1, tam2, tam3, tam4, tam5;
int pant, seg;
float x, y, px;  
color clor, clor2, clor3;
int alpha, ex1, ey1, an, al;
PFont fuente1, fuente2, fuente3;

 void setup () {
  size(640, 480);
  
   diapo1 = loadImage("diapo1.png");
   diapo2 = loadImage("diapo2.png") ;
   diapo3 = loadImage("diapo3.png");
   diapo4 = loadImage("diapo4.jpg");
   diapo5 = loadImage("diapo5.png");
  
   nom = "UNDERTALE" ;
   tex1 = "Undertale es un RPG creado por \nToby Fox,lanzado en el año 2015";
   tex2 = "El jugador controla a un niño\nque ha caído al subsuelo:\nuna gran región aislada bajo la superficie \nde la Tierra, separada por una barrera mágica";
   tex3 = "El mundo subterráneo es el hogar de monstruos,muchos de \nlos cuales desafían al jugador en combate; los jugadores\n deciden si matarlos, huir o hacerse amigo de ellos";
   tex4 = "Las elecciones hechas por el jugador afectan\n radicalmente la trama y la progresión general del juego, \ncon la moral del jugador actuando como la piedra angular\n para el desarrollo del juego";
   tex5 = "PRECIONA PARA REINICIAR";
   
   pant = 1;
   px = 600;
   x = width / 2;
   y = height / 2; 
   clor = color(255);
   clor2 = color(255);
   clor3 = color(255);
   tam1 = (101);
   tam2 = (10);
   alpha = (255);
   ex1 = 10;
   ey1 = 280;
   an = 275;
   al = 50;
   fuente1 = loadFont ("OCRA.vlw");
   fuente2 = loadFont ("OCRA.vlw");
   fuente3 = loadFont ("papyrus.vlw");
 }
 
 void draw (){
  background(0);
  println(seg);
  
 if (pant == 1){
    
      image( diapo1, 0, 0);
    
        if( tam1 >= 100 ){
         y = y - 0.5;
         y -= -0.5;
         y--;  
         clor = color(255, alpha);
         alpha = alpha - 1;
        } 
      
   
        fill( clor );
        textSize( tam1 );
        textAlign( CENTER, TOP );
        textFont( fuente1 );
        text( nom, x, y );
  
    
  } else if(pant== 2){
    
     image( diapo2, 0, 0);
     textSize( tam2 );
     textFont( fuente2, 30 );
     fill(255);
     text(tex1, px, 30);
      px -= 1;
     if (px > width - 10) { 
     px = -textWidth(tex2);
     }
     textSize(tam2);
     textFont(fuente2, 20);
     fill(255);
     text(tex2, 320, 400);
    
     
     
  
    
    
    
   
    
    
  } else if (pant ==3){
    image(diapo3, 0, 0, 640, 480);
    textSize( tam2 );
    textFont( fuente2, 19 );
    fill(clor2);
    text(tex3, 320, 20);
     if( tam2 >= 10 ){
      clor2 = color(255, alpha);
      alpha = alpha + 3;
     }
    
    
    
  } else if (pant ==4){
    image(diapo4, 0, 0, 640, 480);
    textSize( tam2 );
    textFont( fuente2, 19);
    fill(clor3);
    text(tex4, 320 , 10);
    if( tam2 >= 10 ){
      clor3 = color(255, alpha);
      alpha = alpha - 3;
     }
    
    
    
    
   
 
 
 
 
 } else if (pant ==5){
    image(diapo5, 0, 0, 640, 480);
    textSize( tam2);
    textFont( fuente3, 15);
    fill(255);
    rect( ex1, ey1, an, al);
    fill(0);
    text(tex5, 150 , 300);
    
    
    
  }

  if (seg < 0){
    pant = 0;
  } else if (seg > 11 && seg < 22) {
    pant = 2;
  } else if (seg > 23 && seg < 36){
    pant=3;
  } else if (seg > 36 && seg < 50){
    pant=4;
  } else if (seg > 51 ){
    pant=5;
  }

   if (frameCount%60 == 0) {
      seg++;
    }


 
 }
 void mousePressed() {
  if (mouseX > ex1 && mouseX < ex1+an && mouseY > ey1 && mouseY < ey1 + al) {
    seg = 0; 
    pant = 1;
    alpha = 255; 
    clor = color(255); 
    clor2 = color(255); 
    clor3 = color(255); 
    px = 600;
     y = height / 2;
  }
  
  
 }
  
   
   
   
   
   
 
