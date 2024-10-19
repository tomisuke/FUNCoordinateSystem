int floor=3;//仮置き
int size=75;//スペースの長さ
int centerX=800;
int centerY=450;
int st=1;//線の太さ
int ST=3;
int colorA=90;
int colorB=0;

void base3() {
  noStroke();
  rect(centerX, centerY, size, size*9);
  rect(centerX+size, centerY+size*3, size*7, size*6);
  rect(centerX+size*5, centerY+size*9, size*3, size);//全体
}

void floor3() {
  fill(200);
  base3();
  fill(0);
  for (int i=0; i<9; i++) {
    strokeWeight(st);
    stroke(0);
    if (i<2) {
      line(centerX+size*i, centerY, centerX+size*i, centerY+size*9);
    } else if (i<5) {
      line(centerX+size*i, centerY+size*3, centerX+size*i, centerY+size*9);
    } else {
      line(centerX+size*i, centerY+size*3, centerX+size*i, centerY+size*10);
    }
  }
  for (int j=3; j<10; j++) {
    line(centerX, centerY+size*j, centerX+size*8, centerY+size*j);
    if (j<6) {
      line(centerX, centerY+size*(j-3), centerX+size, centerY+size*(j-3));
    }
    line(centerX+size*5, centerY+size*10, centerX+size*8, centerY+size*10);
  }

  strokeWeight(st);
  fac3();

  fill(0);
  //strokeWeight(ST);
  //line(centerX,centerY,centerX+size,centerY);
  //line(centerX+size,centerY,centerX+size,centerY+size*3);
  //line(centerX+size,centerY+size*3,centerX+size*8,centerY+size*3);
  //line(centerX+size*8,centerY+size*3,centerX+size*8,centerY+size*10);
  //line(centerX+size*8,centerY+size*10,centerX+size*5,centerY+size*10);
  //line(centerX+size*5,centerY+size*10,centerX+size*5,centerY+size*9);
  //line(centerX+size*5,centerY+size*9,centerX,centerY+size*9);
  //line(centerX,centerY+size*9,centerX,centerY);
}

void fac3() {
  mas(30701);//原点
  mas(30901);//ミュージアム
  mas(31301);//ライブラリ
  mas(31501);
  mas(31701);
  mas(31901);
  mas(32101);
  mas(32301);
  mas(12301);
}
