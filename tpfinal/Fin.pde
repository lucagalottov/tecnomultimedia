class Finales {

  Finales() {
  }

  void ganar() {
    if (aventura.estado.equals("ganar")){ 
    fin("ganar", "CONTINUAR", "HAS GANADO", color(0, 255, 0));
    }
  }

  void perder() {
    if (aventura.estado.equals("perder")){
    fin("perder", "CONTINUAR", "HAS MUERTO", color(255, 0, 0));
    }
  }

  void fin(String e, String txt1, String txt2, color c) {

    if (aventura.estado.equals(e)) {
      pushStyle();
      tint(50);
      imageMode(CENTER);
      aventura.juego.fondo2.resize(1000, 1000);
      image(aventura.juego.fondo2, width/2, height/2, width, height);
      textAlign(CENTER, CENTER);
      textSize(48);
      textFont(aventura.juego.fuente2);

      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        fill(0, 255, 0);
      } else fill(255);

      text(txt1, width/2, height/2);
      fill(c);
      text(txt2, width/2, height/4);

      tint(255);
      aventura.juego.j.globulo.resize(120, 120);
      image(aventura.juego.j.globulo, mouseX, mouseY);
      popStyle();
    }
  }
}
