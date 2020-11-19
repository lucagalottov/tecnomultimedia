class Jugador {
  float x, y, t;
  PImage globulo;
  Jugador(float x_, float y_) {
    x = x_;
    y = y_;
    t= 100;
    globulo= loadImage("globulo.png");
  }
  
  void dibujar () {
    globulo.resize(120,120);
    imageMode(CENTER);
    image(globulo, x, y);
  }
  
}
