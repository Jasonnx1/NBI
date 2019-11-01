public class VoronoiMap
{

int nVoronoi = 200;
ArrayList<Node> nodes;

float[][] points;
Voronoi myVoronoi;
MPolygon[] myRegions;
float[][] myEdges;


int minDistance = 0;
int minIndex = 0;

float increment = 0.01;

VoronoiMap()
{
  points = new float[nVoronoi][2];
  nodes = new ArrayList<Node>();
  generateMap();
  
  myVoronoi = new Voronoi( points );
  myRegions = myVoronoi.getRegions();
  myEdges = myVoronoi.getEdges();
}

void generateMap()
{

    for(int i=0; i < nVoronoi; i++)
    {
        nodes.add( new Node() );    
        points[i][0] = nodes.get(i).pos.x;
        points[i][1] = nodes.get(i).pos.y;
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

void display(PApplet applet)
{
    background(0);
   
   // For each pixel
   
   stroke(2);
   
    for(int i=0; i<voronoi.myRegions.length; i++)
    {
      fill(nodes.get(i).c);
      voronoi.myRegions[i].draw(applet); // draw this shape
    }

    
  for(int i=0; i<myEdges.length; i++)
  {
    float startX = myEdges[i][0];
    float startY = myEdges[i][1];
    float endX = myEdges[i][2];
    float endY = myEdges[i][3];
    line( startX, startY, endX, endY );
  }

    

  
}


}
