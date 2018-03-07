int checkStates(float bx,float by,float w,float h){
int result;
if(mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    //buttonColor = color(255, 0, 0);
    result = 1;
    if(mousePressed){//click
    //buttonColor = color(random(255), random(255), random(255));
   // btnColor = color(100);
    result =2;
  }
    } else {
      result =0;
    }
    return result;
}
 

  color btnColor=color(100);
  float bx,by,w,h;
  void setup() {
    size(800,500);
    w=100;
    h=100;  
  }
  
  void draw(){
    for(int by =0; by <height;by += 2*h){
    for(int bx =0; bx <width;bx += 2*w){
    
  int state = checkStates(bx,by,w,h);
  println(state);
  if (state==0)btnColor=color(0);
  if (state==1)btnColor=color(100);
  if (state==2)btnColor=color(random(255),random(255),random(255));
 fill(btnColor);
 rect(bx,by,w,h);
  }
    }
  }