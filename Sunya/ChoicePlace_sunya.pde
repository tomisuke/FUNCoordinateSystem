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
    int mapy = int( - 0.5  * y + 9.5);
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

void masufill(int x,int y,int size) {
    int ax = mappoint(x,y)[0];
    int ay = mappoint(x,y)[1];
    fill(0,255,0);
    rect(mapx(ax),mapy(ay),size,size);
}
//通った道を保存する配列
int way[] = new int[40];
void navi() {
    //まず目的地が３階の場合
    if (masuxyz(goal)[2] == 3) {
        //現在地と目的地の座標の差を導出
        //xは目的地の方が大きいので、目的地ー現在地で
        int decx = masuxyz(goal)[0] - masuxyz(h)[0];
        //yはどっちが大きいかで、引く数を変える
        if (masuxyz(goal)[1] >= masuxyz(h)[1]) {
            int decy = masuxyz(goal)[1] - masuxyz(h)[1];
        }
        else{
            int decy = masuxyz(goal)[1] - masuxyz(h)[1];
        }
        //x,yを+1してぶつかるかぶつからないかを判定してから配列に代入
        //yを優先して移動させる
        for (int i = 0; i < f3x.length;i++) {
            
        } 
    }
}