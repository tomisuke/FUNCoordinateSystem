//講堂はF4に
int conC=130;
int labC=130;
int c583C=130;
int c584C=130;
int c585C=130;
int c586C=130;
int c593C=130;
int c594C=130;
int c595C=130;
int c522C=130;//教務室
int c525C=130;
int c528C=130;
int c531C=130;
int c534C=130;
int cir1C=130;
int cir4C=130;
int cir8C=130;
int cir12C=130;

void fac5() {
  int x=centerX;
  int y=centerY;
  re("講堂", x, y+size, size, size*2, mainC);
  re("コネ\nカフェ", x, y+size*4, size, size, conC);
  re("共同\n研究室", x, y+size*7, size, size*2, labC);
  re("583", x+size*2, y+size*7, size, size, c583C);
  re("584", x+size*3, y+size*7, size, size, c584C);
  re("585", x+size*4, y+size*7, size, size, c585C);
  re("593", x+size*2, y+size*8, size, size, c593C);
  re("594", x+size*3, y+size*8, size, size, c594C);
  re("595", x+size*4, y+size*8, size, size, c595C);
  re("522\n423\n524", x+size*2, y+size*5, size, size, c522C);
  re("525\n526\n427", x+size*3, y+size*5, size, size, c525C);
  re("528\n529", x+size*4, y+size*5, size, size, c528C);
  re("531\n532\n533", x+size*6, y+size*5, size, size, c531C);
  re("534\n535\n536", x+size*7, y+size*5, size, size, c534C);
  re("サ室\n１～３", x+size*5, y+size*8, size, size, cir1C);
  re("４～７", x+size*5, y+size*9, size, size, cir4C);
  re("８～11", x+size*6, y+size*9, size, size, cir8C);
  re("12～15", x+size*7, y+size*9, size, size, cir12C);
}
void floor5() {
  ce(0, 1, 2, 5);
  ce(0, 7, 1, 2);
  ce(1, 5, 1, 3);
  ce(2, 7, 4, 2);
  ce(5, 9, 3, 1);
  ce(5, 3, 1, 3);
  ce(2, 5, 6, 1);
  ce(5, 9, 3, 1);
  ce(5, 3, 1, 2);
  ce(5, 6, 1, 1);
  ce(2, 4, 6, 1);
  fill(0);
  strokeWeight(st);
  stroke(0);
  for (int i=3; i<8; i++) {
    le(i, 4, i, 6);
    le(i-3, 7, i-3, 9);
  }
  for (int j=5; j<9; j++) {
    le(0, j, 6, j);
  }
  for (int k=1; k<6; k++) {
    le(0, k, 2, k);
  }

  le(7, 9, 7, 10);
  le(6, 9, 6, 10);
  le(5, 4, 6, 4);
  le(1, 3, 1, 4);
  fac5();

  strokeWeight(ST);//外枠
  le(0, 1, 2, 1);
  le(2, 1, 2, 4);
  le(2, 4, 5, 4);
  le(5, 4, 5, 3);
  le(5, 3, 6, 3);
  le(6, 3, 6, 4);
  le(6, 4, 8, 4);
  le(8, 4, 8, 6);
  le(8, 6, 6, 6);
  le(6, 6, 6, 9);
  le(6, 9, 8, 9);
  le(8, 9, 8, 10);
  le(8, 10, 5, 10);
  le(5, 10, 5, 9);
  le(5, 9, 2, 9);
  le(2, 9, 2, 8);
  le(2, 8, 1, 8);
  le(1, 8, 1, 9);
  le(1, 9, 0, 9);
  le(0, 9, 0, 7);
  le(0, 7, 1, 7);
  le(1, 7, 1, 6);
  le(1, 6, 0, 6);
  le(0, 6, 0, 1);
  le(2, 6, 5, 6);
  le(2, 7, 5, 7);
  le(2, 6, 2, 7);
  le(5, 6, 5, 7);
  strokeWeight(st);
}
