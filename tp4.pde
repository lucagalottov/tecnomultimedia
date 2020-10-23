String estado;

////PFont narracion, creditos;
PFont [] fuentes = new PFont[3];

//casa
PImage cocina, barbijosi, barbijono, fondo;
String[] casa = new String[2];

//buscar barbijo
PImage cama;
String[] buscarbarbijo = new String[2];

//ciudad
PImage ciudad, continuar;

//superm
PImage superm, volver;

//policia
PImage policia, continuar2;
String[] policiat = new String[3]; 

//cena
PImage cena;

//creditos
PImage creditos1, creditos2;
String[] creditos = new String[4];

//salirsinbarbijo
PImage casafrente;

//superm2
PImage buscarb, volvercasa;

//policia2
PImage pagar, huir;
String[] policiat2 = new String[3];

//huir
PImage correr, continuar3;

//atrapado
PImage atrapado;

//carcel
PImage carcel;

//casa2
PImage casa2, quedarse, hospital;
String[] hogar2 = new String[2];

//cementerio
PImage tumba;

//hospital
PImage hospital2;
String[] hospitalt = new String[2];


void setup() {
  size(800, 600);

  /////narracion = loadFont("BrowalliaNew-48.vlw");
  ////creditos = loadFont("BebasNeue-48.vlw");
  fuentes[0] = loadFont("BrowalliaNew-48.vlw");
  fuentes[1] = loadFont("BebasNeue-48.vlw");
  fuentes[2] = loadFont("Gotham-Medium-48.vlw");

  estado = "casa";

  //Casa
  cocina = loadImage("cocina.jpg");
  barbijosi = loadImage("Salir-con-barbijo.jpg");
  barbijono = loadImage("Salir-sin-barbijo.jpg");
  fondo = loadImage("fondo.jpg");
  casa[0] = "Revisas la heladera y observas que no tienes comida.";
  casa[1] = "Debes ir al supermercado.";

  //Buscar barbijo
  cama = loadImage("cama.jpg");
  buscarbarbijo[0] = "Te diriges a tu habitación a buscar tu barbijo para salir.";
  buscarbarbijo[1] = "Haz clic sobre él para continuar.";

  //ciudad
  ciudad = loadImage("ciudad.jpg");
  continuar = loadImage("continuar.png");

  //superm
  superm = loadImage("super.jpg");
  volver = loadImage("volver.png");

  //policia
  policia = loadImage("policia.jpg");
  continuar2 = loadImage("continuar2.png");
  policiat [0] = "Camino a casa, te encuentras con un control policial.";
  policiat [1] = "Los oficiales están corroborando el uso obligatorio del barbijo y tomando la temperatura.";
  policiat [2] = "Al ver que tienes todo en regla, te dejan continuar.";

  //cena
  cena = loadImage("cena.jpg");

  //creditos
  creditos1 = loadImage("creditos1.png");
  creditos2 = loadImage("creditos2.png");
  creditos[0] = "Luca Galotto Viganoni";
  creditos[1] = "85131/4";
  creditos[2] = "Teconología Multimedial 1";
  creditos[3] = "Comisión 2";

  //salirsinbarbijo
  casafrente = loadImage("casafrente.jpg");

  //superm2
  buscarb = loadImage("buscarb.jpg");
  volvercasa = loadImage("volvercasa.jpg");

  //policia2
  pagar = loadImage("pagar.jpg");
  huir = loadImage("huir.jpg");
  policiat2 [0] = "Camino a casa, te encuentras con un control policial.";
  policiat2 [1] = "Los oficiales están corroborando el uso obligatorio del barbijo y tomando la temperatura.";
  policiat2 [2] = "Al ver que no llevas puesto el barbijo, deciden cobrarte una multa.";

  //huir
  correr = loadImage("correr.jpg");
  continuar3 = loadImage("continuar3.png");

  //atrapado
  atrapado = loadImage("atrapado.jpg");

  //carcel
  carcel = loadImage("carcel.jpg");

  //casa2
  casa2 = loadImage("casa2.jpg");
  quedarse = loadImage("quedarse.jpg");
  hospital = loadImage("hospital.jpg");
  hogar2[0] = "Vuelves a casa y te acuestas a dormir.";
  hogar2[1] = "Al día siguiente te despiertas con fiebre y dolor muscular.";

  //cementerio
  tumba = loadImage("tumba.jpg");

  //hospital
  hospital2 = loadImage("hospital2.jpg");
  hospitalt[0] = "Das positivo en el test de Covid-19.";
  hospitalt[1] = "Te quedarás una semana aquí.";
}

