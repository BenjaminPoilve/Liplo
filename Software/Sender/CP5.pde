import controlP5.*; 
import javax.swing.UIManager; 
import javax.swing.JFileChooser; 
import java.util.Collections;
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

void controlp5init() {

     color activeColor = color(100);
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
    .setValue(float(1));
    
   

  sliders[si++] = controlP5.addSlider("Scale", 0.1, 3, left, top+posY+20, len, 15)
    .setValue(1);
  sliders[si++] = controlP5.addSlider("SeekSpeed", 0.1,10, left, top+posY+40, len, 15)
    .setValue(float(2));
  sliders[si++] = controlP5.addSlider("DrawSpeed",  0.1,10, left, top+posY+60, len, 15)
    .setValue(float(1));
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
   .setValue(float(0));
  sliders[si++] = controlP5.addSlider("MoveY", -50, 50, left, top+posY+20, len, 15)
   .setValue(float(0));

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
        
        void Spacing(float inValue) { 
        
        }
        
        void MoveX(float inValue) { 
           plotter.moveX(inValue);
        }
        
        void MoveY(float inValue) { 
           plotter.moveY(inValue);
        }
        
        
        
        void SeekSpeed(float inValue) { 
        
         plotter.setSeekspeed(inValue);
        }
        
           void DrawSpeed(float inValue) { 
        
         plotter.setDrawspeed(inValue);
        }
        
        
        void Resetcoord(){
          plotter.coordrez();
        }
        
      
        
        void Density(int inValue) { 
        

        }
        
        
        
        
        void Densityfilling(int inValue) {
        }
        
        void radioButton(int a) {
          println("a radio Button event "+a);
        }
        
        
        
        
        
        void controlEvent(ControlEvent theEvent) {
          if (theEvent.isGroup() && theEvent.name().equals("Serial")) {
            int val = (int)theEvent.group().value();
        
            println("Opening connection on port"+val);
        
            plotter.openport(val);
          }
        }
        
        
        
        void TogglePen() {
         plotter.Toggle();
        
         
        }
        
        void Pause(){
          paused=!paused;
        }
        
         void Quit(){
          quitting=!quitting;
        }
        
        
        void AngularDrawer() {
         
        }
        
        void InvertX() {
          invertx=-invertx;
          println("X inverted");
        }
        
        void InvertY() {
         inverty=-inverty;
          println("Y inverted");
        }
        
        
        
        void TesterCal() {
          if (connected==false) {
    println("---> ERROR: Connect to plotter first");
          }
          else {
            println("Testing calibration");
        
        
            println("Mesure the X and Y of the shape. Divise it by 100 and you have got your x and y ratio. ");
          }
        }
        
        
        
        void displayUI() {
        
          controlP5.show();
          controlP5.draw();
        
          //draw the rest of the interface
        
          fill(0);
          noStroke();
          //text("Benjamin Poilve, 2013, wwww.theelectricsquid.com", drawingxcenter, height-10);
          textAlign(CENTER);
         // text("Dead Simple Sender", drawingxcenter, 40);

        }
        
        
        
        

