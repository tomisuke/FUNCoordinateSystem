
void fac5() {
  int x=centerX;
  int y=centerY;
  
  //re("ライブラリ", x, y, size, size*6, libC);//施設
}
void floor5() {
  ce(0, 0, 1, 6);
  ce(0, 7, 1, 2);
  ce(1, 5, 1, 3);
  ce(2, 5, 6, 4);
  ce(5, 9, 3, 1);
  ce(5, 3, 1, 2);

  fill(0);
  strokeWeight(st);
  stroke(0);
  for (int i=3; i<9; i++) {
    le(i, 5, i, 9);
  }
  for (int j=5; j<9; j++) {
    le(0, j, 8, j);
  }
  for (int k=0; k<5; k++) {
    le(0, k, 1, k);
  }

  le(7, 9, 7, 10);
  le(6, 9, 6, 10);
  le(5, 4, 6, 4);

  fac5();
}
