int previousTime;
int deltaTime;
int currentTime;

Voronoi voronoi;

void setup()
{ 
  size(640, 480);
  currentTime = millis();
  previousTime = millis();
  
   // set the background color
   // background(255);

   
    // smooth edges
    smooth();  
    // limit the number of frames per second
    frameRate(60);
    colorMode(HSB);
  
  
    voronoi = new Voronoi();
    voronoi.generateMap();
    voronoi.display(); 
  
}


void draw()
{
  currentTime = millis();
  deltaTime = currentTime - previousTime;
 
  update(deltaTime);
  display();
  
  previousTime = currentTime;
}

void update(int deltatime)
{
  

  
}

void display() 
{
}

void keyPressed()
{
 
  switch(key)
  {
    case 'r':     voronoi = new Voronoi();
                  voronoi.generateMap();
                  voronoi.display(); 
    break;
  }
  
}


  
