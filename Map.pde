public class Map {
  
  color[][] map;
  Terrain terrain;
  
  Map()
  {   
    map = new color[width][height];    
  }
  
  
  void load()
  {
    
  noiseSeed( hour() + minute() + second() + millis() );
    
  float xoff = 0.0; // Start xoff at 0
  float detail = map(width, 0, width, 0.1, 0.6);
  noiseDetail(8, detail);
  
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
    for (int x = 0; x < width; x++) {
      xoff += increment;   // Increment xoff 
      float yoff = 0.0;   // For every xoff, start yoff at 0
      for (int y = 0; y < height; y++) {
      yoff += increment; // Increment yoff
      
      // Calculate noise and scale by 255
      float bright = noise(xoff, yoff) * 255;

      // Try using this line instead
      //  float bright = random(0,255);
      
      // Set each pixel onscreen to a grayscale value
      map[x][y] = color(bright);
  
      }
    }
  }
  
  void setTerrain(Terrain t)
  {
    terrain = t;  
  }
  
  void generateTerrain()
  {
    
    generateHeight();
    generateMoisture();
    
  }
  
  void generateMoisture()
  {
    
  }
  
  void generateHeight()
  {
    
    for(int x = 0; x < width; x++)
    {
      
      for(int y = 0; y < height; y++)
      {
        
        map[x][y] = terrain.getType(map[x][y]);
        
      }
      
    }
    
  }
  
  
  void display()
  {
    loadPixels();
  
  for(int i = 0; i < width; i++)
  {
    
    for(int j = 0; j < height; j++)
    {
      
     pixels[i+j*width] = map[i][j];
      
      
    }
    
  }
  
  updatePixels();
  
    
  }
  
  
}
