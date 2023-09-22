/* Program Notes: Geometry is portrait (smaller width)
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
  /* Primitive Variable Prototyping 
  x0 = widthSquare*1/2;
  x1 = widthSquare*3/2;
  x2 = widthSquare*5/2;
  y0 = widthSquare*5/2;
  y1 = widthSquare*7/2;
  y2 = widthSquare*9/2;
  y3 = widthSquare*11/2;
  y4 = widthSquare*14/2;
  */
  /* Seperate FOR Loops
  for (int i=0; i<numPadColumns; i++ ) { // i stops x not y
  x[i] = widthSquare*(2*i+1)/2;
  println("Inside x", x[i] );
  } //End FOR
  for ( int i=0; i<numPadRows; i++ ) {
  //y[i] = widthSquare*(2*i+5)/2;
  //println("Inside y" , y[i],);
  } // End FOR
  */
  // Combined FOR Loops
  for ( int i=0; i<numPadRows; i++ ) {
    if ( i<numPadColumns ) x[i] = writeCoordinate(i, 1);
    y[i] = writeCoordinate(i, 5);
  } // End FOR
  printArray(x);
  printArray(y);
} //End setup
float writeCoordinate ( int i, int oddStart) {
  return widthSquare*(2*i+oddStart)/2;
} //End writeCoordinate
//
void draw() {
  for ( int i=0; i<numPadColumns; i++ ) {
    for ( int j=0; j<numPaddRows-1; j++ ) {
      rect(x[i], y[j], widthSquare, heigthSquare);
    } //End FOR
  } //End FOR
  /* Primitive Variables in drawing rect()s
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
  //
  // Creating Number Pad Buttons 
  // Basic IF key variables: mousex> && mousex< && mouseY> && mouseY<
  // First rect variables: x0, y0, widthSquare, heightSquare
  // if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  //
  int buttonCounter = 1;
  for (int i=0; i<numPadColumns; i++) {
    for ( int j=0; j<numPadRows; j++ ) {
      println(i, j);
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i] && mouseY<y [i]+widthSquare ) println("Button #:", i+1);
    buttonCounter++; 
    // Note: built in ERROR with buttonCounter, iterates the wrong way
    // CAUTION: prototyping button return must be fixed before using this in timer program
  } //End FOR
} // End FOR
  // CAUTION: will iterate over all buttons
  // Fix Hint: start at beginning and stop when button activated
  // Solution: Change FOR to WHILE
  // Unsolved Problem: estimating where to start reading instead of button "1"
  //
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
