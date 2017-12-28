 float circleX;
float circleY;
float xspeed = 5;
float yspeed = 2;

void setup(){
  size(500,500);
  circleX = 10;
  circleY = 10;
  
}
void draw(){
background(51);
fill(102);
stroke(255);
ellipse(circleX, circleY, 32, 32);
circleX = circleX + xspeed;
circleY = circleY + yspeed;

if(circleX > width || circleX < 0 ){
  xspeed *= -1;
}

if(circleY > width || circleY < 0 ){
  yspeed *= -1;
}

}