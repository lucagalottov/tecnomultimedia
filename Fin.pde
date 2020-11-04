class Finales {

  Finales() {
  }

  void perder() {
    fin("ganar", "VOLVER", "HAS GANADO", color(0, 255, 0));
  }

  void ganar() {
    fin("perder", "VOLVER", "HAS MUERTO", color(255, 0, 0));
  }

  void fin(String e, String txt1, String txt2, color c) {

    if (juego.estado.equals(e)) {
      pushStyle();
      tint(50);
      imageMode(CENTER);
      juego.fondo.resize(1000, 1000);
      image(juego.fondo, width/2, height/2);
      textAlign(CENTER, CENTER);
      textSize(48);
      textFont(juego.fuente);

      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        fill(0, 255, 0);
      } else fill(255);

      text(txt1, width/2, height/2);
      fill(c);
      text(txt2, width/2, height/4);

      tint(255);
      juego.j.globulo.resize(120, 120);
      image(juego.j.globulo, mouseX, mouseY);
      popStyle();
    }
  }
}
