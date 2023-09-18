/* Program Notes
Demonstrates numpad as Nested FOR Loops
Start with width, then error check height
*/
//
//Global Variables
int appWidth, appHeight; //CAUTION: decimals are truncated in ints, not floats or doubles
float widthSquare, heightSquare;
float x0, x1, x2;
float y0, y1, y2, y3, y4;
//
void setup() {
  size (400, 600);
  appWidth = width;
  appHeight = height;
  //
  //Population of rect() variables 
  widthSquare = ;
  heightSquare = ;
  x0 = ;
  x1 = ;
  x2 = ;
  y0 = ;
  y1 = ;
  y2 = ;
  y3 = ;
  y4 = ;
  //
  //Nested FOR, reading rect() arrays
  //
} //End setup
// 
void draw() {
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
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
