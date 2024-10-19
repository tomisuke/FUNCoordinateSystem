int enterC=255;
int libC=100;//ライブラリ（以下色の指定）
int musC=100;//ミュージアム
int gymC=100;//体育館
int medC=100;//医務室と音スタ
int socC=100;//社会提携
int bigC=100;//大講義室
int workC=100;//工房
int eleC=100;//えれくと工房
int c365C=100;//36n
int c364C=100;
int c363C=100;
int c322C=100;//研究室
int c325C=100;
int c328C=100;
int c331C=100;
int c334C=100;

void fac3(){
  int x=centerX;
  int y=centerY;
  
  re("玄関",x,y+size*25/4,size/3,size/2,enterC);
  
  re("ライブラリ",x,y,size,size*6,libC);//施設
  re("ミュージアム",x,y+size*7,size,size,musC);
  re("体育館",x+size*6,y+size*7,size*2,size*3,gymC);
  re("医務室,音スタ",x+size*2,y+size*8,size,size,medC);
  re("社会提携センター",x+size*2,y+size*7,size,size,socC);
  re("大講義室",x+size*6,y+size*5,size*2,size,bigC);//教室
  re("工房",x+size*4,y+size*7,size,size*2,workC);
  re("えれ工",x+size*3,y+size*7,size,size*2,eleC);
  re("365",x+size*4,y+size*5,size,size,c365C);
  re("364",x+size*3,y+size*5,size,size,c365C);
  re("363",x+size*2,y+size*5,size,size,c365C);
  re("322,323,324",x+size*2,y+size*4,size,size,c322C);//研究室とか
  re("325,326,327",x+size*3,y+size*4,size,size,c325C);
  re("328,329,330",x+size*4,y+size*4,size,size,c328C);
  re("331,332,333",x+size*6,y+size*4,size,size,c331C);
  re("334,335",x+size*7,y+size*4,size,size,c334C);
}

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
  strokeWeight(ST);
  line(centerX,centerY,centerX+size,centerY);
  line(centerX+size,centerY,centerX+size,centerY+size*3);
  line(centerX+size,centerY+size*3,centerX+size*8,centerY+size*3);
  line(centerX+size*8,centerY+size*3,centerX+size*8,centerY+size*10);
  line(centerX+size*8,centerY+size*10,centerX+size*5,centerY+size*10);
  line(centerX+size*5,centerY+size*10,centerX+size*5,centerY+size*9);
  line(centerX+size*5,centerY+size*9,centerX,centerY+size*9);
  line(centerX,centerY+size*9,centerX,centerY);
}

//void fac3() {
//  mas(30701);//原点
//  mas(30901);//ミュージアム
//  mas(31301);//ライブラリ
//  mas(31501);
//  mas(31701);
//  mas(31901);
//  mas(32101);
//  mas(32301);
//  mas(12301);
//  mas(90710);
//}
