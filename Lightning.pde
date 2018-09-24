void setup()
{
  size(500, 500);
  background(0);
  noLoop();
}




void draw()
{
  background(0);
  cat();
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  strokeWeight(3);
  lightning(120, 350);
  lightning(120, 350);
  lightning(120, 350);
  lightning(380, 350);
  lightning(380, 350);
  lightning(380, 350);
}

int startX, startY, endX, endY;

void lightning(int a, int b)
{
  startX = a;
  startY = b;
  while (startY>0)
  {
    endX = startX + (int)(Math.random()*11-5);
    endY = startY - (int)(Math.random()*10+1);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void cat()
{
  fill(171, 176, 186);
  noStroke();
  ellipse(250, 400, 175, 150);
  ellipse(250, 500, 200, 200);
  triangle(170, 370, 170, 315, 255, 350);
  triangle(330, 370, 330, 315, 245, 350);
  bezier(165, 500, 70, 300, 105, 280, 200, 475);
  bezier(335, 500, 430, 300, 395, 280, 300, 475);
  fill(0);
  ellipse(215, 375, 10, 10);
  ellipse(285, 375, 10, 10);
  ellipse(250, 400, 30, 30);
}

void mouseClicked()
{
  redraw();
}

