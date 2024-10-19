int[] masuxyz(int id) {//idからもらった数値を配列｛x,y,z｝として返す
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



int[] mappoint(int x, int y) {
    int mapx = 0.5 * x + 0.5;
    int mapy = -0.5  * y + 9.5;
    int mapxy[] = new int[2];
    mapxy[0] = mapx;
    mapxy[1] = mapy;
    return mapxy;
}

