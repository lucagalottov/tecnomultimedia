Juego juego;

void setup() {
  size(1000, 1000);
  juego = new Juego();
}

void draw() {
  background(0);
  juego.ganar();
  juego.perder();
  juego.dibujar();
  juego.moverC();
}

void mousePressed() {
  juego.cambiar();
  juego.disparar();
}


void mouseMoved() {
  juego.moverJ();
}
