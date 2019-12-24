boolean f = true;
boolean f1 = true;
import controlP5.*;
ControlP5 cp5,cp5_2;

Wave w,w2,w3;

ArrayList<Wave> arr = new ArrayList<Wave>(2);
ArrayList<ControlP5> arry = new ArrayList<ControlP5>(2);

float amp=75;
float per = 200;
void setup()
{
  size(1286,720);
  cp5 =  new ControlP5(this);
  
  
  cp5.addButton("SIN")
     .setValue(0)
     .setPosition(0,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("COS")
     .setValue(0)
     .setPosition(150,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("TAN")
     .setValue(0)
     .setPosition(300,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("COT")
     .setValue(0)
     .setPosition(450,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("SEC")
     .setValue(0)
     .setPosition(600,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("COSEC")
     .setValue(0)
     .setPosition(750,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("SUPERIMPOSE")
     .setValue(0)
     .setPosition(900,10)
     .setSize(100,20)
     ;
  
  cp5.addButton("DELETE")
     .setValue(0)
     .setPosition(1050,10)
     .setSize(100,20)
     ;
     
}

void draw()
{
  background(0);
  
  for(int i=0; i<arr.size();i++)
  {
    if(!arr.get(i).single)
    {
      arr.get(i).suprpositn(arr.get(i-1),arr.get(i-2));
    }
    else
    {
      arr.get(i).calcWave();
    }
    
    arr.get(i).renderWave();
  }
  
  
  //////////println(arry.size(),arr.size(),f);
  
}

void SIN(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("sin",true,"white",s,arr.size()*160,60);
  arr.add(w);
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
}

void COS(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("cos",true,"white",s,arr.size()*160,60);
  arr.add(w);
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
}

void TAN(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("tan",true,"white",s,arr.size()*160,60);
  arr.add(w);
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
}

void COT(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("cot",true,"white",s,arr.size()*160,60);
  arr.add(w);
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
}

void SEC(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("sec",true,"white",s,arr.size()*160,60);
  arr.add(w);
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
}

void COSEC(int theValue) 
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("cosec", true,"white",s,arr.size()*160,60);
  arr.add(w);
  
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
  
}

void SUPERIMPOSE(int theValue)
{
  ////////println("a button event from colorA: "+theValue);
  
  int x = arr.size();
  String s = "" + x;
  
  cp5_2 =  new ControlP5(this);
  arry.add(cp5_2);
  
  w = new Wave("null",false,"white",s,arr.size()*160,60);
  arr.add(w);
  
  if(f1)
  {
    arr.remove(arr.size()-1);
  
    if(f)
    {
      arry.remove(arry.size()-1);
      f = false;
    }
  
    else
    {
      ////////print('y');
      arry.remove(arry.size()-1).hide();
    }
  }
  
}

void DELETE(int theValue)
{

  ////////println("a button event from colorB: "+theValue);
  
  if(!f1)
    arr.remove(arr.size()-1);
  
  
  if(f)
  {
    arry.remove(arry.size()-1);
    f = false;
  }
  
  else
  {
    ////////print('y');
    if(!f1)
      arry.remove(arry.size()-1).hide();
  }
  f1 = false;

}
