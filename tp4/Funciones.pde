void boton (float x, float y) {

  pushStyle();

  stroke(255);
  strokeWeight(3);
  fill(0);
  rect(x, y, 200, 50);

  popStyle();
}

void cambiar(String pantalla, int posX) {
  if (mouseX > posX && mouseX < posX+200 && mouseY > 500 && mouseY < 500+50) {
    aventura.estado = pantalla ;
  }
}

void terminar() {
  if (keyCode == ENTER ) {
    aventura.estado = "creditos";
  }
}

void flecha(String pantalla, int x1, int x2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > 220 && mouseY < 290) {
    aventura.estado = pantalla ;
  }
}

void txt (String txt, int x_, int y_, int tam, int align) {

  pushStyle();

  textFont(aventura.p.fuentes[0]);
  textSize(tam);
  textAlign(align);
  fill(255);
  text(txt, x_, y_);

  popStyle();
}
