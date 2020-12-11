String estado;

//Casa
PImage barbijosi, barbijono;
PImage fondo;
PImage cocina;


void setup() {
  size(800, 600);

  estado = "casa";

  textAlign(CENTER, CENTER);

  barbijosi = loadImage("Salir-con-barbijo.jpg");
  barbijono = loadImage("Salir-sin-barbijo.jpg");
  fondo = loadImage("fondo.jpg");
  cocina = loadImage("cocina.jpg");
}

void draw() {
  if (estado.equals("casa") ) {
    image(cocina, 0, 0);
    fill(0, 255);
    image(fondo, 0, 400); 
    fill(255);
    textSize(28);
    textAlign(LEFT);
    text("Revisas la heladera y observas que no tienes comida.", 10, 435);
    text("Debes ir al supermercado.", 10, 465);
    image(barbijosi, 10, 500);
    image(barbijono, 220, 500);
  }


  println(mouseX + " | " + mouseY);
}
