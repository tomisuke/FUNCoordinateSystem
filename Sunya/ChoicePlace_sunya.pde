int masuxyz(int id) {
    int masux, masuy, masuz;
    masux = int(id / 10000);
    masuy = int(id - masux * 10000)
        masuz = id - masux * 10000 - masuy * 100
        
        return masux,masuy,masuz;
}