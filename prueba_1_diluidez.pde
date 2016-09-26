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
  smallPoint = 25;
  largePoint = 50;
  imageMode(CENTER);
  noStroke();
  background(img);
  
 
}

void draw() { 
 
 
  float pointillize = map( mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width ));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix,128);
  rect(x, y, pointillize, pointillize);
  
  
  
  
  
}