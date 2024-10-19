//通れない = 0,通れる=1,階段=2
void isGoF1() {
  int[][] isGoF1 = new int[8][10];
  isGoF1[1][0] = 1;
  isGoF1[2][0] = 1;
  isGoF1[3][0] = 1;
  isGoF1[4][0] = 1;
  isGoF1[5][0] = 1;
  isGoF1[1][1] = 1;
  isGoF1[2][1] = 1;
  isGoF1[3][1] = 1;
  isGoF1[4][1] = 1;
  isGoF1[5][1] = 1;
  isGoF1[6][1] = 1;
  isGoF1[7][1] = 1;
  isGoF1[1][2] = 2;
  isGoF1[5][2] = 2;
  isGoF1[1][3] = 1;
  isGoF1[2][3] = 1;
  isGoF1[3][3] = 1;
  isGoF1[4][3] = 1;
  isGoF1[5][3] = 1;
  isGoF1[6][3] = 1;
  isGoF1[7][3] = 1;
}
void isGoF2() {
  int[][] isGoF2 = new int[8][4];
  isGoF2[1][1] = 1;
  isGoF2[1][2] = 1;
  isGoF2[1][2] = 2;
  isGoF2[2][2] = 1;
  isGoF2[3][2] = 1;
  isGoF2[4][2] = 1;
  isGoF2[5][2] = 2;
  isGoF2[6][2] = 1;
  isGoF2[7][2] = 1;
  isGoF2[1][3] = 2;
  isGoF2[5][3] = 2;
  isGoF2[6][3] = 1;
  isGoF2[7][3] = 1;
  isGoF2[1][4] = 1;
  isGoF2[2][4] = 1;
  isGoF2[3][4] = 1;
  isGoF2[4][4] = 1;
  isGoF2[5][4] = 1;
  isGoF2[6][4] = 1;
  isGoF2[7][4] = 1;
}
