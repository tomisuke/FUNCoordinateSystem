int[] masuxyz(int id) {//idからもらった数値をエクセルの座標にして配列｛x,y,z｝として返す
  int masux, masuy, masuz;
  masuz = int(id / 10000);
  masux = int((id - masuz * 10000) / 100);
  masuy = id - masuz * 10000 - masux * 100;
  int a[] = new int[3];
  a[0] = masux;
  a[1] = masuy;
  a[2] = masuz;
  return a;
}



int[] mappoint(int x, int y) {//エクセルでの座標をマップでのxy座標にして配列｛ｘ、ｙ｝で返す
  int mapx = int(0.5 * x - 0.5);
  int mapy = int( -0.5  * y + 9.5);
  int mapxy[] = new int[2];
  mapxy[0] = mapx;
  mapxy[1] = mapy;
  return mapxy;
}
//mapのrectの左上の座標を出力する関数
int mapx(int x) {
  return centerX + size * x;
}
int mapy(int y) {
  return centerY + size * y;
}

void masufillS(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(0, 255, 0);
  rect(mapx(ax), mapy(ay), size, size);
}
void masufillD(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(255, 0, 0);
  rect(mapx(ax), mapy(ay), size, size);
}
void masufillR(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(0, 0, 255);
  rect(mapx(ax), mapy(ay), size, size);
}
//通った道を保存する二重配列
int[][] way = new int[2][20];//[0][]はx座標、[1][]がy座標
int record = 0;
void navi() {
  int[][] isGoF3 = new int[8][10];
  isGoF3[1][1] = 1;
  isGoF3[1][2] = 1;
  isGoF3[1][3] = 2;
  isGoF3[2][3] = 1;
  isGoF3[3][3] = 1;
  isGoF3[4][3] = 1;
  isGoF3[5][3] = 2;
  isGoF3[6][3] = 1;
  isGoF3[7][3] = 1;
  isGoF3[1][4] = 1;
  isGoF3[5][4] = 1;
  isGoF3[1][5] = 1;
  isGoF3[5][5] = 1;
  isGoF3[0][6] = 1;
  isGoF3[1][6] = 2;
  isGoF3[2][6] = 1;
  isGoF3[3][6] = 1;
  isGoF3[4][6] = 1;
  isGoF3[5][6] = 2;
  isGoF3[6][6] = 1;
  isGoF3[7][6] = 1;
  isGoF3[1][7] = 1;
  isGoF3[5][7] = 1;
  isGoF3[1][8] = 1;
  isGoF3[5][8] = 1;
  isGoF3[5][9] = 1;
  int decx, decy;
  int startX = mappoint(masuxyz(h)[0], masuxyz(h)[1])[0];//現在地のｘ（0）
  int startY = mappoint(masuxyz(h)[0], masuxyz(h)[1])[1];//現在地のｙ（7）
  //まず目的地が３階の場合
  if (masuxyz(goal)[2] == 3) {
    //現在地と目的地goalの座標の差を導出
    //xは目的地gaolの方が大きいので、目的地ー現在地で
    decx = mappoint(masuxyz(goal)[0], masuxyz(goal)[1])[0] - mappoint(masuxyz(h)[0], masuxyz(h)[1])[0];
    //yは目的地の座標が大きいと正、小さいと負になる
    decy = mappoint(masuxyz(goal)[0], masuxyz(goal)[1])[1] - mappoint(masuxyz(h)[0], masuxyz(h)[1])[1];

    //x,yを+1してぶつかるかぶつからないかを判定してから配列に代入
    //yを優先して移動させる
    int check = abs(decy) + decx;
    while (record < check) {
      if (decy < 0) {
        if (isGoF3[startX][startY - 1] == 1) {
          startY -= 1;
          way[0][record] = startX;
          way[1][record] = startY;
          record++;
          decy++;
          println(startX, startY);
        }
      }
      if (decy > 0) {
        if (isGoF3[startX][startY + 1] == 1) {
          startY -= 1;
          way[0][record] = startX;
          way[1][record] = startY;
          record++;
          decy--;
        }
      } else {
        startX += 1;
        way[0][record] = startX;
        way[1][record] = startY;
        record++;
        decx--;
      }
    }
  }
  //目的地が3階以外の場合
  else {
  }
}
