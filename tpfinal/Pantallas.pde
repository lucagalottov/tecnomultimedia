class Pantallas {
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
  PImage creditos1, creditos2, creditos3;
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

  Pantallas() {
    //fuentes
    fuentes[0] = loadFont("BrowalliaNew-48.vlw");
    fuentes[1] = loadFont("BebasNeue-48.vlw");
    fuentes[2] = loadFont("Gotham-Medium-48.vlw");

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
    creditos3 = loadImage("creditos3.png");
    creditos[0] = "Luca Galotto Viganoni y Juana Perone";
    creditos[1] = "Teconología Multimedial 1";
    creditos[2] = "Comisión 2";

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
    hospitalt[1] = "Debes luchar por tu vida.";
  }

  void casa() {
    image(cocina, 0, 0, width, height-200);
    image(fondo, 0, height-200, width, height/3); 
    fill(255);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(casa[0], 10, height-165);
    text(casa[1], 10, height-135);
    image(barbijosi, 10, height-100);
    boton(10, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Salir con barbijo", 20, height-67);
    boton(220, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Salir sin barbijo", 235, height-67);
  }

  void buscarbarbijo() {
    image(cama, 0, 0, width, height-200);
    image(fondo, 0, height-200, width, height/3);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(buscarbarbijo[0], 10, height-165);
    text(buscarbarbijo[1], 10, height-135);
  }

  void ciudad() {    
    pantalla1(ciudad, "Camino al supermercado.", continuar, width-150);
  }

  void superm() {   
    pantalla1(superm, "Realizas las compras exitósamente.", volver, 10);
  }

  void policia () {
    image(fondo, 0, height-200, width, height/3);
    image(policia, 0, 0, width, height-200);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    for ( int i = 0; i < 3; i++) {
      text(policiat[i], 10, height-165 + (i*30));
    }
    image(continuar2, 10, height-390);
  }

  void cena() {
    pantalla2(cena, "Llegas a tu casa y preparas la cena.", "Presiona 'Enter' para finalizar.");
  }

  void creditos() {
    background(0, 255);
    image(creditos1, 50, 50, 400, 200);
    image(creditos2, width/2.85, height/2.85, 400, 200);
    pushStyle();
    imageMode(CENTER);
    image(creditos3, width-220, height-200, 400, 200);
    popStyle();
    fill(255);
    textFont(fuentes[1]);
    textAlign(CENTER, CENTER);
    textSize(60);    
    for ( int a = 0; a < 3; a++) {
      text(creditos[a], width/2, (height/2)-100 + (a*60));
    }   
    txt("Presiona 'Retroceder' para volver.", width-10, height-10, 26, RIGHT);
  }

  void salirsinbarbijo() {
    pantalla1(casafrente, "Decides arriesgarte y salir de tu casa sin barbijo.", continuar, width-150);
  }

  void superm2() {
    image(superm, 0, 0, width, height-200);
    image(fondo, 0, height-200, width, height/3);
    txt("Te prohíben la entrada al supermercado debido a que no tienes barbijo.", 10, height-165, 32, LEFT);
    boton(10, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Buscar barbijo", 20, height-67);
    boton(220, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Volver a casa", 235, height-67);
  }

  void policia2() {
    image(fondo, 0, height-200, width, height/3);
    image(policia, 0, 0, width, height-200);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    for ( int b = 0; b < 3; b++) {
      text(policiat2[b], 10, height-165 + (b*30));
    }   
    boton(10, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Pagar multa", 20, height-67);
    boton(220, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Huír corriendo", 235, height-67);
  }

  void huir() {
    image(fondo, 0, height-200, width, height/3);
    image(correr, 0, 0, width, height-200);
    txt("Comienzas a correr, pero te das cuenta que los oficiales estan detrás de tí.", 10, height-165, 32, LEFT);
    image(continuar3, width/2.5, height/1.72, 125, 125);
  }

  void atrapado() {
    pantalla1(atrapado, "Los policías logran ataparte y eres llevado a la comisaría.", continuar, width-150 );
  }

  void carcel() {
    pantalla2(carcel, "Eres encarcelado...", "Presiona 'Enter' para finalizar.");
  }

  void casa2() {
    image(fondo, 0, height-200, width, height/3);
    image(casa2, 0, 0, width, height-200);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(hogar2[0], 10, height-165);
    text(hogar2[1], 10, height-135);
    boton(10, height-100);
    textFont(fuentes[2]);
    textSize(22);
    text("Ir al hospital", 20, height-67);
    // boton(220, height-100);
    textFont(fuentes[2]);
    textSize(20);
    // text("Quedarse en casa", 235, height-67);
  }

  void cementerio() {
    pantalla2(tumba, "Unos días después, mueres infectado de Covid-19.", "Presiona 'Enter' para finalizar." );
  }

  void hospital() {
    image(fondo, 0, height-200, width, height/3);
    image(hospital2, 0, 0, width, height-200);
    textFont(fuentes[0]);
    textSize(32);
    textAlign(LEFT);
    text(hospitalt[0], 10, height-165);
    text(hospitalt[1], 10, height-135);
    image(continuar, width-150, height-390);
  }

  void casa3() {  
    pantalla2(casa2, "Vuelves a tu casa recuperado.", "Presiona 'Enter' para finalizar.");
  }

  void boton (float x, float y) {

    pushStyle();

    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(x, y, 200, 50);

    popStyle();
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

  void pantalla1(PImage img1, String texto, PImage img2, int x) {
    image(fondo, 0, height-200, width, height/3);
    image(img1, 0, 0, width, height-200);
    txt(texto, 10, height-165, 32, LEFT);
    image(img2, x, height-390);
  }

  void pantalla2(PImage img, String texto1, String texto2) {
    image(fondo, 0, height-200, width, height/3);
    image(img, 0, 0, width, height-200);
    txt(texto1, 10, height-165, 32, LEFT);
    txt(texto2, width-10, height-10, 26, RIGHT);
  }
}
