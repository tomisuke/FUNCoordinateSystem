int textsize=20;//テキストサイズの変数を追加した
int toileColor=180;//トイレの色

void drawID() {
  println("ID");
  int x=centerX - 20;
  int y=centerY;
  for (int i = 20; i>=0; i--) {
    println("ID2");
    textSize(20);
    fill(0);
    textAlign(CENTER, CENTER);
    text(i, x, y);
    y += size/2;
    textAlign(LEFT, TOP);
    textSize(20);
    fill(255);
  }
  int w=centerX;
  int h=centerY+20+size*10;
  for (int j=0; j<=16; j++) {
    fill(0);
    textAlign(CENTER, CENTER);
    text(j, w, h);
    w+=size/2;
    textAlign(LEFT, TOP);
    textSize(20);
    fill(255);
  }
  lines();
}

int n=8;//分割数
int m=4;//移動分20
int num=40;

void lines() {
  fill(200);
  int h=centerY;
  for (int j=0; j<9; j++) {
    h=centerY;
    for (int i=0; i<=num; i++) {
      li(centerX+size*j, h-10);
      h+=size/m;
      line(centerX+size*j, centerY+size*10, centerX+size*j, centerY+size*10+8);
    }
  }
  int g=centerX;
  for (int j=0; j<11; j++) {
    g=centerX;
    for (int i=0; i<=32; i++) {
      la(centerY+size*j, g-8);
      g+=size/m;
      line(centerX+size*8, centerY+size*j, centerX+size*8+8, centerY+size*j);
    }
  }
}

int cx=1410;
int cy=140;
int cw=100;

void clock(){
  strokeWeight(5);
  noFill();
  ellipse(cx,cy,cw,cw);
  fill(0);
  triangle(cx,cy-cw/2+15,cx+20,cy+cw/2-15,cx-20,cy+cw/2-15);
  textSize(20);
  textAlign(CENTER,CENTER);
  text("ブラインド",cx,cy-cw/2-20);
  textAlign(LEFT,TOP);
  textSize(20);
}

void li(int a, int b) {
  line(a, b, a, b+size/n);
}

void la(int b, int a) {
  line(a, b, a+size/n, b);
}

void center() {//座標左上にずらしました
  centerX=centerX-size*4;
  centerY=centerY-size*5;
}

void stair(int x, int y) {//おてがる階段入れ関数
  textAlign(CENTER, CENTER);
  text("階段", centerX+size*x-size/2, centerY+size*y+size/2);
  textAlign(LEFT, TOP);
}

void wc(String s, int x, int y, int w, int h) {//おてがるトイレ入れ関数
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(toileColor);
  rect(centerX+x, centerY+y, w, h);
  fill(0);
  text(s, centerX+x+w/2, centerY+y+h/2);
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

void toilet() {//トイレの場所を階段みたいに入れる
  if (floor==3) {
    wc("wc", size*4/3, size*14/3, size*2/3, size*1/3);
    wc("wc", size*5/3, size*5, size*1/3, size*2/3);
    wc("", size*4/3, size*7, size*1/3, size);
    wc("wc", size*16/3, size*13/3, size*2/3, size*2/3);
    wc("", size*16/3, size*25/3, size*2/3, size*2/3);
  } else if (floor==2) {
    wc("wc", size*4/3, size*11/3, size*2/3, size*1/3);
    wc("", size*16/3, size*3, size*1/3, size);
  } else if (floor==1) {
    wc("wc", size*4/3, size*8/3, size*2/3, size*1/3);
    wc("", size*16/3, size*2, size*1/3, size);
  } else if (floor==4) {
    wc("wc", size, size*4, size*1/3, size*2/3);
    wc("", size*4/3, size*7, size*1/3, size);
    wc("wc", size*5, size*4, size*1/3, size*2/3);
    wc("", size*5, size*25/3, size*1/3, size*2/3);
  } else if (floor==5) {
    wc("wc", size, size*7, size*1/3, size);
    wc("wc", size*5, size*7, size*1/3, size);
    wc("wc", size*5, size*5, size*1/3, size);
    wc("wc", size*1/3, size*11/3, size*1/3, size*1/3);
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

  toilet();//トイレ入れるやつ
  stairs();//階段入れるやつ
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
