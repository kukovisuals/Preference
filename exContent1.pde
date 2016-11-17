import processing.pdf.*;

PFont coolvetica;

int x = 80;
int y = 80;
int z = 0;

// Margin
int m;
// MARGIN for Products name
int inc = 1; // increment for a block 
int m1 = 18; 
int m2 = 1;

int yn = 80; //first y margin
int mu = 3 + inc; //multiple for product name 
int yn2 = 15 + inc; // second block margin 
int yn3 = 23 + inc; // 3d block margin
int xc  = 50; // numeration 
// First Content Title MARGIN i.e. Orders 
int c1 = 45;

int tt = 0;

// ____________________Second Column______________________________________
int x2 = 380;
int yn4 = 18;
int ynn = 480;

String[] name;
String[] name1;
String[] name2;
String[] name3;

String[] name4;
String[] name5;

void setup() {
  // , PDF, "filename.pdf"
  size(650, 850, PDF, "filename.pdf"); 
  background(255); 
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);

  // Products name 
  name = new String[29];

  name[0]   = "6    Purchasing";
  name[1]   = "      P/O Entry";
  name[2]   = "      P/O Modify";
  name[3]   = "      P/O Display";
  name[4]   = "      P/O Printing";
  name[5]   = "      Daily P/O Log";
  name[6]   = "      Open P/O Report";
  name[7]   = "      P/O Cancelation";
  name[8]   = "      P/O INQ Bt Vendor";
  name[9]   = "      Receiving Entry";
  name[10]  = "      Direct Receiving";
  name[11]  = "      Daily Receiving Log";
  name[12]  = "      Monthly Receiving Log";
  name[13]  = "      Return to Vendor";
  name[14]  = "      Receipt / RTV Print";
  name[15]  = "      Order Converter";
  name[16]  = "      P/O Activity";
  name[17]  = "      Requirements P/O";
  name[18]  = "      Receiving Copy of PO ";
  name[19]  = "      RFQ Broadcasting";
  name[20]  = "      Requirements RPT";
  name[21]  = "      Allocate Receipt";
  name[22]  = "      Print Order P/L";
  name[23]  = "      P/O Purge";
  name[24]  = "      Quote to P/O Log";
  name[25]  = "      Vendor Service";
  name[26]  = "      Inventory";
  name[27]  = "      Receipt Display";
  name[28]  = "      Vendor Analysis";

  name2 = new String[29];

  name2[0]   ="";
  name2[1]   =" 6.1 ";
  name2[2]   =" 6.1a";
  name2[3]   =" 6.1b";
  name2[4]   =" 6.1c";
  name2[5]   =" 6.2 ";
  name2[6]   =" 6.2a";
  name2[7]   =" 6.3 ";
  name2[8]   =" 6.3a";
  name2[9]   =" 6.4 ";
  name2[10]  =" 6.4a";
  name2[11]  =" 6.4b";
  name2[12]  =" 6.4c";
  name2[13]  =" 6.5 ";
  name2[14]  =" 6.5a";
  name2[15]  =" 6.5b";
  name2[16]  =" 6.6 ";
  name2[17]  =" 6.6a";
  name2[18]  =" 6.6b";
  name2[19]  =" 6.7 ";
  name2[20]  =" 6.7a";
  name2[21]  =" 6.8 ";
  name2[22]  =" 6.8a";
  name2[23]  =" 6.8b";
  name2[24]  =" 6.8b";
  name2[25]  =" 6.9 ";
  name2[26]  =" 6.9a";
  name2[27]  =" 6.9b";
  name2[28]  =" 6.9c";

  name3 = new String[27];

  name3 [0]    ="   7.1 ";
  name3 [1]    ="   7.1a";
  name3 [2]    ="   7.2 ";
  name3 [3]    ="   7.3 ";
  name3 [4]    ="   7.3a";
  name3 [5]    ="   7.3b";
  name3 [6]    ="   7.3c";
  name3 [7]    ="   7.4 ";
  name3 [8]    ="   7.5 ";
  name3 [9]    ="   7.6 ";
  name3 [10]   ="   7.7 ";
  name3 [11]   ="       ";
  name3 [12]   ="   7.8 ";
  name3 [13]   ="   7.8a";
  name3 [14]   ="   7.8b";
  name3 [15]   ="   7.9 ";
  name3 [16]   ="       ";
  name3 [17]   ="   7.9a";
  name3 [18]   ="       ";
  name3 [19]   ="   7.9b";
  name3 [20]   ="       ";
  name3 [21]   ="       ";
  name3 [22]   ="       ";
  name3 [23]   ="       ";
  name3 [24]   ="       ";
  name3 [25]   ="       ";
  name3 [26]   ="       ";


  name4 = new String[21];
  
  name4[0]   = "  7    Sales";
  name4[1]   = "        Sales By Customer Display"; 
  name4[2]   = "        Sales Rep Display";
  name4[3]   = "        Inventory Sales Display";
  name4[4]   = "        Product/Customer Sales Display";         
  name4[5]   = "        Customer Class Sales Display";
  name4[6]   = "        Product Line Sales Display";
  name4[7]   = "        Customer Sales Analysis";
  name4[8]   = "        Product Sales Analysis"; 
  name4[9]   = "        Customer / Product Sale";
  name4[10]   = "        Detail Customer/Product"; 
  name4[11]  = "        Customer Invoice     ";
  name4[12]  = "        -Histoy Support";
  name4[13]  = "        Sales By Vendor"; 
  name4[14]  = "        State Sales Display";
  name4[15]  = "        Sales-Rep Analysis"; 
  name4[16]  = "        Monthly Detail";
  name4[17]  = "        -Commission Report";
  name4[18]  = "        Monthly Summary ";
  name4[19]  = "        -Commission Report";
  name4[20]  = "        Flash ";
 
  name1 = new String[21];

  name1[0]   = "   8.1";
  name1[1]   = "   8.2";
  name1[2 ]  = "   8.3";
  name1[3 ]  = "   8.3a";
  name1[4 ]  = "   8.3b";
  name1[5 ]  = "   8.4";
  name1[6 ]  = "   8.5";
  name1[7 ]  = "   8.5a";
  name1[8 ]  = "   8.6";
  name1[9 ]  = "   8.7";
  name1[10]  = "   8.7a";
  name1[11]  = "   8.8";
  name1[12]  = "   8.9";
  name1[13]  = "      ";
  name1[14]  = "      ";
  name1[15]  = "      ";
  name1[16]  = "      ";
  name1[17]  = "      ";
  name1[18]  = "      ";
  name1[19]  = "      ";
  name1[20]  = "      ";

  name5 = new String[14];

  name5[0]   = "  8    Receivables";
  name5[1]   = "        Cash Application";
  name5[2]   = "        Receivable Inquiry";
  name5[3]   = "        Monthly Cash Journal";
  name5[4]   = "        Detail/Summary Aging Reports";
  name5[5]   = "        Statements      ";
  name5[6]   = "        Msg Follow-up Report";
  name5[7]   = "        Adjustment Entry   ";
  name5[8]   = "        Adjustment Log   ";
  name5[9]   = "        Set on Hold";
  name5[10]  = "        Move Paid Inventory to History";
  name5[11]  = "        History Purge      ";
  name5[12]  = "        Generate Interest";
  name5[13]  = "        Credit Card Payments";
  //String[] fontList = PFont.list();
  //printArray(fontList);
}

