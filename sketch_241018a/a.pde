


void fac2() {
}

void mas(int a){//sunyaの短縮ver.
  masugreen(centerX+size,centerY+size*11,size,a);
}

void base() {
  textAlign(CENTER, CENTER);
  fill(200);
  if (floor==0) {
    rect(centerX, centerY, size*8, size*11);
  } else if (floor==3) {
    floor3();
  } else if (floor==2) {
    floor2();
  }
  textAlign(LEFT, TOP);
}


void center() {
  centerX=centerX-size*4;
  centerY=centerY-size*5;
}

void keyPressed() {
  if (key=='1') {
    floor=1;
  } else if (key=='2') {
    floor=2;
  } else if (key=='3') {
    floor=3;
  } else if (key=='4') {
    floor=4;
  } else if (key=='5') {
    floor=5;
  } else if (key=='0') {
    floor=0;//お試し版
  }
}
