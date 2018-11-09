 void plot( int numpoint) {

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
  void changePen(boolean value) {
    if (value==true) {
      plotter.penDown();
    }
    if (value==false) {
      plotter.penUp();
    }
  }


  void plotScreen(int colour) {
    for (nve=1;nve<ve.size();nve++) {

      if (((Point) ve.get(nve)).id ==((Point) ve.get(nve-1)).id ) {
     // println((Point) ve.get(colour));
        line(((Point) ve.get(nve-1)).x*2+widthdecal, ((Point) ve.get(nve-1)).y*2, ((Point) ve.get(nve)).x*2+widthdecal, ((Point) ve.get(nve)).y*2);
      }

      stroke(((Point) ve.get(nve)).couleur, 20);
    }
  }
