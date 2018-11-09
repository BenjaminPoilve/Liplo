import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.Collections; 
import controlP5.*; 
import javax.swing.UIManager; 
import javax.swing.JFileChooser; 
import java.util.Collections; 
import processing.serial.*; 
import geomerative.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class svgchildrensplitterbotpaintzordrearraylists4 extends PApplet {


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




public void setup() {

  controlp5init();
  size(800, 650);
  ve= new ArrayList();
  background(200);
  plotter = new Plot2(this);


  println("colorpresent is"+colorpresent);
}





public void draw() {
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
 
 
 

ControlP5 controlP5;
Println console;
Slider[] sliders;
Range[] ranges;
Toggle[] toggles;
Bang[] bangs;



int invertx=-1;
  int inverty=-1;
  float gox=0;
  float goy=0;

boolean paused=false;
boolean quitting=false;
//other info
int drawingxcenter;
int drawingycenter;
int drawingheight;
int drawingwidth;
int left = 0;
int top = 5;
int len = 200;

public void controlp5init() {

     int activeColor = color(100);
  controlP5 = new ControlP5(this);
  controlP5.setAutoDraw(false);
  controlP5.setColorActive(activeColor);
  controlP5.setColorBackground(color(170));
  controlP5.setColorForeground(color(100));
  controlP5.setColorLabel(color(50));
  controlP5.setColorValue(color(255));


  Textarea myTextarea = controlP5.addTextarea("txt")
    .setPosition(25, 500)
      .setSize(180, 130)
        .setFont(createFont("", 10))
          .setLineHeight(14)
            .setColor(color(255))
              .setColorBackground(color(170, 170, 170))
                .setColorForeground(color(170, 100));
  ;

  console = controlP5.addConsole(myTextarea);//

  sliders = new Slider[30];
  ranges = new Range[30];
  toggles = new Toggle[30];
  bangs = new Bang[30];



  int si = 0;
  int ri = 0;
  int ti = 0;
  int bi = 0;
  int posY = 0;


  int left = 0;
  int top = 5;
  int len = 200;
  ListBox listBox = controlP5.addListBox("Serial")
    .setPosition(15, 30)
      .setSize(200, 200)
        .setItemHeight(10)
          .setBarHeight(10)
            .setColorBackground(color(252, 188, 0))
              .setColorActive(color(252, 188, 0))
                .setColorLabel(color(255))
                  ;

  String[] ports = Serial.list();
  println(ports);
  for (int i=0; i<ports.length; i++) {
    ListBoxItem lbi=listBox.addItem(ports[i], i);
    lbi.setColorBackground(color(170));
    lbi.setColorForeground(color(252, 188, 0));
    lbi.setColorLabel(color(50));
    lbi.setColorActive(color(252, 188, 0));
  }





  int oldsi=si;
  int oldri=ri;
  int oldti= ti;
  int oldbi=bi;

  ControlGroup ctrl2 = controlP5.addGroup("Basics", 15, 125, 60);
  ctrl2.activateEvent(true);
  ctrl2.setColorLabel(color(255, 255, 255));
  ctrl2.activateEvent(true);
  ctrl2.setColorBackground(color(0, 159, 227));
  ctrl2.open();

  top=5;
  posY=0;

  sliders[si++] = controlP5.addSlider("Density", 0, 20, left, top+posY, len, 15)
    .setValue(PApplet.parseFloat(1));
    
   

  sliders[si++] = controlP5.addSlider("Scale", 0.1f, 3, left, top+posY+20, len, 15)
    .setValue(1);
  sliders[si++] = controlP5.addSlider("SeekSpeed", 0.1f,10, left, top+posY+40, len, 15)
    .setValue(PApplet.parseFloat(2));
  sliders[si++] = controlP5.addSlider("DrawSpeed",  0.1f,10, left, top+posY+60, len, 15)
    .setValue(PApplet.parseFloat(1));
  toggles[ti] = controlP5.addToggle("Pause", left+0, top+posY+80, 15, 15);
  toggles[ti++].setLabel("Pause");
  posY += 80;




  toggles[ti] = controlP5.addToggle("Quit",  left+100, top+posY, 15, 15);
  toggles[ti++].setLabel("Quit");
  sliders[si++] = controlP5.addSlider("Spacing", 1, 1000, left, top+posY+20, len, 15)
    .setValue(1);

  posY += 70;



  for (int i = oldsi ; i < si; i++) {
    sliders[i].setGroup(ctrl2);
    sliders[i].captionLabel().toUpperCase(true);
    sliders[i].captionLabel().style().padding(4, 3, 3, 3);
    sliders[i].captionLabel().style().marginTop = -4;
    sliders[i].captionLabel().style().marginLeft = 0;
    sliders[i].captionLabel().style().marginRight = -14;
    sliders[i].captionLabel().setColorBackground(0x99ffffff);
    sliders[i].setColorForeground(color(0, 159, 227));
  }
  for (int i = oldri; i < ri; i++) {
    ranges[i].setGroup(ctrl2);
    ranges[i].captionLabel().toUpperCase(true);
    ranges[i].captionLabel().style().padding(4, 3, 3, 3);
    ranges[i].captionLabel().style().marginTop = -4;
    ranges[i].captionLabel().setColorBackground(0x99ffffff);
  }
  for (int i = oldti; i < ti; i++) {
    toggles[i].setGroup(ctrl2);
    toggles[i].setColorLabel(color(50));
    toggles[i].captionLabel().style().padding(4, 3, 3, 3);
    toggles[i].captionLabel().style().marginTop = -20;
    toggles[i].captionLabel().style().marginLeft = 18;
    toggles[i].captionLabel().style().marginRight = 5;
    toggles[i].captionLabel().setColorBackground(0x99ffffff);
    toggles[i].setColorActive(color(0, 159, 227));
    sliders[i].setColorForeground(color(0, 159, 227));
  }
  for (int i = oldbi; i < bi; i++) {
    bangs[i].setGroup(ctrl2);
    bangs[i].setColorLabel(color(50));
    bangs[i].captionLabel().style().padding(4, 3, 3, 3);
    bangs[i].captionLabel().style().marginTop = -20;
    bangs[i].captionLabel().style().marginLeft = 48;
    bangs[i].captionLabel().style().marginRight = 5;
    bangs[i].captionLabel().setColorBackground(0x99ffffff);
  }



  oldsi=si;
  oldri=ri;
  oldti= ti;
  oldbi=bi;

  ControlGroup ctrl3 = controlP5.addGroup("Calibration", 15, 280, 60);
  ctrl3.activateEvent(true);
  ctrl3.setColorLabel(color(255, 255, 255));
  ctrl3.activateEvent(true);
  ctrl3.setColorBackground(color(50, 205, 50));
  ctrl3.open();
  top=5;
  posY=0;

  sliders[si++] = controlP5.addSlider("MoveX", -50, 50, left, top+posY, len, 15)
   .setValue(PApplet.parseFloat(0));
  sliders[si++] = controlP5.addSlider("MoveY", -50, 50, left, top+posY+20, len, 15)
   .setValue(PApplet.parseFloat(0));

  toggles[ti] = controlP5.addToggle("TogglePen", left+0, top+posY+60, 15, 15);
  toggles[ti++].setLabel("Toggle Pen");
          toggles[ti] = controlP5.addToggle("InvertX",  left+00, top+posY+40, 15, 15);
          toggles[ti++].setLabel("Invert X");
          toggles[ti] = controlP5.addToggle("InvertY", left+100, top+posY+40, 15, 15);
          toggles[ti++].setLabel("Invert Y");
          posY += 40;
        
        
        
        
        
          toggles[ti] = controlP5.addToggle("Resetcoord", left, top+posY+40, 15, 15);
          toggles[ti++].setLabel("Reset Coordinates");
        
        
        
        
          for (int i = oldsi ; i < si; i++) {
            sliders[i].setGroup(ctrl3);
            sliders[i].captionLabel().toUpperCase(true);
            sliders[i].captionLabel().style().padding(4, 3, 3, 3);
            sliders[i].captionLabel().style().marginTop = -4;
            sliders[i].captionLabel().style().marginLeft = 0;
            sliders[i].captionLabel().style().marginRight = -14;
            sliders[i].captionLabel().setColorBackground(0x99ffffff);
            sliders[i].setColorForeground(color(50, 205, 50));
          }
          for (int i = oldri; i < ri; i++) {
            ranges[i].setGroup(ctrl3);
            ranges[i].captionLabel().toUpperCase(true);
            ranges[i].captionLabel().style().padding(4, 3, 3, 3);
            ranges[i].captionLabel().style().marginTop = -4;
            ranges[i].captionLabel().setColorBackground(0x99ffffff);
          }
          for (int i = oldti; i < ti; i++) {
            toggles[i].setGroup(ctrl3);
            toggles[i].setColorLabel(color(50));
            toggles[i].captionLabel().style().padding(4, 3, 3, 3);
            toggles[i].captionLabel().style().marginTop = -20;
            toggles[i].captionLabel().style().marginLeft = 18;
            toggles[i].captionLabel().style().marginRight = 5;
            toggles[i].captionLabel().setColorBackground(0x99ffffff);
            toggles[i].setColorForeground(color(50, 205, 50));
            toggles[i].setColorActive(color(50, 205, 50));
          }
          for (int i = oldbi; i < bi; i++) {
            bangs[i].setGroup(ctrl3);
            bangs[i].setColorLabel(color(50));
            bangs[i].captionLabel().style().padding(4, 3, 3, 3);
            bangs[i].captionLabel().style().marginTop = -20;
            bangs[i].captionLabel().style().marginLeft = 48;
            bangs[i].captionLabel().style().marginRight = 5;
            bangs[i].captionLabel().setColorBackground(0x99ffffff);
          }
        
        
          oldsi=si;
          oldri=ri;
          oldti= ti;
          oldbi=bi;
        
          ControlGroup ctrl4 = controlP5.addGroup("I/O", 15, 420, 60);
          ctrl4.activateEvent(true);
          ctrl4.setColorLabel(color(255, 255, 255));
          ctrl4.activateEvent(true);
          ctrl4.setColorBackground(color(233, 78, 27));
          ctrl4.open();
          top=5;
          posY=0;
        
          Button LoadButton = controlP5.addButton("LOAD_FILE", left+10, left+0, top+posY+0, 200, 15);
          LoadButton.setCaptionLabel("LOAD IMAGE FILE (.SVG)");
          Button PrintButton = controlP5.addButton("print", left+100, left+0, top+posY+20, 200, 15);
          PrintButton.setCaptionLabel("PRINT FILE");
          PrintButton.setColorForeground(color(233, 78, 27));
          PrintButton.setColorActive(color(233, 78, 27));
          LoadButton.setColorForeground(color(233, 78, 27));
          LoadButton.setColorActive(color(233, 78, 27));
          LoadButton.setGroup(ctrl4);
          PrintButton.setGroup(ctrl4);
        }
        
        public void Spacing(float inValue) { 
        
        }
        
        public void MoveX(float inValue) { 
           plotter.moveX(inValue);
        }
        
        public void MoveY(float inValue) { 
           plotter.moveY(inValue);
        }
        
        
        
        public void SeekSpeed(float inValue) { 
        
         plotter.setSeekspeed(inValue);
        }
        
           public void DrawSpeed(float inValue) { 
        
         plotter.setDrawspeed(inValue);
        }
        
        
        public void Resetcoord(){
          plotter.coordrez();
        }
        
      
        
        public void Density(int inValue) { 
        

        }
        
        
        
        
        public void Densityfilling(int inValue) {
        }
        
        public void radioButton(int a) {
          println("a radio Button event "+a);
        }
        
        
        
        
        
        public void controlEvent(ControlEvent theEvent) {
          if (theEvent.isGroup() && theEvent.name().equals("Serial")) {
            int val = (int)theEvent.group().value();
        
            println("Opening connection on port"+val);
        
            plotter.openport(val);
          }
        }
        
        
        
        public void TogglePen() {
         plotter.Toggle();
        
         
        }
        
        public void Pause(){
          paused=!paused;
        }
        
         public void Quit(){
          quitting=!quitting;
        }
        
        
        public void AngularDrawer() {
         
        }
        
        public void InvertX() {
          invertx=-invertx;
          println("X inverted");
        }
        
        public void InvertY() {
         inverty=-inverty;
          println("Y inverted");
        }
        
        
        
        public void TesterCal() {
          if (connected==false) {
    println("---> ERROR: Connect to plotter first");
          }
          else {
            println("Testing calibration");
        
        
            println("Mesure the X and Y of the shape. Divise it by 100 and you have got your x and y ratio. ");
          }
        }
        
        
        
        public void displayUI() {
        
          controlP5.show();
          controlP5.draw();
        
          //draw the rest of the interface
        
          fill(0);
          noStroke();
          //text("Benjamin Poilve, 2013, wwww.theelectricsquid.com", drawingxcenter, height-10);
          textAlign(CENTER);
         // text("Dead Simple Sender", drawingxcenter, 40);

        }
        
        
        
        

public void LOAD_FILE(float theValue) {  
  println(":::LOAD SVG FILE:::");
  selectInput("Select a svg file to open:", "fileSelected");
} //End Load File

public void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } 
  else {
    String loadPath =selection.getAbsolutePath();

    println("Loaded file: " + loadPath); 


    String[] p = splitTokens(loadPath, ".");
    boolean fileOK = false;

    if ( p[p.length - 1].equals("svg"))
      fileOK = true;

    println("File OK: " + fileOK); 

    if (fileOK) {
      reader = new SVGReader(this, loadPath); 
    }
     else {
      // Can't load file
      println("ERROR: BAD FILE TYPE");
    }
  }
}



