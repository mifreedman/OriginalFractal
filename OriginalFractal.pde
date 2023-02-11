public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

public void draw() {
  myFractal(250, 250, 450);
  
}

public void myFractal(int x, int y, int siz) {
  int c = 100;  
  fill(c);
  ellipse(x, y, siz, siz);
  
  if (siz > 10) {
    siz = siz/2;
    c = 20;
  //  myFractal(x-siz, y, siz);
    myFractal(x, y-siz, siz);
    //myFractal(x+siz, y, siz);
    myFractal(x, y+siz, siz);
    myFractal(x, y, siz);
    
  }
}

