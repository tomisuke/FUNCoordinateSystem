int[] masuxyz(int id) {
    int masux, masuy, masuz;
    masux = int(id / 10000);
    masuy = int((id - masux * 10000)/100);
    masuz = id - masux * 10000 - masuy * 100;
    int a[] = new int[3];
    a[0] = masux;
    a[1] = masuy;
    a[2] = masuz;
    return a;
}