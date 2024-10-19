//講堂はF4に
int conC=100;
int labC=100;
int c583C=100;
int c584C=100;
int c585C=100;
int c586C=100;
int c593C=100;
int c594C=100;
int c595C=100;
int c522C=100;//教務室
int c525C=100;
int c528C=100;
int c531C=100;
int c534C=100;

void fac5() {
  int x=centerX;
  int y=centerY;
  re("講堂", x, y+size, size, size*2, mainC);
  re("コンカフェ", x, y+size*4, size, size, conC);
  re("共同研究室", x, y+size*7, size, size*2, labC);
  re("583", x+size*2, y+size*7, size, size, c583C);
  re("584", x+size*3, y+size*7, size, size, c584C);
  re("585", x+size*4, y+size*7, size, size, c585C);
  re("593", x+size*2, y+size*8, size, size, c593C);
  re("594", x+size*3, y+size*8, size, size, c594C);
  re("595", x+size*4, y+size*8, size, size, c595C);
  re("522,423,524", x+size*2, y+size*5, size, size, c522C);
  re("525,526,427", x+size*3, y+size*5, size, size, c525C);
  re("528,529", x+size*4, y+size*5, size, size, c528C);
  re("531,532,533", x+size*6, y+size*5, size, size, c531C);
  re("534,535,536", x+size*7, y+size*5, size, size, c534C);
  
  elevator();
}
void floor5() {
  ce(0, 1, 1, 5);
  ce(0, 7, 1, 2);
  ce(1, 5, 1, 3);
  // ce(2, 5, 6, 4);
  ce(2, 7, 4, 2);
  ce(5, 9, 3, 1);
  ce(5, 3, 1, 3);
  ce(2, 5, 6, 1);
  ce(5, 9, 3, 1);
  ce(5, 3, 1, 2);

  fill(0);
  strokeWeight(st);
  stroke(0);
  for (int i=3; i<9; i++) {
    le(i, 5, i, 6);
    le(i-3, 7, i-3, 9);
  }
  for (int j=5; j<9; j++) {
    le(0, j, 6, j);
  }
  for (int k=1; k<6; k++) {
    le(0, k, 1, k);
  }

  le(7, 9, 7, 10);
  le(6, 9, 6, 10);
  le(5, 4, 6, 4);

  fac5();
}
