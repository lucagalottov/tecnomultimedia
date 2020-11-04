class Juego {

  String estado;  
  Jugador j;
  Finales finales;
  Corona[] co = new Corona[4];
  Disparo disparo;
  ArrayList<Disparo> allDisparo = new ArrayList<Disparo>();
  PImage fondo;
  PFont fuente;
  int vidas;

  Juego() {
    estado = "menu";
    j = new Jugador(width/2, height/4*3.5);
    finales = new Finales();
    for (int i = 0; i<co.length; i++) {
      co[i] = new Corona(random(0, width), random(0, height/2), random(150, 250), random(3, 5));
    }

    vidas= 3;

    fondo = loadImage("fondo.jpg");
    fuente = loadFont("GothamBold-50.vlw");
    noCursor();
  }


  void moverC() {
    if (estado.equals("jugar")) {
      for (int i = 0; i<co.length; i++) {
        co[i].moverC();
      }
    }
  }


  void disparar() {
    if (estado.equals("jugar")) {
      Disparo disparo = new Disparo(j.x, j.y, 0, -12);
      allDisparo.add(disparo);
    }
  }

  void moverJ() {
    if (estado.equals("jugar")) {
      j.x=mouseX;
    }
  }

  void dibujar() {
    println(estado);

    if (juego.estado.equals("menu")) {
      pushStyle();
      tint(50);
      imageMode(CENTER);
      fondo.resize(1000, 1000);
      image(juego.fondo, width/2, height/2);
      textAlign(CENTER, CENTER);
      textSize(48);
      textFont(juego.fuente);

      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        fill(0, 255, 0);
      } else fill(255);

      text("JUGAR", width/2, height/2);

      tint(255);
      juego.j.globulo.resize(120, 120);
      image(juego.j.globulo, mouseX, mouseY);
      popStyle();
    }

    if (estado.equals("jugar")) {

      pushStyle();
      imageMode(CORNER);
      fondo.resize(1000, 1000);
      image(fondo, 0, 0);

      j.dibujar();

      textAlign(CENTER, CENTER);

      text("VIDAS: " + vidas, width-125, height-30);
      popStyle();

      for (int i = 0; i<co.length; i++) {
        co[i].dibujar();
        co[i].matar(allDisparo);
      }
    }

    for (Disparo thisDisparo : allDisparo) {
      thisDisparo.dibujar();
    }

    if (juego.estado.equals("ganar")) {
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

      text("VOLVER", width/2, height/2);
      fill(0, 255, 0);
      text("HAS GANADO", width/2, height/4);

      tint(255);
      juego.j.globulo.resize(120, 120);
      image(juego.j.globulo, mouseX, mouseY);
      popStyle();
    }

    if (juego.estado.equals("perder")) {
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

      text("VOLVER", width/2, height/2);
      fill(255, 0, 0);
      text("HAS PERDIDO", width/2, height/4);

      tint(255);
      juego.j.globulo.resize(120, 120);
      image(juego.j.globulo, mouseX, mouseY);
      popStyle();
    }

    finales.perder();
    finales.ganar();
  }

  void ganar() {
    for (int i =0; i < co.length; i++) {
      if (co[0].x > 1000 && co[0].y > 1000 && co[1].x > 1000 && co[1].y > 1000 && co[2].x > 1000 && co[2].y > 1000 && co[3].x > 1000 && co[3].y > 1000) {
        estado = "ganar";
      }
    }
  }

  void perder() {

    for ( int i = 0; i < co.length; i++ ) {

      float di = dist( j.x, j.y, co[i].x, co[i].y );

      if ( di < co[i].d/2 ) { 
        vidas--;
        co[i].x = random(0, width);
        co[i].y = random(0, 300);
      }
    }

    if (vidas== 0) {
      estado = "perder";
    }
  }

  void cambiar() {
    siguiente("menu", "jugar");
    siguiente("ganar", "menu");  
    siguiente("perder", "menu"); 
    
  }

  void siguiente(String e1, String e2) {
    if (juego.estado.equals (e1)) {
      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        juego.estado= e2;
        vidas = 3;

        for ( int i = 0; i < co.length; i++ ) {
          co[i].x= random(0, width);  
          co[i].y=random(0, height/2);
          co[i].d=random(150, 250);
          co[i].vel=random(4, 7);
        }
      }
    }
  }
}
