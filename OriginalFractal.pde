boolean pressed = false;
public void setup(){
 size(800,800); 

}

public void draw(){
 background(0);
 sierpinski(100,400,700);
}

public void sierpinski(int x, int y, int len){
  if (len <= 50){
    scale(x,y);
  }
  else{
    fill((float)(Math.random()*256),(float)(Math.random()*256),
    (float)(Math.random()*256));
    sierpinski(x,y,len/2);
    sierpinski(x+len/4,y-len/4,len/2);
    sierpinski(x+len/4,y+len/4,len/2);
    sierpinski(x+len/2,y,len/2);
  }
}

public void mousePressed(){
  if (pressed == false){
    noLoop();
    pressed = true;
  }
  else{
     loop();
     pressed = false;
  } 
}

void scale(int x, int y) {
  beginShape();
  curveVertex(x, y);
  curveVertex(x-20, y);
  curveVertex(x-20, y-20);
  curveVertex(x-20, y-30);
  curveVertex(x+10, y+10);
  curveVertex(x+10, y+20);
  curveVertex(x+10, y-10);
  endShape();
  ellipse(x,y,20,20);
  ellipse(x,y,10,10);
}
