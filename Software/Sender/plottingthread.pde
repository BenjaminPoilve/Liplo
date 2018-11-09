int findcolorstart(int couleur){
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



int findcolorend(int couleur){
  int taille=ve.size();
  for (int i=1;i<taille-1;i++){
    if(((Point) ve.get(i)).couleur!=couleur & ((Point) ve.get(i-1)).couleur==couleur){
     
       return (i-1);} 
  
}
 return(taille-1);
 }
 
 float backlashcompensate(float x){
   if(x<0){
     x-=0;}
     return x;
 }
 
 
 void print(){
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
