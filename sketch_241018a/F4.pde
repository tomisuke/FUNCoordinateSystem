int c422C=100;//教務室
int c425C=100;
int c428C=100;
int c431C=100;
int c434C=100;
int mainC=100;//講堂
int deC=100;//でるた
int manC=100;//事務局
int c483C=100;
int c484C=100;
int c485C=100;
int c486C=100;
int c493C=100;
int c494C=100;
int c495C=100;

void fac4() {
  int x=centerX;
  int y=centerY;
  re("422\n423\n424", x+size*2, y+size*4, size, size, c422C);
  re("425\n426\n427", x+size*3, y+size*4, size, size, c425C);
  re("428\n429", x+size*4, y+size*4, size, size, c428C);
  re("431\n432\n433", x+size*6, y+size*4, size, size, c431C);
  re("434\n435", x+size*7, y+size*4, size, size, c434C);
  re("講堂", x, y+size, size, size*2, mainC);
  re("デルタ", x+size*5, y+size, size, size*2, deC);
  re("", x+size*6, y+size, size, size, deC);
  re("事務局", x, y+size*7, size, size*2, manC);
  re("483", x+size*2, y+size*7, size, size, c483C);
  re("484", x+size*3, y+size*7, size, size, c484C);
  re("485", x+size*4, y+size*7, size, size, c485C);
  re("493", x+size*2, y+size*8, size, size, c493C);
  re("494", x+size*3, y+size*8, size, size, c494C);
  re("495", x+size*4, y+size*8, size, size, c495C);
}

void floor4() {
  ce(0, 1, 2, 2);
  ce(1, 2, 5, 1);
  ce(1, 2, 1, 6);
  ce(0, 7, 1, 2);
  ce(1, 7, 5, 1);
  ce(2, 8, 4, 1);
  ce(5, 1, 1, 7);
  ce(6, 1, 1, 1);
  ce(2, 4, 6, 2);
  fill(0);
  strokeWeight(st);
  stroke(0);
  for (int i=2; i<7; i++) {
    le(i, 7, i, 9);
    le(1, i, 2, i);
    le(1+i, 4, 1+i, 6);
  }
  le(0, 2, 7, 2);
  le(1, 1, 1, 2);
  le(3, 2, 3, 3);
  le(4, 2, 4, 3);
  le(5, 3, 6, 3);
  le(2, 5, 8, 5);
  le(0, 8, 1, 8);
  le(5, 7, 6, 7);

  fac4();

  strokeWeight(ST);//外枠
  le(0, 1, 2, 1);
  le(0, 1, 0, 3);
  le(0, 3, 1, 3);
  le(1, 3, 1, 7);
  le(1, 7, 0, 7);
  le(0, 7, 0, 9);
  le(0, 9, 1, 9);
  le(1, 9, 1, 8);
  le(1, 8, 2, 8);
  le(2, 8, 2, 9);
  le(2, 9, 6, 9);
  le(6, 9, 6, 6);
  le(6, 6, 8, 6);
  le(8, 6, 8, 4);
  le(8, 4, 6, 4);
  le(6, 4, 6, 2);
  le(6, 2, 7, 2);
  le(7, 2, 7, 1);
  le(7, 1, 5, 1);
  le(5, 1, 5, 2);
  le(5, 2, 2, 2);
  le(2, 2, 2, 1);
  le(2, 3, 5, 3);
  le(2, 4, 5, 4);
  le(2, 3, 2, 4);
  le(5, 4, 5, 3);
  le(2, 6, 5, 6);
  le(2, 7, 5, 7);
  le(2, 6, 2, 7);
  le(5, 7, 5, 6);
  strokeWeight(st);
}
