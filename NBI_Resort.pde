import quickhull3d.*;
import megamu.mesh.*;

int previousTime;
int deltaTime;
int currentTime;

VoronoiMap voronoi;
float cooldown = 0;
PVector location = new PVector(0,0);
Grid grid;


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
    grid = new Grid(50, voronoi.focal);
    grid.split();
   
    
    noStroke();
  
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
  
   voronoi.display(this);
   grid.man.display();
   
   

}

void keyPressed()
{
 
  switch(key)
  {
    case 'r': setup();
               
    break;
    case 's': grid.man.shovel( voronoi.nearestNode(grid.man.pos) );
    voronoi.assignAttribut();
    break;
  }
  
}

void mousePressed()
{
  
  grid.move(mouseX, mouseY, voronoi.nearestNode(new PVector(mouseX, mouseY)).state.getName() );
  
}


  