void draw() {
  background(255);
  
  //noFill();
  //rect(50,50,width-100,height-100);
  
  translate(-32, -7); 
  
  pushMatrix(); translate(0,5);
  textSize(13);
  fill(#424143);
  for (int i = 0; i < name2.length; ++i) {
    text(name2[i], x, y - 20 + yn + (i * m1) );
  }

  for (int i = 0; i < name3.length; ++i) {
    text(name3[i], x2 - 30,-2+ y + yn + (i * m1) );
  }
  
  for (int i = 0; i < name1.length; ++i) {
    text(name1[i], x2 - 30,-2 + y + ynn + (i * m1) );
  }
  popMatrix();
  
  fill(0);
  // Title
  textSize(30);
  text("Extended Contents", x, y + m, z);
  textSize(13);
  
  pushMatrix();
  translate(0,-15);
  // #1 - block
  for (int i = 0; i < name.length; ++i) {
   text(name[i], x + c1, y + yn + (i * m1), z);
  }

  // 4th block
  translate(15, 0);
  for (int i=0; i<name4.length; ++i) {
    text(name4[i], x2, y + yn + (m1 * i), z);
  }
  //line(3*x2, y+yn+(yn4), x2*-100, y+yn+yn4);
  for (int j=0; j<name5.length; ++j) {
    text(name5[j], x2, y + ynn + (yn4 * j), z);
  }
  popMatrix();

  println("Finished.");
  exit();
  
  //pushMatrix(); translate(0, -28);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
}