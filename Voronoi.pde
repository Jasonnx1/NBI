public class VoronoiMap
{

  
int nVoronoi = 1000;
ArrayList<Node> nodes;
PVector focal;

ArrayList<Point> perPoints;



float[][] points;
Voronoi myVoronoi;

MPolygon[] myRegions;
float[][] myEdges;


int minDistance = 0;
int minIndex = 0;



VoronoiMap()
{
  points = new float[nVoronoi][2];
  nodes = new ArrayList<Node>();
  perPoints = new ArrayList<Point>();
  generateMap();
  
  myVoronoi = new Voronoi( points );
  myRegions = myVoronoi.getRegions();
  myEdges = myVoronoi.getEdges();
  
  generatePoints();
}

void generatePoints()
{
  
  int w = width/20;
  int h = height/20;
  
  for(int i = 0; i < h; i++)
  {
     
      for(int j = 0; j < w; j++)
      {
        
        perPoints.add(new Point( new PVector(j*20, i*20) ) );
      
      }
    
  }
  
  
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
  float r = random(100, 250);
  float theta = PI;
  float increment = 0.2;
  float xoff = 0.0;
  float yoff = 0.0;
  PVector position = new PVector( random(r, width-r), random(r,height-r) );

  noiseSeed(hour() + minute() + second() + millis());

  for(int i = 0; i < 360; i++)
  {
    
    xoff += increment;
    yoff += increment; 
    theta += PI/180; 
   
    location.x = r * cos(theta) + position.x; 
    location.y = r * sin(theta) + position.y;
  
    nearestNode( location ).attribut = 0;
    
    pushMatrix();
      translate(position.x, position.y);
    popMatrix();
  
  }
  
 
 focal = position;
    

    
  for(Point p : perPoints)
  {
   
    float att = noise(xoff, yoff);
    p.setMoisture((noise(xoff) * 50) + 50);

    if(att < 0.60)
    att = 1;
    else if(att < 0.90)
    att = 2;
    else
    att = 4;
    
    xoff += increment;
    yoff += increment;
    p.setAttribut((int)att);
  
  }
  
  for(Node n : nodes)
  {
      n.moisture = nearestPoint(n.pos).moisture;
    if(PVector.dist(n.pos, focal) <= r )
    {
       if(n.attribut != 0)
       {
          n.attribut = nearestPoint(n.pos).givenAttribut;
       }
      
    }
    
  }
  
  assignAttribut();

}

Point nearestPoint(PVector loc)
{
  Point tempPoint = null;
  
  float dist = 0;
  for(Point p : perPoints)
  {
    if(dist == 0)
    {
     
      dist = PVector.dist(loc, p.pos);
      tempPoint = p;
      
    }
    else
    {
     
      if( dist > PVector.dist(loc, p.pos) )
      {
        dist = PVector.dist(loc, p.pos);
        tempPoint = p;
      }
      
    }
    
  }
  
  return tempPoint;
}

Node nearestNode(PVector loc)
{
  Node tempNode = null;
  
  float dist = 0;
  for(Node n : nodes)
  {
    if(dist == 0)
    {
     
      dist = PVector.dist(loc,n.pos);
      tempNode = n;
      
    }
    else
    {
     
      if( dist > PVector.dist(loc, n.pos) )
      {
        dist = PVector.dist(loc, n.pos);
        tempNode = n;
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
    strokeWeight(2);
   
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
  
  
 /* fill(0);
  for(int i = 0 ; i < nodes.size(); i++)
  {
    
    
    ellipse(nodes.get(i).pos.x, nodes.get(i).pos.y, 2, 2);
    
    
  
  }*/
  
  
  /*for(Point p : perPoints)
  {
   
    p.display();
 
  }*/
    

  
}


}
