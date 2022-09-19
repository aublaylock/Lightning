void setup(){
  size(1000,1000);
  frameRate(20);
}
void draw(){
  background(100,100,100);
  stroke(0,0,0);
  strokeWeight(3);
  fill(50,50,50);
  triangle(300,1000,700,1000,500,500);
  splitter(500,600);
  fill(150,150,150);
  ellipse(500,500,400,400);
  fill(0,0,0);
  ellipse(500,500,5,5);
  if(mousePressed){
    electricity(mouseX, mouseY);
    electricity(mouseX, mouseY);
    electricity(mouseX, mouseY);
  }
  else{
    electricity((int)(Math.random()*1001), (int)(Math.random()*1001));
    electricity((int)(Math.random()*1001), (int)(Math.random()*1001));
    electricity((int)(Math.random()*1001), (int)(Math.random()*1001));
  }
}
void electricity(int x, int y){
  int prevX = 500;
  int prevY = 500;
  int curX = 500;
  int curY = 500;
  stroke(0,0,75);
  
  while(Math.sqrt((curX-500)*(curX-500) + (curY-500)*(curY-500))<200){
    
    curX += (x-500)/50+(int)(Math.random()*10-5);
    curY += (y-500)/50+(int)(Math.random()*10-5);
    line(prevX, prevY, curX, curY);
    prevX=curX;
    prevY=curY;
  }
  fill(0,0,100,50);
  ellipse(curX, curY, 30, 30);
}

void splitter(int x, int y){
  //System.out.println(x);
  if(y>1000){
    return;
  }
  int newX = x + (int)(Math.random()*21)-10;
  int newY = y + 5;
  if((int)(Math.random()*50)==5){
    line(x,y,newX,newY);
    splitter(newX,newY);
    line(x,y,newX,newY);
    splitter(newX,newY);
  }
  else{
    line(x,y,newX,newY);
    splitter(newX, newY);
  }
}
