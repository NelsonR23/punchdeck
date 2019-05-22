class Graphic {
  int xcord, ycord, height, width;
  
  public Graphic(int x, int y, int h, int w){
    height=h;
    width=w;
    xcord=x;
    ycord=y;
  }
  void drawRect(){
    rect(xcord,ycord, height, width);
  }
}
