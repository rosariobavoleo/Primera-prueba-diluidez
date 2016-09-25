/**
 * Pointillism
 * by Daniel Shiffman. 
 * 
 * Mouse horizontal location controls size of dots. 
 * Creates a simple pointillist effect using ellipses colored
 * according to pixels in an image. 
 */

PImage img;
int smallPoint, largePoint;

void setup() {
  size(1151, 819);

  img = loadImage("imagen3.jpg");
  noStroke();
  smallPoint = 25;
  largePoint = 50;
  
 
}

void draw() { 
 
  background(img);
  
 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height/2));
  //color pix = img.get(x, y);
  fill(0);
  rect(x, y, pointillize, pointillize);
}