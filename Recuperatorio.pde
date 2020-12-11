void setup(){
  size(400,400);
  background(255);
  colorMode(HSB,360,100,100);
    
  }
  
void draw(){
  
  //triangulo primario
  noFill();  
  stroke( 0 );  
  strokeWeight( 3 );  
  triangle( 200, 50, 300, 250, 100, 250 ); 
  
  //triangulo secundario
  triangle( 300, 150, 200, 350, 100, 150 );
  
  //triangulos
  fill(30,100,100);
  noStroke();
  triangle(225,75,275,125,300,50);
  
  fill(90,100,100);
  noStroke();
  triangle(375,200,300,175,300,225);
  
  fill(150,100,100);
  noStroke();
  triangle(300,350,275,275,225,325);
  
  fill(210,100,100);
  noStroke();
  triangle(100,350,125,275,175,325);
  
  fill(270,100,100);
  noStroke();
  triangle(25,200,100,175,100,225);
  
  fill(330,100,100);
  noStroke();
  triangle(100,50,125,125,175,75);
  
  //
  fill(0,100,100);
  noStroke();
  triangle(150,100,250,100,200,0);
  
  fill(60,100,100);
  noStroke();
  triangle(300,200,250,100,350,100);
  
  fill(120,100,100);
  noStroke();
  triangle(300,200,250,300,350,300);
  
  fill(180,100,100);
  noStroke();
  triangle(150,300,250,300,200,400);
  
  fill(240,100,100);
  noStroke();
  triangle(150,300,50,300,100,200);
  
  fill(300,100,100);
  noStroke();
  triangle(50,100,100,200,150,100);
  
  }
