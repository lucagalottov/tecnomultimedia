/* Trabajo Práctico Final
 Juana Peroné y Luca Galotto Viganoni - Grupo 6
 Tecnología Multimedial 1
 FdA UNLP 2020
 */

import processing.sound.*;
SoundFile musicadefondo;
SoundFile ganaste;
SoundFile colision;
SoundFile musicaJ;

Aventura aventura;

void setup() {
  size(1000, 1000);
  surface.setResizable(true);

  musicadefondo = new SoundFile( this, "musicadefondo.wav");
  ganaste= new SoundFile(this, "ganaste.wav");
  colision= new SoundFile(this, "colision.wav");
  musicaJ= new SoundFile(this, "musicaJ.mp3");
  
  musicadefondo.loop();
  
  aventura = new Aventura();
}

void draw() {
  aventura.dibujar();
  aventura.dibujarJuego();
}

void mousePressed() {
  aventura.cambiarP();
  aventura.mouse();
}

void keyPressed() {
  aventura.teclas();
}

void mouseMoved() {
  aventura.moverJu();
}
