/*Jake Nagle (student number: 20109020). The assingment I have named ballPlay has has incorporated lines, square and circles using mostly combining cells. Mouse events have been added to give that animation. */

void setup()
{
  size(1280, 720); //size of the display window
  surface.setLocation(0, 0); //positioning of display window set correctly
}

void draw() {
  drawGridCells(); //setting up my squares to show a grid like theme

  drawSquaresOne(80); //drawing large square in top left corner using bespoke method with parameters
  drawSquaresTwo(); //setting up my drawSquares method/function using verb
  drawSquaresThree();
  drawSquaresFour();
  drawSquaresFive(80, 40);
  drawBalls(); //setting up my drawBalls methond/function using verb
  drawBallsTwo();
  studentName();
}

void drawGridCells() //drawGridcells method called
{
  for (int x = 0; x < 16; x++) /*For loop added. X is given the value of 0 and the compiler asked to draw a square, beginning with at 0 xCoordinate and 0 yCoordinate, 80*80 at  in length.
   X then is to increase by 1 everytime until it reaches the value of 15, which makes it 16 cells across due to beginning at 0*/
    for (int y = 0; y < 9; y++) /*For loop added. Y is given the value of 0 and the compiler asked to draw a square, beginning with at 0 xCoordinate and 0 yCoordinate, 80*80 at  in length.
     Y then is to increase by 1 everytime until it reaches the value of 8, which makes it 9 cells down due to beginning at 0*/
    {
      stroke(255, 238, 210); //setting lines around Grid squares to cream color using RGB numbers from Art 40A Triad
      strokeWeight(3); //setting line thickness
      fill(#B3A081); //filling using Brown Hex number from Art 40A Triad
      rect(x*80, y*80, 80, 80); //drawing 16*9 cells grid using a for loop
    }
}

void drawSquaresOne(int length)  //WIll call you makeLargesquare - Below is top left corner
{
  {
    fill(#FFF8EB); //using blue Hex number to fill square color from Art 40A Triad from color Adobe
    rect(40, 80-40, length, length); //1st row of squares to the first left column (x2 columns)
    rect(200, 80-40, length, length);
    rect(200+160, 80-40, length, length);
    rect(40, (80-40)*2, length, length);
  }

  {
    //Top right corner of Display - done
    rect(width-120, 80-40, length, length); //Last row of squares to the far right column (x2 columns)
    rect(width-120, (80-40)*2, length, length);
    rect(width-120, 40, length, length);
    rect(width-120, 40, length, length);
  }
  {
    rect(40, 120*2, length, length); //left lane of blocks
    rect(width-120, 120*2, length, length); //same except on right side lane
  }
}

void drawSquaresTwo() //Top Squares combination 1
{
  //100% using - Top Row square Combo1A (loop)
  int i = 2; //loop using while loop for top row design on drawing
  while (i <= 13)
  {
    rect(80*i, 40, 80, 80);
    fill(#FFF8EB);
    i+=2;  //value of 2 increases by 1 everytime until reaches the values of 13
  }
}

void drawSquaresThree() //Top squares design Combination 2
{
  for (int a = 2; a <= 12; a+=2)
  {
    rect((80*a)+40, 80-40, 80, 80);
  }
  fill(#B3A081); //filled with Brown color using Hex number from Art 40A Triad
  {
    for (int b = 1; b <= 12; b++)
    {
      rect((80*b)+80, 40, 40, 80);
    }
    fill(#FFF8EB); //fill with white color using Hex number from Art 40A Triad
  }
}

void drawSquaresFour()
{
  int xNum = 0; //final row loop using while loop
  while (xNum <= 14)
  {
    fill(255, 248, 235); //fill with white color using RGB number from Art 40A Triad
    rect((80*xNum)+40, (80*7)+40, 80, 80);
    xNum += 2;
  }
}

void drawSquaresFive(int area, int yCoordinates)
{
  rect((80*1)/2, (80*6)-yCoordinates, area, area); //3rd row every 2nd part loop row(every 2nd row loop was my intention)
  rect((80*1)/2, (80*6)-yCoordinates, area, area);
  rect(80*1, (80*6)-yCoordinates, area, area);
  rect(80*2, (80*6)-yCoordinates, area, area);
  rect(80*3, (80*6)-yCoordinates, area, area);
  rect(80*4, (80*6)-yCoordinates, area, area);
  rect(80*5, (80*6)-yCoordinates, area, area);
  rect(80*6, (80*6)-yCoordinates, area, area); //top row combo
  rect(80*7, (80*6)-yCoordinates, area, area);
  rect(80*8, (80*6)-yCoordinates, area, area);
  rect(80*9, (80*6)-yCoordinates, area, area);
  rect(80*10, (80*6)-yCoordinates, area, area);
  rect(80*11, (80*6)-yCoordinates, area, area);
  rect(80*12, (80*6)-yCoordinates, area, area);
  rect(80*13, (80*6)-yCoordinates, area, area);
  rect(80*14, (80*6)-yCoordinates, area, area);
  rect((80*15), (80*6)-yCoordinates, area-yCoordinates, area); //Last x2 column combination of cell 6 & 7
  //Cell 6 & 7 squares completed

  //creating display of squares for cells 3, 4 & 5 down, from 3 to 14.
  rect((80*2)+40, (80*2)+yCoordinates, area, area);// combining 3 cells from grid together
  rect((80*2)+40, (80*3)+yCoordinates, area, area);

  rect((80*4)+40, (80*2)+yCoordinates, area, area);// combining next 3 cells from grid together
  rect((80*4)+40, (80*3)+yCoordinates, 80, 80);

  rect((80*6)+40, (80*2)+yCoordinates, area, area);// combining next 3 cells from grid together
  rect((80*6)+40, (80*3)+yCoordinates, area, area);

  rect((80*8)+40, (80*2)+yCoordinates, area, area);// combining next 3 cells from grid together
  rect((80*8)+40, (80*3)+40, 80, 80);

  rect((80*10)+40, (80*2)+yCoordinates, area, area);// combining next 3 cells from grid together
  rect((80*10)+40, (80*3)+yCoordinates, 80, 80);

  rect((80*12)+40, (80*2)+yCoordinates, area, area);// combining next 3 cells from grid together
  rect((80*12)+40, (80*3)+yCoordinates, area, area);
  //Squares Completed
}

void drawBalls()
{
  if (mouseButton == CENTER) {        //Mouse Event1 -Turns top Cirles Red once centre button of mouse is clicked
    fill(#DB1D18); //red color from Adobe color - Blues and Reds (3)
  } else {
    fill (#6F92B3); //blue color from Adobe colors  Art 40A Triad
  }
  ellipse((80*3)-40, 80, 60, 60);
  ellipse((80*5), 80, 60, 60);
  ellipse((80*7)+40, 80, 60, 60);
  ellipse((80*9)-40, 80, 60, 60);
  ellipse((80*11), 80, 60, 60);
  ellipse((80*13)+40, 80, 60, 60);
  ellipse(80*15, 80, 60, 60);

  {
    fill(#B3A081); //brown color using Hex number to create half circle effect
    rect(80*2, 40, 40, 80);
    rect((80*7)+40, 40, 40, 80);
    rect(80*8, 40, 40, 80);
    rect((80*13)+40, 40, 40, 80);
    rect((80*6), 0, 80*4, 40); //rectangle for background for student name
    rect((80*6), height-40, 80*4, 40); //rectangle for background for student number
  }
}

void drawBallsTwo()
{
  if ((mousePressed) && (mouseButton ==LEFT)) { //Mouse Event 2
    fill(#DB1D18); //red color from Adobe color - Blues and Reds (3)
    ellipse(mouseX, mouseY, 60, 60); //draws a red circle once the left button is pressed
  } else if ((mousePressed) && (mouseButton == RIGHT)) {
    fill (#6F92B3); //blue color from Adobe colors  Art 40A Triad
    rect(mouseX, mouseY, 60, 60); //draws a blue square once the right Button is clicked
  }
  ellipse(width/2-80, (height/2)+120, 60, 60);
  ellipse(80, 640, 60, 60);
}

void mouseDragged()
{
  saveMyDisplayAsImage(); //creating method/mouse event to save my work as PNG file
}

void saveMyDisplayAsImage()
{
  save ("img/ballPlay.png"); //save display window as PNG image
}

void studentName()
{
  textAlign(CENTER);
  textSize(45);
  fill(255);
  text("Jake Nagle", 640, 35);
  text("20109020", width/2, height-5);
}
