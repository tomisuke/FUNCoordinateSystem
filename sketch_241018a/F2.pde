int c222C=100;//教務室
int c225C=100;
int c228C=100;
int c231C=100;
int c234C=100;
int buyC=100;//購買
int buysC=100;//生協事務局

void fac2() {
  int x=centerX;
  int y=centerY;

  re("222,223,224", x+size*2, y+size*3, size, size, c222C);
  re("225,226,227", x+size*3, y+size*3, size, size, c225C);
  re("228,229,230", x+size*4, y+size*3, size, size, c228C);
  re("231,232,233", x+size*6, y+size*3, size, size, c231C);
  re("234,235,236", x+size*7, y+size*3, size, size, c234C);
  re("購買", x, y+size*2, size, size, buyC);
  re("生協事務局", x, y+size*3, size, size, buysC);
  
  elevator();
}

void floor2() {
  noStroke();
  rect(centerX, centerY + size * 2, size * 8, size * 2);
  rect(centerX + size * 2, centerY + size * 4, size * 6, size); // 全体

  fill(0);
  strokeWeight(st);
  stroke(0);


  for (int i = 0; i < 9; i++) {
    le(i, 2, i, 4);
    if (i > 2) {
      le(i, 4, i, 5);
    }
  }

  for (int j = 2; j < 5; j++) {
    le(0, j, 8, j);
  }

  le(2, 5, 8, 5);
  le(2, 5, 2, 4);

  fac2();
}
