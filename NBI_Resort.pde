import quickhull3d.*;
import megamu.mesh.*;

int previousTime;
int deltaTime;
int currentTime;

VoronoiMap voronoi;
float cooldown = 0;
PVector location = new PVector(0,0);

void setup()
{
  
    size(800, 600);
    
    currentTime = millis();
    previousTime = millis();

    smooth();  
    frameRate(60);
    colorMode(HSB, 100);
  
    voronoi = new VoronoiMap();
    voronoi.generateNoise();
    voronoi.display(this); 
  
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
    case 'r': setup();
               
    break;
  }
  
}


  
