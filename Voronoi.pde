public class Voronoi
{

int nVoronoi = 200;
int[] seeds_x = new int[nVoronoi];
int[] seeds_y = new int[nVoronoi];
color[] seed_colors = new color[nVoronoi];

int minDistance = 0;
int minIndex = 0;

Voronoi()
{

}


void generateMap()
{
      for(int i=0; i < nVoronoi; i = i+1)
    {
        seeds_x[i] = int(random(20, width - 20));
        seeds_y[i] = int(random(20, height - 20));
        
        seed_colors[i] = color(random(255),random(255), 255);
      
    }
  
}

void display()
{
 
  color previousColor;
  previousColor = color(255);
   // For each pixel
    for(int px = 0; px < width; px++)
    {
         for(int py = 0; py < height; py++)
         {
             // Check distances to colors
             minDistance = ((px  - seeds_x[0]) * (px - seeds_x[0])) +  ((py  - seeds_y[0]) * (py  - seeds_y[0]));
             minIndex = 0;

             for (int nc = 0; nc < nVoronoi; nc++)
             {
                 int dist = ((px  - seeds_x[nc]) * (px - seeds_x[nc])) +  ((py  - seeds_y[nc]) * (py  - seeds_y[nc]));
                 
                
                 if (dist <= minDistance)
                 {
                     minDistance = dist;
                     minIndex = nc;
                }
              
            }
            // Distance has been picked. Color!
            set(px, py, seed_colors[minIndex]);
            

        }
    }
  
    
    noStroke();
    fill(0);
  
    for (int nc = 0; nc < nVoronoi; nc++)
    {        
       ellipse(seeds_x[nc], seeds_y[nc], 3, 3);     
    }
  
  
}


}
