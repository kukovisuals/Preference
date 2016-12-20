PFont myFont;PFont myFont1;

String[] fontList = PFont.list();
String[] fontList1 = PFont.list();

void setup(){
   size(330,100);
   background(255);
   smooth();
   fill(0);
}

void draw(){
  background(255);
  translate(0,-22);
   
   //for (int i=0; i<336; i++){
     myFont = createFont(fontList[143], 32);
     
     textFont(myFont);
     //textAlign(CORNER);
     textSize(134);
     
     text("R",26, height+13);  
     textSize(57);
     text("AINBOW ",105, height-35);
     
     myFont1 = createFont(fontList1[68], 32);
     
     textFont(myFont1);
     textSize(41);
     text("ART GLASS ",123, height-4); 
     textSize(25);
     text("INC. ",287, height-11);   
   //}
   
  // printArray(fontList[68]);
}

void mousePressed(){
   save("data1/rainbow.jpg"); 
}