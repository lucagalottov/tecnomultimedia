class Juego {
  SoundFile ganaste;
  SoundFile perdiste;
  Jugador j;
 Finales finales;
  Corona[] co = new Corona[4];
  Disparo disparo;
  ArrayList<Disparo> allDisparo = new ArrayList<Disparo>();
  PImage fondo2;
  PFont fuente2;
  int vidas;

  Juego() {
    j = new Jugador(width/2, height/1.13);
   finales = new Finales();
    for (int i = 0; i<co.length; i++) {
      co[i] = new Corona(random(0, width), random(0, height/2), random(150, 250), random(3, 5));
    }

    vidas= 3;

    fondo2 = loadImage("fondoJ.jpg");
    fuente2 = loadFont("GothamBold-50.vlw");
  }


  void moverC() {
    if (aventura.estado.equals("jugar")) {
      for (int i = 0; i<co.length; i++) {
        co[i].moverC();
      }
    }
  }


  void disparar() {
    if (aventura.estado.equals("jugar")) {
      Disparo disparo = new Disparo(j.x, j.y, 0, -12);
      allDisparo.add(disparo);
      
    }
  }

  void moverJ() {
    if (aventura.estado.equals("jugar")) {
      j.x=mouseX;
    }
  }

  void dibujar() {


    if (aventura.estado.equals("menu")) {
      musicadefondo.stop();
      musicaJ.loop();
      
      pushStyle();
      tint(50);
      imageMode(CENTER);
      fondo2.resize(width, height);
      image(fondo2, width/2, height/2, width, height);
      textAlign(CENTER, CENTER);
      textSize(48);
      textFont(fuente2);

      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        fill(0, 255, 0);
      } else fill(255);

      text("JUGAR", width/2, height/2);

      tint(255);
      j.globulo.resize(120, 120);
      image(j.globulo, mouseX, mouseY);
      popStyle();
    }

    if (aventura.estado.equals("jugar")) {
      
      pushStyle();
      imageMode(CORNER);
      fondo2.resize(width, height);
      image(fondo2, 0, 0);

      j.dibujar();

      textAlign(CENTER, CENTER);
      textSize(48);
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
    
   finales.perder();//-----
   finales.ganar();//------
    
  }

  void ganar() {
    for (int i =0; i < co.length; i++) {
      if (co[0].x > 1000 && co[0].y > 1000 && co[1].x > 1000 && co[1].y > 1000 && co[2].x > 1000 && co[2].y > 1000 && co[3].x > 1000 && co[3].y > 1000) {
        aventura.estado = "ganar";
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
      aventura.estado = "perder";
    }
  }

  void cambiar() {
    if (aventura.estado.equals ("menu")) {
      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        aventura.estado= "jugar";
        vidas = 3;

        for ( int i = 0; i < co.length; i++ ) {
          co[i].x= random(0, width);  
          co[i].y=random(0, height/2);
          co[i].d=random(150, 250);
          co[i].vel=random(4, 7);
        }
      }
    }
       
    siguiente("ganar", "casa3");  
    siguiente("perder", "cementerio");
  }

  void siguiente(String e1, String e2) {
    if (aventura.estado.equals (e1)) {
      if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-20 && mouseY < height/2+20) {
        aventura.estado= e2;
        vidas = 3;
        musicaJ.stop();
        musicadefondo.loop();

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
