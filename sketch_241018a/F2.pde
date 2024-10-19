void floor2() {
  noStroke();
  rect(centerX, centerY+size*2, size*8, size*2);
  rect(centerX+size*2, centerY+size*4, size*6, size);//全体
  fill(0);
  strokeWeight(st);
  stroke(0);
  for(int i=0;i<9;i++){
    line(centerX+size*i,centerY+size*2,centerX+size*i,centerY+size*4);
    if(i>2){
      line(centerX+size*i,centerY+size*4,centerX+size*i,centerY+size*5);
    }
  }
  for(int j=2;j<6;j++){
    line(centerX,centerY+size*j,centerX+size*8,centerY+size*j);
  }
  fac2();
}
