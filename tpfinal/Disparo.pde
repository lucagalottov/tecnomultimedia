class Disparo {
  float x, y, vx, vy;
  PImage disparo;

  Disparo(float x_, float y_, float vx_, float vy_) {
    x = x_;
    y = y_;
    vx = vx_;
    vy = vy_;
    disparo = loadImage("disparo.png");
  }

  void dibujar() {
    image(disparo, x, y);

    x = x+vx;
    y = y+vy;
  }

  void reciclar() {
    x= width+100;
    y= height+100;
  }
}
