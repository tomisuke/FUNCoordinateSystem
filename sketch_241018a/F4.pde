int c422C=100;//教務室
int c425C=100;
int c428C=100;
int c431C=100;
int c434C=100;

void fac4(){
  int x=centerX;
  int y=centerY;
  re("422,423,424", x+size*2, y+size*4, size, size, c422C);
  re("425,426,427", x+size*3, y+size*4, size, size, c425C);
  re("428,429", x+size*4, y+size*4, size, size, c428C);
  re("431,432,433", x+size*6, y+size*4, size, size, c431C);
  re("434,435", x+size*7, y+size*4, size, size, c434C);
}

void floor4(){
  ce(0,1,2,2);
  ce(1,2,5,1);
  ce(1,2,1,6);
  ce(0,7,1,2);
  ce(1,7,5,1);
  ce(2,8,5,1);
  ce(5,1,1,7);
  ce(6,1,1,1);
  ce(2,4,6,2);
  fill(0);
  strokeWeight(st);
  stroke(0);
  for(int i=2;i<7;i++){
    le(i,7,i,9);
    le(1,i,2,i);
    le(1+i,4,1+i,6);
  }
  le(0,2,7,2);
  le(1,1,1,2);
  le(3,2,3,3);
  le(4,2,4,3);
  le(5,3,6,3);
  le(2,5,8,5);
  le(0,8,1,8);
  le(5,7,6,7);

  fac4();
}
