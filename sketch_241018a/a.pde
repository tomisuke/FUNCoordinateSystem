int floor=5;//仮置き
int size=75;//スペースの長さ
int centerX=800;//方眼紙の中央の座標です。
int centerY=450;
int st=1;//線の太さ
int ST=3;//外枠の太さ
int colorA=90;
int colorB=0;

void center() {//座標左上にずらしました
  centerX=centerX-size*4;
  centerY=centerY-size*5;
}

void re(String s,int x,int y,int w,int h,int f1){
  fill(f1);
  rect(x,y,w,h);
  textAlign(CENTER,CENTER);
  fill(0);
  text(s,x+w/2,y+h/2);
  textAlign(LEFT,TOP);
}

void le(int x1,int y1,int x2,int y2){//lineを引く省略のための関数
  line(centerX+size*x1,centerY+size*y1,centerX+size*x2,centerY+size*y2);
}

void ce(int x1,int y1,int x2,int y2){//rectを省略のための関数
  rect(centerX+size*x1,centerY+size*y1,size*x2,size*y2);
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
