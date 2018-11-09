void LOAD_FILE(float theValue) {  
  println(":::LOAD SVG FILE:::");
  selectInput("Select a svg file to open:", "fileSelected");
} //End Load File

void fileSelected(File selection) {
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

