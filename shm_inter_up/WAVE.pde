boolean t = false;
class Wave
{
  

  int xspacing = 1;   // How far apart should each horizontal location be spaced
  int w;              // Width of entire wave

  float theta = 0.0;  // Start angle at 0
  float amplitude;  // Height of wave
  float perd;  // How many pixels before the wave repeats
  float dx;  // Value for incrementing X, a function of period and xspacing
  float[] yvalues;  // Using an array to store height values for the wave
  
  boolean single;
  String function;
  String col;
  int visible;
  color c;
  
  Wave(String func, boolean natr, String colr,  String thePrefix, float xs,float ys)
  {
    col = colr;
    
    if(arr.size()==0)c = color(255,0,128);
    else if(arr.size()==1)c = color(255,0,0);
    else if(arr.size()==2)c = color(0,255,0);
    else if(arr.size()==3)c = color(0,0,255);
    else if(arr.size()==4)c = color(255,255,0);
    else if(arr.size()==5)c = color(255);
    else if(arr.size()==6)c = color(255,0,255);
    else if(arr.size()==7)c = color(0,255,255);
    
    if(t)
    {
      if(!single)
      {
        cp5_2.addSlider( "value-"+thePrefix )
          .setPosition(xs,ys)
          .setRange( -255, 255 )
          .plugTo( this, "setValue" )
          .setValue( 127 )
          .setSize(100,20)
          .setColorValue(0)
          .setColorForeground(c)
          .setLabel("amplitude")
          .setSliderMode(0)
          ;
        
        cp5_2.addSlider( "value-"+thePrefix+1 )
          .setPosition(xs,ys+30)
          .setRange( 0, 255 )
          .plugTo( this, "setVal" )
          .setValue( 200 )
          .setSize(100,20)
          .setColorValue(0)
          .setColorForeground(c)
          .setLabel("perd")
          ;
       
        cp5_2.addSlider( "value-"+thePrefix+2 )
          .setPosition(xs,ys+60)
          .setRange( 0, 255 )
          .plugTo( this, "visibility" )
          .setValue( 255 )
          .setSize(100,20)
          .setColorValue(0)
          .setNumberOfTickMarks(2)
          .setColorForeground(c)
          .setSliderMode(0)
          .setLabel("visible")
          ;
      }
    }
    
    single = natr;
    function = func;
    amplitude = amp;
    perd = per;
    visible = 255;
    
    w = width+16;
  
    yvalues = new float[w/xspacing];
    t = true;
  }
  
  void setValue(int theValue) {
    amplitude = theValue;
  }
  
  void setVal(int theValue) {
    perd = theValue;
  }
  
  void visibility(int theValue) {
    visible = theValue;
  }
  
  
  ControlP5 kill()
  {
    return cp5_2;
  }
  
  
  void calcWave() 
  {
    if(single)
    {
      // Increment theta (try different values for 'angular velocity' here
      theta += 0.02;
  

      // For every x value, calculate a y value with sine function
      float x = theta;
      for (int i = 0; i < yvalues.length; i++) 
      {
        if(function.equals("sin"))yvalues[i] = sin(x)*amplitude;
        else if(function.equals("cos"))yvalues[i] = cos(x)*amplitude;
        else if(function.equals("tan"))yvalues[i] = tan(x)*amplitude;
        else if(function.equals("cosec"))yvalues[i] = 1/sin(x)*amplitude;
        else if(function.equals("sec"))yvalues[i] = 1/cos(x)*amplitude;
        else if(function.equals("cot"))yvalues[i] = 1/tan(x)*amplitude;
      
        x+=dx;
      }
    }
  }
  
  void suprpositn(Wave w1, Wave w2)
  {
      for (int i = 0; i < yvalues.length; i++) 
      {
        yvalues[i] = w1.yvalues[i] + w2.yvalues[i]; 
      }
  }

  void renderWave() {
    noStroke();
    
    
    fill(c);
    
    // A simple way to draw the wave with an ellipse at each location
    //println(visible);
    for (int x = 0; x < yvalues.length; x++) 
    {
      dx = (TWO_PI / perd) * xspacing;
      if(visible == 255)
        ellipse(x*xspacing, height/2+yvalues[x], 10, 10);
    }
  }
};