class Plot2 {
  PApplet parent;
  // variables for serial connection to EiBotBoard
  Serial myPort;
  int portnum;  // Create object from Serial class
  int val;        // Data received from the serial port
  int deltax=0;
  int deltay=0;
  boolean pen;
  float oldx=0;
  float oldy=0;
  
  float checksumx=0;
  float checksumy=0;
  boolean refill;
  float posx=0;
  float decal=10;
  float posy=0;
  float drawspeed=1;
  float seekspeed=2;
  //test write output flags
  boolean writeToConsole = false;      //true will write only to console, not to EiBotBoard
  PMatrix matrix;

  Plot2(PApplet parenting) {
    matrix = parenting.getMatrix();
    // setup serial port
    parent=parenting;
    
  }

  //used to convert between machine coordinates and paper coordinates

  public void openport(int portnum){
   
    try {
      String portName = Serial.list()[portnum];
      println(portName);
      myPort = new Serial(parent,portName, 9600);
      //serial device found
      println("found: " + portName);
      println("Plotter Online");
      println("ready to roll!");
      connected=true;
       if (!writeToConsole) myPort.write( "SC,4,10000 \r");
    if (!writeToConsole) myPort.write( "SC,5," + 18000 + "\r");
    // sendCommand( "SC,10," + min(_servoRateUp,_servoRateDown) + "\r");
    if (!writeToConsole) myPort.write( "SC,11," +2000+ "\r");
    if (!writeToConsole) myPort.write( "SC,12," + 2000+ "\r");
    String outConsole = ("SM,"+500+","+0+","+(-500)+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);


    penUp();
    } 
    catch (Exception e) {
      //no serial device found
      println("Didn't find Plotter");
      println(e);
      writeToConsole = true;
    }
   
  }
    
    
    
    
    
    
    
    
    
    
    
  


