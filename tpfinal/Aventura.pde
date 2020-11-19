class Aventura {
  Pantallas p;
  Juego juego;
  String estado;

  Aventura() {
    p = new Pantallas();
    juego = new Juego();
    estado = "casa";
   
  }
 
  void dibujar() {
    println("estado: " + estado);
    if (estado.equals("casa")) {
      p.casa();
    }

    if (estado.equals("buscarbarbijo")) {
      p.buscarbarbijo();
    }

    if (estado.equals("ciudad")) {
      p.ciudad();
    }

    if (estado.equals("superm")) {
      p.superm();
    }

    if (estado.equals("policia")) {
      p.policia();
    }

    if (estado.equals("cena")) {
      p.cena();
    }

    if (estado.equals("creditos")) {
      p.creditos();
    }

    if (estado.equals("salirsinbarbijo")) {
      p.salirsinbarbijo();
    }

    if (estado.equals("superm2")) {
      p.superm2();
    }

    if (estado.equals("policia2")) {
      p.policia2();
    }

    if (estado.equals("huir")) {
      p.huir();
    }

    if (estado.equals("atrapado")) {
      p.atrapado();
    }

    if (estado.equals("carcel")) {
      p.carcel();
    }

    if (estado.equals("casa2")) {
      p.casa2();
    }

    if (estado.equals("cementerio")) {
      p.cementerio();
    }

    if (estado.equals("hospital")) {
      p.hospital();
    }

    if (estado.equals("casa3")) {
      p.casa3();
    }
  }

  void cambiarP() {
    if ( estado.equals("casa") ) {
      cambiar("buscarbarbijo", 10);
    }
    if ( estado.equals("buscarbarbijo") ) {
      if (mouseX > width/5 && mouseX < (width/5)+60 && mouseY > height/3.1 && mouseY < (height/3.1)+60) {
        estado = "ciudad";
      }
    }

    if ( estado.equals("ciudad") ) {
      flecha("superm", width-150, width );
    }

    if ( estado.equals("policia") ) {
      flecha("cena", 10, 160 );
    }

    if (estado.equals("superm") ) {
      flecha("policia", 10, 160 );
    }

    if (estado.equals("casa") ) {
      cambiar("salirsinbarbijo", 220);
    }

    if (estado.equals("salirsinbarbijo") ) {
      flecha("superm2", width-150, width );
    }

    if ( estado.equals("casa2") ) {
      cambiar("hospital", 10);

      //cambiar("cementerio", 220);
    }

    if (estado.equals("policia2") ) {
      cambiar("huir", 220);

      cambiar("casa2", 10);
    }

    if ( estado.equals("superm2") ) {
      cambiar("buscarbarbijo", 10);

      cambiar("policia2", 220);
    }

    if (estado.equals("huir") ) {
      if (mouseX > width/2.5 && mouseX <  (width/2.5)+100 && mouseY > height/1.68 && mouseY < (height/1.68)+80) {
        estado = "atrapado";
      }
    }

    if (estado.equals("atrapado") ) {
      flecha("carcel", width-150, width );
    }


    if (estado.equals("hospital") ) {
      flecha("menu", width-150, width );
    }
  }

  void teclas() {
    if (estado.equals("cena") ) {
      terminar();
    }

    if (estado.equals("carcel") ) {
      terminar();
    }

    if (estado.equals("cementerio") ) {
      terminar();
    }

    if (estado.equals("casa3") ) {
      terminar();
    }

    if (estado.equals("creditos") ) {
      if (keyCode == BACKSPACE ) {
        estado = "casa";
      }
    }
  }

  void cambiar(String pantalla, int posX) {
    if (mouseX > posX && mouseX < posX+200 && mouseY > height-100 && mouseY < height-50) {
      aventura.estado = pantalla ;
    }
  }

  void terminar() {
    if (keyCode == ENTER ) {
      aventura.estado = "creditos";
    }
  }

  void flecha(String pantalla, int x1, int x2) {
    if (mouseX > x1 && mouseX < x2 && mouseY > height-390 && mouseY < height-390+70) {
      aventura.estado = pantalla ;
    }
  }

  //--------------------------

  void dibujarJuego() {
    juego.ganar();
    juego.perder();
    juego.dibujar();
    juego.moverC();
  }

  void mouse() {
    juego.cambiar();
    juego.disparar();
  }

  void moverJu() {
    juego.moverJ();
  }
}
