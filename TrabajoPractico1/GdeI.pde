class GdeI {
  Dir_Y_Vel mouse;
  boolean movGrande;
  boolean movChico;
  PImage trazos[];
  float tiempoGrande;
  float tiempoChico;
  int cantidad;

  GdeI() {
    mouse = new Dir_Y_Vel();

    cantidad = 4;
    trazos = new PImage [ cantidad ];
    for ( int i =0; i< cantidad; i++) {
      trazos[i]= loadImage (i+".png");
    }
    for ( int i =0; i< cantidad; i++){
      trazos[i].resize(200, 200);
      }
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);
    movGrande = false;
    movChico = false;
    tiempoGrande--;
    tiempoChico--;

    tiempoGrande = constrain(tiempoGrande, 0, 90);
    tiempoChico = constrain(tiempoChico, 0, 90);

    if (mouse.velocidad()>10) {
      float umbral = 40;
      if (mouse.velocidad()>umbral) {
        tiempoGrande+=10;
        tiempoChico-=10;
      } else {
        if (tiempoGrande<10) {
          tiempoChico+=10;
        }
      }
    }

    if (tiempoGrande>55) {
      movGrande = true;
    } 
    if (tiempoChico>55) {
      movChico = true;
    }
  }


  void dibujarGrande() {
    imageMode(CENTER);

    if (mouseX<width/2) {
      image(trazos[2], random(800), random(800));
    } else {
      image(trazos[0], random(800), random(800));
    }
  }

  void dibujarChico() {
    imageMode(CENTER);

    if (mouseX>width/2) {
      image(trazos[3], random(800), random(800));
    } else {
      image(trazos[1], random(800), random(800));
    }
  }
}
