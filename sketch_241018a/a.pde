int floor=3;//仮置き
int size=75;//スペースの長さ
int centerX=800;
int centerY=450;
int st=1;//線の太さ
int ST=3;
int colorA=90;
int colorB=0;


void re(String s,int x,int y,int w,int h,int f1){
  fill(f1);
  rect(x,y,w,h);
  textAlign(CENTER,CENTER);
  fill(0);
  text(s,x+w/2,y+h/2);
  textAlign(LEFT,TOP);
}

void fac2() {
}

void base() {
  textAlign(CENTER, CENTER);
  fill(200);
  if (floor==0) {
    rect(centerX, centerY, size*8, size*11);
  } else if (floor==3) {
    floor3();
  } else if (floor==2) {
    floor2();
  }else if(floor==1){
    floor1();
  }else if(floor==4){
    floor4();
  }else if(floor==5){
    floor5();
  }
  textAlign(LEFT, TOP);
}


void center() {
  centerX=centerX-size*4;
  centerY=centerY-size*5;
}

void keyPressed() {
  if (key=='1') {
    floor=1;
  } else if (key=='2') {
    floor=2;
  } else if (key=='3') {
    floor=3;
  } else if (key=='4') {
    floor=4;
  } else if (key=='5') {
    floor=5;
  } else if (key=='0') {
    floor=0;//お試し版
  }
}
