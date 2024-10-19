int[] masuxyz(int id) {//idからもらった数値を配列｛x,y,z｝として返す
    int masux, masuy, masuz;
    masux = int(id / 10000);
    masuy = int((id - masux * 10000) / 100);
    masuz = id - masux * 10000 - masuy * 100;
    int a[] = new int[3];
    a[0] = masux;
    a[1] = masuy;
    a[2] = masuz;
    return a;
}

void masugreen(int x, int y,int size, int id) {
    int masux = masuxyz(id)[0];//こいつらは、１，３，５………という値をとる
    int masuy = masuxyz(id)[1];
    
    fill(0,255,0);
    rect(x - size * (masux * 0.5 - 0.5),y - size * (masuy * 0.5 - 0.5),size,size);
}
