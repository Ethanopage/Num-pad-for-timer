/* Program Notes
Demonstrates numpad as Nested FOR Loops
Start with width, then error check height
*/
//
//Global Variables
int appWidth, appHeight; //CAUTION: decimals are truncated in ints, not floats or doubles
float widthSquare, heightSquare;
int numPadColums = 3;
float[] x = new float [numPadColumns];
int numPadRow = 3;
float[] y = new float [numPadRow]
//
void setup() {
  size (400, 700);
  appWidth = width;
  appHeight = height;
  //
  //Population of rect() variables 
  widthSquare = *1/4;
  heightSquare = widthSquare;
  //Error with PrintArray, FIX
  for (int i=0; i<numPadColumns; i++ ) { // i stops x not y
  for ( int j=1; j<=numPadRow; j+=2 ) { //j=j+2
  x[i] = widthSquare*j/2;
  println("Inside x", x[i] );
  //NOTE: x being overwritten with J
  } //End FOR
  } //End FOR
  //y[i] = widthSquare*(j+4)/2;
  //if(i<numPadColumns)
  //println("Inside y" , y[i], "\t");
  printArray(x);
  //printArray(y);
  /*
  x0 = widthSquare*1/2;
  x1 = widthSquare*3/2;
  x2 = widthSquare*5/2;
  y0 = widthSquare*5/2;
  y1 = widthSquare*7/2;
  y2 = widthSquare*9/2;
  y3 = widthSquare*11/2;
  y4 = widthSquare*14/2;
  //
  //Nested FOR, reading rect() arrays
  //
} //End setup
// 
void draw() {
  /*
  rect(x0, y0, widthSquare, heightSquare); 
  rect(x0, y1, widthSquare, heightSquare);
  rect(x0, y2, widthSquare, heightSquare);
  rect(x0, y3, widthSquare, heightSquare);
  rect(x1, y0, widthSquare, heightSquare);
  rect(x1, y1, widthSquare, heightSquare);
  rect(x1, y2, widthSquare, heightSquare);
  rect(x1, y3, widthSquare, heightSquare);
  rect(x2, y0, widthSquare, heightSquare);
  rect(x2, y1, widthSquare, heightSquare);
  rect(x2, y2, widthSquare, heightSquare);
  rect(x2, y3, widthSquare, heightSquare);
  */
} //End draw
//
void mousePressed() {
  //mousex> && mousex< && mouseY> && mouseY<
  //x0, Y0, widthSquare, heightSquare
  if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  // CAUTION: finish mousePressing when arrays can be read
  //
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
