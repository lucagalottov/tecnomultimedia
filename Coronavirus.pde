class Corona {

  float x, y, d, vel;
  boolean sentidox;
  boolean sentidoy;
  PImage corona;
  

  Corona (float x_, float y_, float d_, float vel_) {
    x= x_;
    y = y_;
    d = d_;
    vel = vel_;
    corona = loadImage("corona.png");  
}

  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    image(corona, x, y);
    corona.resize(int(d),int(d));
    popStyle();
    
    if(d<100) {
    x= random(1100,2000);
    y= random(1100,2000);  
    }
    
  }
  
  void matar( ArrayList<Disparo> allDisparo) {

    for ( Disparo thisDisparo : allDisparo ) {
      float di = dist( x, y, thisDisparo.x, thisDisparo.y );
     
      if ( di < d/2 ) {  
        d -= d/8; 
        thisDisparo.reciclar();
      
      }
    }
  }
  
  void moverC() {

    if ( x+d/2 >= width ) {
      sentidox = false;
    }
    if ( x-d/2 <= 0 ) {  
      sentidox = true;
    }

    if ( y+d/2 >= height) {
      sentidoy = false;
    }
    if ( y-d/2 <= 0 ) {  
      sentidoy = true;
    }

   
    
    if ( sentidox ) {
      x= x+vel;
    } else {
      x= x-vel;
    }

    if ( sentidoy ) {
      y= y+vel*2;
    } else {
      y= y-vel*2;
    }
  }
}
