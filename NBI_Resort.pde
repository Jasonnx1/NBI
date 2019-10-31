int previousTime;
int deltaTime;
int currentTime;

Voronoi voronoi;
float r = 10;
float theta = PI;
float increment = 0.001;
float xoff = 0.0;
float yoff = 0.0;
float cooldown = 0;
PVector location = new PVector(0,0);

void setup()
{ 
  size(800, 600);
  currentTime = millis();
  previousTime = millis();

 
   
    // smooth edges
    smooth();  
    // limit the number of frames per second
    frameRate(60);
    colorMode(HSB, 100);
  
  
    voronoi = new Voronoi();
    voronoi.generateMap();
    voronoi.generateNoise();
    voronoi.display(); 
    

    
  
}


void draw()
{
  currentTime = millis();
  deltaTime = currentTime - previousTime;
  
  cooldown += deltaTime;
 

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
                  voronoi.generateNoise();
                  voronoi.display(); 
    break;
  }
  
}


  
