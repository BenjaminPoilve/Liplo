import geomerative.*;

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


  float screenScale = 2.0;

  boolean plotting = false;
  boolean colorfind = true;


  SVGReader(PApplet parent, String svgName) {
    this.parent = parent;
    //run setups for geomerative library
    RG.init(parent);
      RG.setPolygonizer(RG.UNIFORMLENGTH); 
     RG.setPolygonizerLength(0.1);
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

