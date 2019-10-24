int previousTime;
int deltaTime;
int currentTime;
float increment = 0.01;




VoronoiMap vm;

void setup()
{ 
  size(640, 480);
  currentTime = millis();
  previousTime = millis();
  
  vm = new VoronoiMap();
  vm.generateDots();
  vm.generateMap();
  
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
  
  vm.seperate();
  
}

void display() 
{
   vm.display();
}

void keyPressed()
{
 
  switch(key)
  {

    
  }
  
}


  
