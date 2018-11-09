import java.util.Collections;
SVGReader reader;
int ready=0;
float scaler;
int k=0;
float oldx;
float oldy;
int drawinit=0;
 ArrayList ve;

int nve = 1;
int colo;
float z;
int id=0;
int point=0;
Plot2 plotter;
int checksumx=0;
int checksumy=0;
boolean refill=false;
boolean needrefill=false;
String svg ;
ArrayList<Integer> colorpresent = new ArrayList<Integer>();
int widthdecal=300;
float maxintensity;
boolean plotting=false;
boolean connected=false;




void setup() {

  controlp5init();
  size(800, 650);
  ve= new ArrayList();
  background(200);
  plotter = new Plot2(this);


  println("colorpresent is"+colorpresent);
}





void draw() {
  displayUI();
  if (drawinit==0) {
    Collections.sort(ve);
              background(248);

    fill(255);
    stroke(0);
    rect(widthdecal, 0, 210*2, 297*2);
    for (int i=0;i<colorpresent.size();i++) {
      plotScreen(colorpresent.get(i));
      fill(colorpresent.get(i));
      rect(15+i*30, 460, 30, 30);
    }
    drawinit=1;
  }
  if (plotting==true) {
    strokeWeight(2);
  if(paused==false){
    plot( point);
    println(point);
    point=point+1;}else{
      plotter.penUp();}
      
 if(quitting==true){
   plotter.onquit();
   plotting=false;}
    if (point==findcolorend(colorpresent.get(k))) { 
      changePen(false);
      plotter.shutDown();
      // plotter.gohome();
      println("pcolordone");
      plotting=false;
      k=k+1;
    }
  }
}
