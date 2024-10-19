int c122C=100;//教員室
int c125C=100;
int c128C=100;
int c131C=100;
int c134C=100;
int eatC=100;//食堂
int eatsC=100;//厨房（案内しない）
int atoC=100;//アトリエ
int preC=100;//ぷれヴぇい

void fac1(){
  int x=centerX;
  int y=centerY;
  
  re("122,123,124",x+size*2,y+size*2,size,size,c122C);//教員室
  re("125,126,127",x+size*3,y+size*2,size,size,c125C);
  re("128,129,130",x+size*4,y+size*2,size,size,c128C);
  re("131,132,133",x+size*6,y+size*2,size,size,c131C);
  re("134,135",x+size*7,y+size*2,size,size,c134C);
  re("食堂",x,y,size,size*3,eatC);//食堂
  re("厨房",x,y+size*3,size,size,eatsC);//厨房
  re("アトリエ",x+size*6,y,size*2,size*2,atoC);//アトリエ
  re("プレベイ",x+size*2,y,size*3,size*2,preC);//ぷれべい
  
  elevator();
}

void floor1(){
  noStroke();
  rect(centerX, centerY, size*8, size*4);
  fill(0);
  strokeWeight(st);
  stroke(0);
  for(int i=0;i<9;i++){
    line(centerX+size*i,centerY+size*0,centerX+size*i,centerY+size*4);
  }
  for(int j=0;j<5;j++){
    line(centerX,centerY+size*j,centerX+size*8,centerY+size*j);
  }
  fac1();
}
