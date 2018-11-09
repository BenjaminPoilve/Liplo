import processing.serial.*;

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

  void openport(int portnum){
   
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
    
    
    
    
    
    
    
    
    
    
    
  


  void goingto(float x, float y, float intensity) {
    float[] out = new float[2];
    float[] vec = new float[2];
    vec[0] = x;
    vec[1] = y;
    getMatrix().mult(vec, out);
    x=out[0];
    y=out[1];
    int pasx=int((x-oldx)*80.6);
    int pasy=int((y-oldy)*45);
    
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


      int towait=int(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+invertx*pasx+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(int(towait));
    }
    oldx=oldx+float(pasx)/80.6;
    oldy=oldy+float(pasy)/45;
    if (deltax+deltay>10000) {
      deltax=0;
      deltay=0;
      refill=true;
    }
    posx=x;
    posy=y;
  }



  void goingtoabsolute(float x, float y, float intensity) {

    x=x;
    y=y;
    int pasx=int((x-oldx)*80.6);
    int pasy=int((y-oldy)*45);
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

      int towait=int(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+(invertx*pasx)+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(int(towait));
    }
    oldx=oldx+float(pasx)/80.6;
    oldy=oldy+float(pasy)/45;
    if (deltax+deltay>10000) {
      deltax=0;
      deltay=0;
      refill=true;
    }
    posx=x;
    posy=y;
  }




  void gogetink(float ysec, float y, float xsec) {

    goingto(0, y, 0);
    penDown();
    delay(500);
    penUp();
    goingto(xsec, ysec, 0);
  }
  void penDown() {
    //pen down
    pen=true;
    println("pen down");
    String outConsole = ("SP,1,100\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    delay(200);
  }

  void penUp() {
    //pen up
    pen=false;
    println("pen up");
    String outConsole = ("SP,0,100\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    delay(200);
  }
  
   void Toggle() {
    if(pen==true){
            penUp();
          }else{
            penDown();}
              
  }

  void shutDown() {
    String outConsole = ("EM,0,0\r");
    if (!writeToConsole) myPort.write(outConsole);
    println("shut down");
  }

  void goHome() {
    goingto(0, 0, 0);
  }


  void gotofirstpoint(float x, float y) {
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


  void line(float x, float y, float xaim, float yaim) {
    gotofirstpoint(x, y);
    goingto(xaim, yaim, 0);
  }

  void point(float y, float x) {
    gotofirstpoint(x, y);
  }


  void ellipse(float x, float y, float widthell, float heightell, int def) {
    gotofirstpoint(x+widthell/2.0, y);

    for (int i=0; i<=def;i++) {
      goingto(x+ widthell/2.0*cos(i/float(def)*2*PI), y+heightell/2.0*sin(i/float(def)*2*PI), 0);
      fill(255, 0, 0);
    }
  }

  void rect(float y, float x, float widthrect, float heightrect) {
    gotofirstpoint(x, y);
    goingto(x+widthrect, y, 0);
    goingto(x+widthrect, y+heightrect, 0);
    goingto(x, y+heightrect, 0);
    goingto(x, y, 0);
  }

  void setDrawspeed(float speed) {

    drawspeed=speed;
   
   println("drawspeed "+speed);
  }
  
  void setSeekspeed(float speed) {

    seekspeed=speed;
      println("seekspeed "+speed);
  }

  void onquit() {
    penUp();
    goingtoabsolute(0, 0, 0);
    String outConsole = ("SM,"+500+","+0+","+(1600)+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
    if (!writeToConsole) myPort.write(outConsole);
    shutDown();
    myPort.clear();
      // Close the port
      myPort.stop();
  }
  
  void coordrez(){
    oldx=0;
    oldy=0;
  }
    
  
  
  void moveX(float x) {
 int pasx=int((x-oldx)*80.6);
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
     


      int towait=int(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+0+","+invertx*pasx+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(int(towait));
    }
    oldx=oldx+float(pasx)/80.6;
   
  
  
   
}
void moveY(float y) {
 
    int pasy=int((y-oldy)*45);
  
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
    


      int towait=int(distance/vitesse)+10;
      // println(towait);

      String outConsole = ("SM,"+towait+","+inverty*pasy+","+0+"\r"); //SP,<value>,<duration> : <value> is 0 (for up) or 1 (for down)
      if (!writeToConsole) myPort.write(outConsole);

      delay(int(towait));
    }
    
    oldy=oldy+float(pasy)/45;
   
}

}






void serialEvent(Serial p) {
  String inString = p.readString(); 
  // println("received: " + inString, 10,50);
}

