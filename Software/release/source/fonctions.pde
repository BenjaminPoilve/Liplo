
void exVert(RShape s) {
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

  void set(float x, float y, float z, int id, int couleur, float weight) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.id = id;
    this.couleur = couleur;
    this.weight = 0;
  }

  int compareTo(Object o) {
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
