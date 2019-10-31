public class Voronoi
{

int nVoronoi = 200;
ArrayList<Node> nodes;

int minDistance = 0;
int minIndex = 0;

float increment = 0.01;

Voronoi()
{
  nodes = new ArrayList<Node>();
}

void generateMap()
{

    for(int i=0; i < 200; i++)
    {
        nodes.add( new Node() );     
    }
  
}

void generateNoise()
{


  
  for(int i = 0; i < 90; i++)
  {
    
  xoff += increment;
  yoff += increment;
  
  theta += PI/45;
  
  r = noise(xoff, yoff) * 300;
  

  
  location.x = r * cos(theta) + width/2;
  
  location.y = r * sin(theta) + height/2;
 
  
 
  nearestNode(location).attribut = 1;
  
  pushMatrix();
  translate(width/2, height/2);
  point(location.x,location.y);
  popMatrix();
  
  }

  
  assignAttribut();
  
}

Node nearestNode(PVector loc)
{
  Node tempNode = null;
  
  float dist = 0;
  for(int i = 0; i < nodes.size(); i++)
  {
    if(dist == 0)
    {
     
      dist = PVector.dist(loc, nodes.get(i).pos);
      tempNode = nodes.get(i);
      
    }
    else
    {
     
      if( dist > PVector.dist(loc, nodes.get(i).pos) )
      {
        dist = PVector.dist(loc, nodes.get(i).pos);
        tempNode = nodes.get(i);
      }
      
    }
    
    
    
  }
  
  
  return tempNode;
  
}

void assignAttribut()
{
  
  for(int i = 0; i < nVoronoi; i++)
  {
    nodes.get(i).generate(); 
  }
  
}

void display()
{
    background(0);
   // For each pixel
    for(int px = 0; px < width; px++)
    {
         for(int py = 0; py < height; py++)
         {
             // Check distances to colors
             minDistance = ((px  - (int)(nodes.get(0).pos.x) ) * (px - (int)(nodes.get(0).pos.x))) +  ((py  - (int)(nodes.get(0).pos.y)) * (py  - (int)(nodes.get(0).pos.y)));
             minIndex = 0;

             for (int nc = 0; nc < nVoronoi; nc++)
             {
                 int dist = ((px  - (int)(nodes.get(nc).pos.x) ) * (px - (int)(nodes.get(nc).pos.x))) +  ((py  - (int)(nodes.get(nc).pos.y)) * (py  - (int)(nodes.get(nc).pos.y)));
                 
                 if (dist <= minDistance)
                 {
                     minDistance = dist;
                     minIndex = nc;
                }
              
            }
            // Distance has been picked. Color!
            set(px, py, nodes.get(minIndex).c );
        }
    }
  
    
   /* noStroke();
    fill(0);
  
    for (int nc = 0; nc < nVoronoi; nc++)
    {        
       ellipse((int)nodes.get(nc).pos.x, (int)nodes.get(nc).pos.y , 3, 3);     
    }*/
  
  
}


}
