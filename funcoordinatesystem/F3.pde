int enterC=255;
int libC=130;//ライブラリ（以下色の指定）
int musC=130;//ミュージアム
int gymC=130;//体育館
int medC=130;//医務室と音スタ
int socC=130;//社会提携
int bigC=130;//大講義室
int workC=130;//工房
int eleC=130;//えれくと工房
int c365C=130;//36n
int c364C=130;
int c363C=130;
int c322C=130;//研究室
int c325C=130;
int c328C=130;
int c331C=130;
int c334C=130;

void fac3() {
  int x=centerX;
  int y=centerY;
  re("玄関", x, y+size*6, size, size, enterC);
  re("ライブ\nラリ", x, y, size, size*6, libC);//施設
  re("ミュージ\nアム", x, y+size*7, size, size, musC);
  re("体育館", x+size*6, y+size*7, size*2, size*3, gymC);
  re("医務室\n音スタ", x+size*2, y+size*8, size, size, medC);
  re("社会\n提携\nセンター", x+size*2, y+size*7, size, size, socC);
  re("大講義室", x+size*6, y+size*5, size*2, size, bigC);//教室
  re("工房", x+size*4, y+size*7, size, size*2, workC);
  re("エレ工", x+size*3, y+size*7, size, size*2, eleC);
  re("365", x+size*4, y+size*5, size, size, c365C);
  re("364", x+size*3, y+size*5, size, size, c365C);
  re("363", x+size*2, y+size*5, size, size, c365C);
  re("322\n323\n324", x+size*2, y+size*4, size, size, c322C);//研究室とか
  re("325\n326\n327", x+size*3, y+size*4, size, size, c325C);
  re("328\n329\n330", x+size*4, y+size*4, size, size, c328C);
  re("331\n332\n333", x+size*6, y+size*4, size, size, c331C);
  re("334\n335", x+size*7, y+size*4, size, size, c334C);
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
      le(i, 0, i, 9);
    } else if (i<5) {
      le(i, 3, i, 9);
    } else {
      line(i, 3, i, 10);
    }
  }
  for (int i=5; i<8; i++) {
    le(i, 3, i, 10);
  }
  for (int j = 3; j < 10; j++) {
    le(0, j, 8, j);
    if (j < 6) {
      le(0, j - 3, 1, j - 3);
    }
    le(5, 10, 8, 10);
  }
  fac3();

  fill(0);
  strokeWeight(ST);//以下毎階外枠
  le(0, 0, 1, 0);
  le(1, 0, 1, 3);
  le(1, 3, 8, 3);
  le(8, 3, 8, 10);
  le(8, 10, 5, 10);
  le(5, 10, 5, 9);
  le(5, 9, 0, 9);
  le(0, 9, 0, 0);
  strokeWeight(st);
}
