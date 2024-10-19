int textsize=20;//テキストサイズの変数を追加した
int toileColor=#008080;//トイレの色

void center() {//座標左上にずらしました
  centerX=centerX-size*4;
  centerY=centerY-size*5;
}

void stair(int x, int y) {//おてがる階段入れ関数
  textAlign(CENTER, CENTER);
  text("階段", centerX+size*x-size/2, centerY+size*y+size/2);
  textAlign(LEFT, TOP);
}

void wc(int x,int y,int w,int h){//おてがるトイレ入れ関数
  textAlign(CENTER, CENTER);
  textSize(10);
  fill(toileColor);
  rect(centerX+size*x,centerY+size*y,size*w,size*h);
  text("wc", centerX+size*x-size/2, centerY+size*y+size/2);
  fill(100);
  textSize(textsize);
  textAlign(LEFT, TOP);
}

void stairs() {//各階の階段を表示する
  if (floor==3) {
    stair(2, 6);
    stair(2, 7);
    stair(6, 6);
    stair(2, 3);
    stair(6, 3);
    stair(6, 8);
  } else if (floor==2) {
    stair(2, 3);
    stair(6, 3);
    stair(2, 2);
    stair(6, 2);
  } else if (floor==4) {
    stair(2, 6);
    stair(2, 7);
    stair(6, 6);
    stair(2, 3);
    stair(6, 3);
    stair(6, 8);
  } else if (floor==1) {
    stair(2, 2);
    stair(6, 2);
  } else if (floor==5) {
    stair(2, 3);
    stair(6, 3);
    stair(6, 6);
    stair(2, 6);
  }
}

void toilet(){//トイレの場所を階段みたいに入れる
  if(floor==3){
    wc(2,7,1/2,1);
  }else if(floor==2){
    
  }else if(floor==1){
    
  }else if(floor==4){
    
  }else if(floor==5){
  
  }
}

void re(String s, int x, int y, int w, int h, int f1) {//部屋
  fill(f1);
  rect(x, y, w, h);
  textAlign(CENTER, CENTER);
  fill(0);
  text(s, x+w/2, y+h/2);
  textAlign(LEFT, TOP);
}



void le(int x1, int y1, int x2, int y2) {//lineを引く省略のための関数
  line(centerX+size*x1, centerY+size*y1, centerX+size*x2, centerY+size*y2);
}

void ce(int x1, int y1, int x2, int y2) {//rectを省略のための関数
  rect(centerX+size*x1, centerY+size*y1, size*x2, size*y2);
}

void base() {//礎
  textAlign(CENTER, CENTER);
  fill(200);
  if (floor==3) {
    floor3();
  } else if (floor==2) {
    floor2();
  } else if (floor==1) {
    floor1();
  } else if (floor==4) {
    floor4();
  } else if (floor==5) {
    floor5();
  }
  textAlign(LEFT, TOP);

  stairs();//階段入れるやつ
  toilet();
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
  }
}
