//suelo
PImage suelo;
PImage robot;
float posXsuelo;

//cielo
color cielo;
PImage montana1;
PImage montana2;

//creditos
PFont creditos;
String producer;
String director1;
String director2;
String p1;
String p2;

void setup() {
  size(600, 500);
  background(255);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  cielo = color(24, 24, 45);
  suelo = loadImage("Fondo.png");
  robot = loadImage("robot.png");
  posXsuelo = 1;
  creditos = loadFont("FinalFantasy-50.vlw");

  montana1 = loadImage("montana1.png");
  montana2 = loadImage("montana2.png");

  producer = "HIRONOBU SAKAGUCHI";
  director1 = "YOSHINORI KITASE";
  director2 = "HIROYUKI ITOU";
  p1 = "KEN NARITA";
  p2 = "KIYOSHI YOSHI I";

  frameRate(30);
}

void draw() {
  //suelo
  image(suelo, width/2, 250+posXsuelo++%125, 1200, 600);

  //robots
  image(robot, width/2, 430);
  image(robot, 355, 340);
  image(robot, 240, 280);

  //cielo
  fill(cielo);
  rect(0, 0, width, 200);
  //montañas
  image(montana1, 65, 155, 200, 92);
  image(montana2, 530, 155, 200, 92);

  //creditos
  textFont(creditos);
  fill(255);
  textSize(42);
  text("PRODUCER", 650-frameCount, 65);
  textSize(65);
  text(producer, 650-frameCount, 100);

  textSize(42);
  text("DIRECTOR", 1200-frameCount, 65);
  textSize(65);
  text(director1, 1200-frameCount, 100);
  text(director2, 1200-frameCount, 135);

  textSize(42);
  text("MAIN PROGRAMMER", 1750-frameCount, 65);
  textSize(65);
  text(p1, 1750-frameCount, 100);
  text(p2, 1750-frameCount, 135);


  //nieve
  ellipse(random(width), random(200), 10, 10);
  ellipse(random(width), random(200), 20, 20);

  //println("X:" + mouseX);
  //println("Y:" + mouseY);
}
