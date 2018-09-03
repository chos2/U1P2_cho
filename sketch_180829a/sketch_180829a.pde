
PImage squirrel;
PImage acorn;
float Xs[] =new float[5];
float Ys[] =new float[5];
float Yspeed[] = new float[5];
PImage acorntree;

void setup()
{
  for (int i= 0; i<5; i++)
  {
    Xs[i] = random(0, 800);


    Ys[i] = random(0, 800);


    Yspeed[i] = random(5, 5);
  }
  size(800, 800);
  squirrel = loadImage("squirrel.jpg");
  acorn = loadImage("acorn.png");
  acorntree= loadImage("trees.jpg");
  background(acorntree);
}

void draw()
{
  background(255);
  image(squirrel, mouseX, mouseY);
  for (int i= 0; i<5; i++)
  {
    image(acorn, Xs[i], Ys[i]);
    Ys[i] = Ys[i] +Yspeed[0];
    if (Ys[i] >height)
    { 
      Ys[i] =0;
     
    }
    if(dist(mouseX, mouseY,Xs[i], Ys[i] )<100)
    {Ys[i]= 0;
     
    }
  }
}
