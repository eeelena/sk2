int button1Color;
int button2Color;
void setup(){
  size(300,300);
}
void draw(){
  fill(button1Color);
  rect(50,20,20,20);
  fill(button2Color);
  rect(20,50,20,20);
  if (mouseX > 20 && mouseX < 40&&
    mouseY >20 && mouseY < 40) {
    button1Color = color(255, 0, 0);
  } else {
    button1Color = color(100);
  }
// click
if (mouseX >50&& mouseX < 70 &&
    mouseY > 20 && mouseY < 40) {//hover
    button1Color = color(255, 0, 0);
    if(mousePressed){//click
         button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
  if (mouseX > 20 && mouseX < 40&&
    mouseY >50&& mouseY <70) {
    button2Color = color(255, 0, 0);
  } else {
    button2Color = color(100);
  }
// click
if (mouseX >20&& mouseX < 40 &&
    mouseY >50 && mouseY < 70) {//hover
    button2Color = color(255, 0, 0);
    if(mousePressed){//click
         button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
}