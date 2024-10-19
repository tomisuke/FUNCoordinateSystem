int floor = 1;//仮置き
int size = 75;//スペースの長さ
int centerX = 800;//方眼紙の中央の座標です。
int centerY = 450;
int st = 1;//線の太さ
int ST = 3;//外枠の太さ
int colorA = 90;
int colorB = 0;

void center() {//座標左上にずらしました
    centerX = centerX - size * 4;
    centerY = centerY - size * 5;
}

void re(String s,int x,int y,int w,int h,int f1) {
    fill(f1);
    rect(x,y,w,h);
    textAlign(CENTER,CENTER);
    fill(0);
    text(s,x + w / 2,y + h / 2);
    textAlign(LEFT,TOP);
}


void base() {
    textAlign(CENTER, CENTER);
    fill(200);
    if(floor ==  0) {
        rect(centerX, centerY, size * 8, size * 11);
} else if (floor ==  3) {
        floor3();
} else if (floor ==  2) {
        floor2();
} else if (floor ==  1) {
        floor1();
} else if (floor ==  4) {
        floor4();
} else if (floor ==  5) {
        floor5();
}
    textAlign(LEFT, TOP);
}

void keyPressed() {
    if(key ==  '1') {
        floor = 1;
} else if (key ==  '2') {
        floor = 2;
} else if (key ==  '3') {
        floor = 3;
} else if (key ==  '4') {
        floor = 4;
} else if (key ==  '5') {
        floor = 5;
} else if (key ==  '0') {
        floor = 0;//お試し版
}
}
int c122C = 100;//教員室
int c125C = 100;
int c128C = 100;
int c131C = 100;
int c134C = 100;
int eatC = 100;//食堂
int eatsC = 100;//厨房（案内しない）
int atoC = 100;//アトリエ
int preC = 100;//ぷれヴぇい

void fac1() {
    int x = centerX;
    int y = centerY;
    
    re("122,123,124",x + size * 2,y + size * 2,size,size,c122C);//教員室
    re("125,126,127",x + size * 3,y + size * 2,size,size,c125C);
    re("128,129,130",x + size * 4,y + size * 2,size,size,c128C);
    re("131,132,133",x + size * 6,y + size * 2,size,size,c131C);
    re("134,135",x + size * 7,y + size * 2,size,size,c134C);
    re("食堂",x,y,size,size * 3,eatC);//食堂
    re("厨房",x,y + size * 3,size,size,eatsC);//厨房
    re("アトリエ",x + size * 6,y,size * 2,size * 2,atoC);//アトリエ
    re("プレベイ",x + size * 2,y,size * 3,size * 2,preC);//ぷれべい
    
}

void floor1() {
    noStroke();
    rect(centerX, centerY, size * 8, size * 4);
    fill(0);
    strokeWeight(st);
    stroke(0);
    for (int i = 0;i < 9;i++) {
        line(centerX + size * i,centerY + size * 0,centerX + size * i,centerY + size * 4);
}
    for (int j = 0;j < 5;j++) {
        line(centerX,centerY + size * j,centerX + size * 8,centerY + size * j);
}
    fac1();
}
int c222C = 100;//教務室
int c225C = 100;
int c228C = 100;
int c231C = 100;
int c234C = 100;
int buyC = 100;//購買
int buysC = 100;//生協事務局

void fac2() {
    int x = centerX;
    int y = centerY;
    
    re("222,223,224",x + size * 2,y + size * 3,size,size,c222C);
    re("225,226,227",x + size * 3,y + size * 3,size,size,c225C);
    re("228,229,230",x + size * 4,y + size * 3,size,size,c228C);
    re("231,232,233",x + size * 6,y + size * 3,size,size,c231C);
    re("234,235,236",x + size * 7,y + size * 3,size,size,c234C);
    re("購買",x,y + size * 2,size,size,buyC);
    re("生協事務局",x,y + size * 3,size,size,buysC);
}

void floor2() {
    noStroke();
    rect(centerX, centerY + size * 2, size * 8, size * 2);
    rect(centerX + size * 2, centerY + size * 4, size * 6, size);//全体
    fill(0);
    strokeWeight(st);
    stroke(0);
    for (int i = 0;i < 9;i++) {
        line(centerX + size * i,centerY + size * 2,centerX + size * i,centerY + size * 4);
        if (i > 2) {
            line(centerX + size * i,centerY + size * 4,centerX + size * i,centerY + size * 5);
        }
}
    for (int j = 2;j < 5;j++) {
        line(centerX,centerY + size * j,centerX + size * 8,centerY + size * j);
}
    line(centerX + size * 2,centerY + size * 5,centerX + size * 8,centerY + size * 5);
    line(centerX + size * 2,centerY + size * 5,centerX + size * 2,centerY + size * 4);
    fac2();
}
int enterC = 255;
int libC = 100;//ライブラリ（以下色の指定）
int musC = 100;//ミュージアム
int gymC = 100;//体育館
int medC = 100;//医務室と音スタ
int socC = 100;//社会提携
int bigC = 100;//大講義室
int workC = 100;//工房
int eleC = 100;//えれくと工房
int c365C = 100;//36n
int c364C = 100;
int c363C = 100;
int c322C = 100;//研究室
int c325C = 100;
int c328C = 100;
int c331C = 100;
int c334C = 100;