void draw() {
  if (estado.equals("casa") ) {
    image(cocina, 0, 0);
    image(fondo, 0, 400); 
    fill(255);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(casa[0], 10, 435);
    text(casa[1], 10, 465);
    image(barbijosi, 10, 500);
    boton(10, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Salir con barbijo", 20, 533);
    boton(220, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Salir sin barbijo", 235, 533);
  } else if (estado.equals("buscarbarbijo") ) {
    image(cama, 0, 0);
    image(fondo, 0, 400);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(buscarbarbijo[0], 10, 435);
    text(buscarbarbijo[1], 10, 465);
  } else if (estado.equals("ciudad") ) {
    image(ciudad, 0, 0);
    image(fondo, 0, 400);
    txt("Camino al supermercado.", 10, 435, 32, LEFT);
    image(continuar, 650, 210);
  } else if (estado.equals("superm") ) {
    image(superm, 0, 0);
    image(fondo, 0, 400);
    txt("Realizas las compras exitósamente.", 10, 435, 32, LEFT);    
    image(volver, 10, 210);
  } else if (estado.equals("policia") ) {
    image(fondo, 0, 400);
    image(policia, 0, 0);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    for ( int i = 0; i < 3; i++) {
      text(policiat[i], 10, 435 + (i*30));
    }
    image(continuar2, 10, 210);
  } else if (estado.equals("cena") ) {
    image(fondo, 0, 400);
    image(cena, 0, 0);
    txt("Llegas a tu casa y preparas la cena.", 10, 435, 32, LEFT);
    txt("Presiona 'Enter' para finalizar.", 790, 590, 26, RIGHT);
  } else if (estado.equals("creditos") ) {
    background(0, 255);
    image(creditos1, 50, 50, 400, 200);
    image(creditos2, 350, 350, 400, 200);
    fill(255);
    textFont(fuentes[1]);
    textAlign(CENTER, CENTER);
    textSize(40);    
    for ( int a = 0; a < 4; a++) {
      text(creditos[a], width/2, 255 + (a*50));
    }   
    txt("Presiona 'Retroceder' para volver.", 790, 590, 26, RIGHT);
  } else if (estado.equals("salirsinbarbijo") ) {
    image(fondo, 0, 400);
    image(casafrente, 0, 0);
    txt("Decides arriesgarte y salir de tu casa sin barbijo.", 10, 435, 32, LEFT);
    image(continuar, 650, 210);
  } else if (estado.equals("superm2") ) {
    image(superm, 0, 0);
    image(fondo, 0, 400);
    txt("Te prohíben la entrada al supermercado debido a que no tienes barbijo.", 10, 435, 32, LEFT);
    boton(10, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Buscar barbijo", 20, 533);
    boton(220, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Volver a casa", 235, 533);
  } else if (estado.equals("policia2") ) {
    image(fondo, 0, 400);
    image(policia, 0, 0);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    for ( int b = 0; b < 3; b++) {
      text(policiat2[b], 10, 435 + (b*30));
    }   
    boton(10, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Pagar multa", 20, 533);
    boton(220, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Huír corriendo", 235, 533);
  } else if (estado.equals("huir") ) {
    image(fondo, 0, 400);
    image(correr, 0, 0);
    txt("Comienzas a correr, pero te das cuetna que los oficiales estan detrás de tí.", 10, 435, 32, LEFT);
    image(continuar3, 330, 280, 125, 125);
  } else if (estado.equals("atrapado") ) {
    image(fondo, 0, 400);
    image(atrapado, 0, 0);
    txt("Los policías logran ataparte y eres llevado a la comisaría.", 10, 435, 32, LEFT);
    image(continuar, 650, 310);
  } else if (estado.equals("carcel") ) {
    image(fondo, 0, 400);
    image(carcel, 0, 0);
    txt("Eres encarcelado...", 10, 435, 32, LEFT);
    txt("Presiona 'Enter' para finalizar.", 790, 590, 26, RIGHT);
  } else if (estado.equals("casa2") ) {
    image(fondo, 0, 400);
    image(casa2, 0, 0);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(hogar2[0], 10, 435);
    text(hogar2[1], 10, 465);
    boton(10, 500);
    textFont(fuentes[2]);
    textSize(22);
    text("Ir al hospital", 20, 533);
    boton(220, 500);
    textFont(fuentes[2]);
    textSize(20);
    text("Quedarse en casa", 235, 533);
  } else if (estado.equals("cementerio") ) {
    image(fondo, 0, 400);
    image(tumba, 0, 0);
    txt("Unos días después, mueres infectado de Covid-19.", 10, 435, 32, LEFT);
    txt("Presiona 'Enter' para finalizar.", 790, 590, 26, RIGHT);
  } else if (estado.equals("hospital") ) {
    image(fondo, 0, 400);
    image(hospital2, 0, 0);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(hospitalt[0], 10, 435);
    text(hospitalt[1], 10, 465);
    image(continuar, 650, 210);
  } else if (estado.equals("casa3") ) {
    image(fondo, 0, 400);
    image(casa2, 0, 0);
    txt("Vuelves a tu casa recuperado.", 10, 435, 32, LEFT);
    txt("Presiona 'Enter' para finalizar.", 790, 590, 26, RIGHT);
    ;
  }

  println(mouseX + " | " + mouseY);
}

void mousePressed() {
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

void keyPressed() {
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
