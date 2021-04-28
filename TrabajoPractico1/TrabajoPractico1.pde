/* Trabajo Práctico 1
 Juana Peroné, Gustavo Perugini y Luca Galotto Viganoni
 Tecnología Multimedial 1
 FdA UNLP 2020
 */

GdeI g;

void setup() {
  size(800, 800);
  
  colorMode(HSB, 360, 100, 100);
  background(random(360), 70, 100);
  
  g = new GdeI();
}

void draw() {
  g.actualizar();
  if (g.movGrande) {
    g.dibujarGrande();
  } else if (g.movChico) {
    g.dibujarChico();
  }
}