  public void goingto(float x, float y, float intensity) {
    float[] out = new float[2];
    float[] vec = new float[2];
    vec[0] = x;
    vec[1] = y;
    getMatrix().mult(vec, out);
    x=out[0];
    y=out[1];
    int pasx=PApplet.parseInt((x-oldx)*80.6f);
    int pasy=PApplet.parseInt((y-oldy)*45);
    
    // println(checksumx/50.0-x);
    // println(checksumy/25.0-y);
    if (pen==true) {
      deltax+=abs(pasx);
      deltay+=abs(pasy);
    }
    println("Go to x "+pasx+" y "+pasy);
    float distance=sqrt((pow(pasx, 2)+pow(pasy*2, 2)));
    if (distance!=0) {
      float vitesse=drawspeed;
      if (pen==false ) {
        vitesse=seekspeed;
      }
      if (vitesse>10 ) {
        vitesse=10;
      }
      if (intensity!=0 ) {
        vitesse=intensity;
      }


      int towait=PApplet.parseInt(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+invertx*pasx+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(PApplet.parseInt(towait));
    }
    oldx=oldx+PApplet.parseFloat(pasx)/80.6f;
    oldy=oldy+PApplet.parseFloat(pasy)/45;
    if (deltax+deltay>10000) {
      deltax=0;
      deltay=0;
      refill=true;
    }
    posx=x;
    posy=y;
  }



  public void goingtoabsolute(float x, float y, float intensity) {

    x=x;
    y=y;
    int pasx=PApplet.parseInt((x-oldx)*80.6f);
    int pasy=PApplet.parseInt((y-oldy)*45);
    checksumx+=pasx;
    checksumy=pasy;
    // println(checksumx/50.0-x);
    // println(checksumy/25.0-y);
    if (pen==true) {
      deltax+=abs(pasx);
      deltay+=abs(pasy);
    }
    println("Go to x "+pasx+" y "+pasy);
    float distance=sqrt((pow(pasx, 2)+pow(pasy*2, 2)));
    if (distance!=0) {
      float vitesse=seekspeed;
      if (vitesse>10 ) {
        vitesse=10;
      }
      if (intensity!=0 ) {
        vitesse=intensity;
      }

      int towait=PApplet.parseInt(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+(invertx*pasx)+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(PApplet.parseInt(towait));
    }
    oldx=oldx+PApplet.parseFloat(pasx)/80.6f;
    oldy=oldy+PApplet.parseFloat(pasy)/45;
    if (deltax+deltay>10000) {
      deltax=0;
      deltay=0;
      refill=true;
    }
    posx=x;
    posy=y;
  }




  public void gogetink(float ysec, float y, float xsec) {

    goingto(0, y, 0);
    penDown();
    delay(500);
    penUp();
    goingto(xsec, ysec, 0);
  }
  public void penDown() {
    //pen down
    pen=true;
    println("pen down");
    String outConsole = ("SP,1,100\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    delay(200);
  }

  public void penUp() {
    //pen up
    pen=false;
    println("pen up");
    String outConsole = ("SP,0,100\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    delay(200);
  }
  
   public void Toggle() {
    if(pen==true){
            penUp();
          }else{
            penDown();}
              
  }

  public void shutDown() {
    String outConsole = ("EM,0,0\r");
    if (!writeToConsole) myPort.write(outConsole);
    println("shut down");
  }

  public void goHome() {
    goingto(0, 0, 0);
  }


  public void gotofirstpoint(float x, float y) {
    // println("goy"+posy+"aim"+y);
    //  println("gox"+posx+"aim"+x);
    float dist=sqrt(pow(x-posx, 2)+pow(y-posy, 2));
    if (dist>0) {

      penUp();
      goingto(x, y, 0);
      penDown();
    }
    if (pen==false) {
      penDown();
    }
  }


  public void line(float x, float y, float xaim, float yaim) {
    gotofirstpoint(x, y);
    goingto(xaim, yaim, 0);
  }

  public void point(float y, float x) {
    gotofirstpoint(x, y);
  }


  public void ellipse(float x, float y, float widthell, float heightell, int def) {
    gotofirstpoint(x+widthell/2.0f, y);

    for (int i=0; i<=def;i++) {
      goingto(x+ widthell/2.0f*cos(i/PApplet.parseFloat(def)*2*PI), y+heightell/2.0f*sin(i/PApplet.parseFloat(def)*2*PI), 0);
      fill(255, 0, 0);
    }
  }

  public void rect(float y, float x, float widthrect, float heightrect) {
    gotofirstpoint(x, y);
    goingto(x+widthrect, y, 0);
    goingto(x+widthrect, y+heightrect, 0);
    goingto(x, y+heightrect, 0);
    goingto(x, y, 0);
  }

  public void setDrawspeed(float speed) {

    drawspeed=speed;
   
   println("drawspeed "+speed);
  }
  
  public void setSeekspeed(float speed) {

    seekspeed=speed;
      println("seekspeed "+speed);
  }

  public void onquit() {
    penUp();
    goingtoabsolute(0, 0, 0);
    String outConsole = ("SM,"+500+","+0+","+(1600)+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    shutDown();
    myPort.clear();
      // Close the port
      myPort.stop();
  }
  
  public void coordrez(){
    oldx=0;
    oldy=0;
  }
    
  
  
  public void moveX(float x) {
 int pasx=PApplet.parseInt((x-oldx)*80.6f);
  println("Go to x "+pasx);
    float distance=abs(pasx);
    if (distance!=0) {
      float vitesse=drawspeed;
      if (pen==false ) {
        vitesse=seekspeed;
      }
      if (vitesse>10 ) {
        vitesse=10;
      }
     


      int towait=PApplet.parseInt(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+0+","+invertx*pasx+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(PApplet.parseInt(towait));
    }
    oldx=oldx+PApplet.parseFloat(pasx)/80.6f;
   
  
  
   
}
public void moveY(float y) {
 
    int pasy=PApplet.parseInt((y-oldy)*45);
  
  println("Go to y "+pasy);
    float distance=abs(pasy);
    if (distance!=0) {
      float vitesse=drawspeed;
      if (pen==false ) {
        vitesse=seekspeed;
      }
      if (vitesse>10 ) {
        vitesse=10;
      }
    


      int towait=PApplet.parseInt(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+0+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(PApplet.parseInt(towait));
    }
    
    oldy=oldy+PApplet.parseFloat(pasy)/45;
   
}

}






public void serialEvent(Serial p) {
  String inString = p.readString(); 
  // println("received: " + inString, 10,50);
}



public class SVGReader {
  //shapes and points for the SVG storage
  RShape rs;
  RPoint[] points;
  ArrayList ve= new ArrayList();

  //plot device
  Plot2 plotter;
  PApplet parent;

  float targetWidth = 210;
  float targetHeight = 297;


  float screenScale = 2.0f;

  boolean plotting = false;
  boolean colorfind = true;


  SVGReader(PApplet parent, String svgName) {
    this.parent = parent;
    //run setups for geomerative library
    RG.init(parent);
      RG.setPolygonizer(RG.UNIFORMLENGTH); 
     RG.setPolygonizerLength(0.1f);
   // RG.setPolygonizer(RG.ADAPTATIVE); 
  //  RG.setPolygonizerAngle(10);


    //load SVG into shape
    rs = RG.loadShape(svgName);

    println();
    println("STARTING SVGReader CLASS");
    println("Image width is: " + rs.width + " Image height is: " + rs.height);
    float scaleW = targetWidth/rs.width;
    float scaleH = targetHeight/rs.height;
    println("Scale based on width:  " + scaleW);
    println("Scale based on height: " + scaleH);
    scaler = min(scaleW, scaleH);
    println("Using smaller scale:   " + scaler);
    
    exVert(rs);
   
    println(rs.getTopRight().x);
    Collections.sort(ve);

          drawinit=0;


    //start plotter
  }

 
}


public void exVert(RShape s) {
  RShape[] ch; // children
  int n, i, j;
  RPoint[][] pa;

  n = s.countChildren();
  if (n > 0) {
    ch = s.children;
    for (i = 0; i < n; i++) {
      exVert(ch[i]);
    }
  }
  else { // no children -> work on vertex
    int couleur= s.getStyle().strokeColor;
    float weight= s.getStyle().strokeWeight;
    boolean strokeisnew=true;
    for (int k=0;k<colorpresent.size(); k++) {
      if (couleur==colorpresent.get(k)  ) {
        strokeisnew=false;
      }
    }
    if (strokeisnew==true) {
      colorpresent.add(couleur);
    }
    pa = s.getPointsInPaths();
    if (pa!=null ) {
      if (pa[0]!=null) {
        n = pa.length;
        for (i=0; i<n; i++) {
          if (pa[i]!=null) {
            for ( j=0; j<pa[i].length; j++) {
              if (j==0) {
                z=pa[i][j].y;
                id=id+1;

                ve.add(new Point(pa[i][j].x*scaler, pa[i][j].y*scaler, z, id, couleur, weight));
              }
              else
                ve.add(new Point(pa[i][j].x*scaler, pa[i][j].y*scaler, z, id, couleur, weight));
            }
          }
        }
        println("#paths: " + pa.length);
      }
    }
  }
}





class Point implements Comparable {
  float x, y, z;
  int id;
  int couleur;
  float weight;
  Point(float x, float y, float z, int id, int couleur, float weight) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.id = id;
    this.couleur = couleur;
    this.weight = 0;
  }

  public void set(float x, float y, float z, int id, int couleur, float weight) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.id = id;
    this.couleur = couleur;
    this.weight = 0;
  }

  public int compareTo(Object o) {
    Point pt = (Point)o;
    float d1=z;
    float col1=couleur;
    float col2=pt.couleur;
    float d2=pt.z;
    if(col1==col2){
    if (d1 < d2) {
      return -1;
    } 
    else if (d1 > d2) {
      return 1;
    } 
    else {
      return 0;
    }}else{
      if(col1<col2){
        return -1;}
        else{ return 1;}
  }}
}
 public void plot( int numpoint) {

    int nve=numpoint;
    stroke(((Point) ve.get(nve)).couleur);

    if (nve==0 ) {
      plotter.penUp();
      plotter.goingto(((Point) ve.get(nve)).x, ((Point) ve.get(nve)).y, ((Point) ve.get(nve)).weight);
      ellipse(((Point) ve.get(nve)).x*2+widthdecal, ((Point) ve.get(nve)).y*2, 2, 2);
    }
    else {
     
        if (((Point) ve.get(nve)).id ==((Point) ve.get(nve-1)).id ) {

          plotter.line(((Point) ve.get(nve-1)).x, ((Point) ve.get(nve-1)).y, ((Point) ve.get(nve)).x, ((Point) ve.get(nve)).y);
          line(((Point) ve.get(nve-1)).x*2+widthdecal, ((Point) ve.get(nve-1)).y*2, ((Point) ve.get(nve)).x*2+widthdecal, ((Point) ve.get(nve)).y*2);
        }
        else {


          if (refill==true & needrefill) {
            plotter.gogetink(((Point) ve.get(nve)).y, ((Point) ve.get(nve-1)).y, ((Point) ve.get(nve)).x*scaler);
            refill=false;
          }
          plotter.gotofirstpoint( ((Point) ve.get(nve)).x, ((Point) ve.get(nve)).y);
        }
      
    }
  }
  public void changePen(boolean value) {
    if (value==true) {
      plotter.penDown();
    }
    if (value==false) {
      plotter.penUp();
    }
  }


  public void plotScreen(int colour) {
    for (nve=1;nve<ve.size();nve++) {

      if (((Point) ve.get(nve)).id ==((Point) ve.get(nve-1)).id ) {
     // println((Point) ve.get(colour));
        line(((Point) ve.get(nve-1)).x*2+widthdecal, ((Point) ve.get(nve-1)).y*2, ((Point) ve.get(nve)).x*2+widthdecal, ((Point) ve.get(nve)).y*2);
      }

      stroke(((Point) ve.get(nve)).couleur, 20);
    }
  }
public int findcolorstart(int couleur){
  int taille=ve.size();
  for (int i=1;i<taille;i++){
    if(((Point) ve.get(i)).couleur==couleur & ((Point) ve.get(i-1)).couleur!=couleur){
      
       
       return i;} 

  
}

if(((Point) ve.get(0)).couleur==couleur){
 return(0);}
 else{
 return(-1);}
   

}



public int findcolorend(int couleur){
  int taille=ve.size();
  for (int i=1;i<taille-1;i++){
    if(((Point) ve.get(i)).couleur!=couleur & ((Point) ve.get(i-1)).couleur==couleur){
     
       return (i-1);} 
  
}
 return(taille-1);
 }
 
 public float backlashcompensate(float x){
   if(x<0){
     x-=0;}
     return x;
 }
 
 
 public void print(){
if (connected==false) {
    println("---> ERROR: Connect to Arduino first");
  }
  else {
    plotting=true;
    point=findcolorstart(colorpresent.get(k));
    
    if (point==-1) {
      plotting=false;
      println("no colorfound");
    }}}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "svgchildrensplitterbotpaintzordrearraylists4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
