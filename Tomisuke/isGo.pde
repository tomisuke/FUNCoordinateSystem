//通れない = 0,通れる=1,階段=2
void isGoF1(){
  int[][] isGoF1 = new int[8][4];
  isGoF1[0][0] = 0;
  isGoF1[1][0] = 1;
  isGoF1[2][0] = 1;
  isGoF1[3][0] = 1;
  isGoF1[4][0] = 1;
  isGoF1[5][0] = 1;
  isGoF1[6][0] = 0;
  isGoF1[7][0] = 0;
  isGoF1[0][1] = 0;
  isGoF1[1][1] = 1;
  isGoF1[2][1] = 1;
  isGoF1[3][1] = 1;
  isGoF1[4][1] = 1;
  isGoF1[5][1] = 1;
  isGoF1[6][1] = 1;
  isGoF1[7][1] = 1;
  isGoF1[0][2] = 0;
  isGoF1[1][2] = 2;
  isGoF1[2][2] = 0;
  isGoF1[3][2] = 0;
  isGoF1[4][2] = 0;
  isGoF1[5][2] = 2;
  isGoF1[6][2] = 0;
  isGoF1[7][2] = 0;
  isGoF1[0][3] = 0;
  isGoF1[1][3] = 1;
  isGoF1[2][3] = 1;
  isGoF1[3][3] = 1;
  isGoF1[4][3] = 1;
  isGoF1[5][3] = 1;
  isGoF1[6][3] = 1;
  isGoF1[7][3] = 1;
}