void fac3() {
    int x = centerX;
    int y = centerY;
    
    re("玄関", x, y + size * 25 / 4, size / 3, size / 2, enterC);
    
    re("ライブラリ", x, y, size, size * 6, libC);//施設
    re("ミュージアム", x, y + size * 7, size, size, musC);
    re("体育館", x + size * 6, y + size * 7, size * 2, size * 3, gymC);
    re("医務室,音スタ", x + size * 2, y + size * 8, size, size, medC);
    re("社会提携センター", x + size * 2, y + size * 7, size, size, socC);
    re("大講義室", x + size * 6, y + size * 5, size * 2, size, bigC);//教室
    re("工房", x + size * 4, y + size * 7, size, size * 2, workC);
    re("えれ工", x + size * 3, y + size * 7, size, size * 2, eleC);
    re("365", x + size * 4, y + size * 5, size, size, c365C);
    re("364", x + size * 3, y + size * 5, size, size, c365C);
    re("363", x + size * 2, y + size * 5, size, size, c365C);
    re("322,323,324", x + size * 2, y + size * 4, size, size, c322C);//研究室とか
    re("325,326,327", x + size * 3, y + size * 4, size, size, c325C);
    re("328,329,330", x + size * 4, y + size * 4, size, size, c328C);
    re("331,332,333", x + size * 6, y + size * 4, size, size, c331C);
    re("334,335", x + size * 7, y + size * 4, size, size, c334C);
}

void base3() {
    noStroke();
    rect(centerX, centerY, size, size * 9);
    rect(centerX + size, centerY + size * 3, size * 7, size * 6);
    rect(centerX + size * 5, centerY + size * 9, size * 3, size);//全体
}

void floor3() {
    fill(200);
    base3();
    fill(0);
    for (int i = 0; i < 9; i++) {
        strokeWeight(st);
        stroke(0);
        if (i < 2) {
            line(centerX + size * i, centerY, centerX + size * i, centerY + size * 9);
        } else if (i < 5) {
            line(centerX + size * i, centerY + size * 3, centerX + size * i, centerY + size * 9);
        } else {
            line(centerX + size * i, centerY + size * 3, centerX + size * i, centerY + size * 10);
        }
}
    for (int j = 3; j < 10; j++) {
        line(centerX, centerY + size * j, centerX + size * 8, centerY + size * j);
        if (j < 6) {
            line(centerX, centerY + size * (j - 3), centerX + size, centerY + size * (j - 3));
        }
        line(centerX + size * 5, centerY + size * 10, centerX + size * 8, centerY + size * 10);
}
    
    strokeWeight(st);
    fac3();
    
    fill(0);
    strokeWeight(ST);
    line(centerX, centerY, centerX + size, centerY);
    line(centerX + size, centerY, centerX + size, centerY + size * 3);
    line(centerX + size, centerY + size * 3, centerX + size * 8, centerY + size * 3);
    line(centerX + size * 8, centerY + size * 3, centerX + size * 8, centerY + size * 10);
    line(centerX + size * 8, centerY + size * 10, centerX + size * 5, centerY + size * 10);
    line(centerX + size * 5, centerY + size * 10, centerX + size * 5, centerY + size * 9);
    line(centerX + size * 5, centerY + size * 9, centerX, centerY + size * 9);
    line(centerX, centerY + size * 9, centerX, centerY);
}

//void fac3() {
//  mas(30701);//原点
//  mas(30901);//ミュージアム
//  mas(31301);//ライブラリ
//  mas(31501);
//  mas(31701);
//  mas(31901);
//  mas(32101);
//  mas(32301);
//  mas(12301);
//  mas(90710);
//}
void floor4() {
    
}
void floor5() {
    
}
PFont font;
void setup() {
    size(1600,900);
    background(255);
    font = createFont("Meiryo",20);
    textFont(font);
    center();
    //各階の通れないところの座標の配列
    //３ｆ偶数番目にｘ、奇数番目にｙ座標
    int f3x[] = new int[66];
    //情報ライブラリ
    for (int i = 0; i < 6; i++) {
        f3x[2 * i] = mapx(0);
        f3x[2 * i + 1] = mapy(i);
    }
        // 吹き抜け
        for(int i = 0; i < 3; i++) {
            for (int j = 0; j < 6; j++) {
                f3x[12 +2 * j + 12 * i] = mapx(2 + j);
                f3x[12 +(2 * j + 1) + 12 * i] = mapy(i);
            }
        }
            //47個要素が入っている
            //363,4,5教室、大講義室、エレ工、工房、ミュージアム
            f3x[48] = mapx(2);
            f3x[50] = mapx(3);
            f3x[52] = mapx(4);
            f3x[54] = mapx(6);
            f3x[56] = mapx(7);
            f3x[49] = mapy(5);
            f3x[51] = mapy(5);
            f3x[53] = mapy(5);
            f3x[55] = mapy(5);
            f3x[57] = mapy(5);
            f3x[58] = mapx(2);
            f3x[60] = mapx(2);
            f3x[59] = mapy(7);
            f3x[61] = mapy(8);
            f3x[62] = mapx(3);
            f3x[64] = mapx(4);
            f3x[63] = mapy(7);
            f3x[65] = mapy(7);
        }
            
       void draw() {
                background(255);
                base();
                masufill(masuxyz(h)[0],masuxyz(h)[1],size);
                
            }
                
                int h = 30107;//sunya
               int goal = 31307;