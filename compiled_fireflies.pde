class Firefly{
 float x = random(width);
 float y = random(height);
 float a = random(10,12);
 float xspeed = 10;
 float yspeed = 10;
int alpha = 1, delta = 1; 
boolean fade;
  
  void display(){
  stroke(217, 192, 157, alpha);
  strokeWeight(10);
  fill(240, 225, 174, alpha);
  ellipse(x,y,10,10); 
  }

  void twinkle() { 
  //fade in and out 
 if (alpha == 0 || alpha == 255) { 
    delta= -delta; 
  } 
  alpha += delta; 
}
  
  void update(){
  x = x + random(-1.5,1.5);
  y = y + random(-1.5,1.5);
  } 
}

int alpha = 1, delta = 1; 
boolean fade;

Firefly[] firefly = new Firefly[100];

int total= 1;

void settings() {
  size(900, 900);
}

void mousePressed(){
  total = total + 1;
}

void setup(){
  smooth(); 
  fade = false; 
for(int i=0; i < firefly.length; i++){
firefly[i] = new Firefly();
}
}

void draw(){
background(6, 11, 16);
for (int i = 0; i < total; i++) {
    // Check if mouse is over the Stripe
    firefly[i].update();
    firefly[i].display();
    firefly[i].twinkle();
  }
}