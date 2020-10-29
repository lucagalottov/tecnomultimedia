class Aventura {
  Pantallas p;
  String estado;
  Aventura() {
    p = new Pantallas();
    estado = "casa";
  }

  void dibujar() {
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
      if (mouseX > 170 && mouseX < 208 && mouseY > 169 && mouseY < 200) {
        estado = "ciudad";
      }
    }

    if ( estado.equals("ciudad") ) {
      flecha("superm", 650, 800 );
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
      flecha("superm2", 650, 800 );
    }

    if ( estado.equals("casa2") ) {
      cambiar("hospital", 10);

      cambiar("cementerio", 220);
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
      if (mouseX > 345 && mouseX < 450 && mouseY > 305 && mouseY < 380) {
        estado = "atrapado";
      }
    }

    if (estado.equals("atrapado") ) {
      if (mouseX > 650 && mouseX < 800 && mouseY > 310 && mouseY < 390) {
        estado = "carcel";
      }
    }

    if (estado.equals("hospital") ) {
      flecha("casa3", 650, 800 );
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
}
