class Graphic {
  int xcord, ycord, height, width;
  
  Graphic(){
    height=0;
    width=0;
    xcord=0;
    ycord=0;
  }
  void drawRect(int x, int y, int h, int w){
    rect(x, y, h, w);
  }
}
