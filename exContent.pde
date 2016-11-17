import processing.pdf.*;

PFont coolvetica;

int x = 60;
int y = 80;
int z = 0;

// Margin
int m;

// MARGIN for Products name
int inc   = 1;           // increment for a block 
int m1    = 18; 
int m2    = 1;
int yn    = 80;          //first y margin
int mu    = 3  + inc;     //multiple for product name 
int yn2   = 15 + inc;    // second block margin 
int yn3   = 23 + inc;    // 3d block margin
int xc    = 50;          // numeration 
// First Content Title MARGIN i.e. Orders 
int c1 = 50;

int tt = 0;

// ____________________Second Column______________________________________
int x2    = 380;
int yn4   = 18;
int ynn   = 405;

String[] name;
String[] name2;
String[] name3;
String[] name4;
String[] name5;
String[] name6;
String[] name7;

void setup() {
  // , PDF, "filename.pdf"
  size(650, 850, PDF, "filename.pdf"); 
  background(255);
  smooth(8);
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);
  
  // Products name 
  name = new String[26];
  name[0]  = "        Foreword";

  name[1]  = "        Preface";

  name[2]  = "  1    Five-M Software";
  name[3]  = "        Software";
  name[4]  = "        Context";

  name[5]  = "  2    Using Five-M";
  name[6]  = "        Download and Install";
  name[7]  = "        Export";
  name[8]  = "        Print";
  name[9] =  "        Reference";

  name[10] = "  3    Orders";
  name[11] = "        Order Entry"; 

  name[12]  = " XVI";
  name[13]  = "  XV";
  name[14]  = "     ";
  name[15]  = "  1.1";
  name[16]  = "  1.2";

  name[17]  = "    ";
  name[18]  = "  2.1";
  name[19]  = "  2.2";
  name[20]  = "  2.3";
  name[21]  = "  2.4";

  name[22]  = "    ";
  name[23]  = "  3.1";
  name[24]  = "  3.1a"; 

  name6 = new String[17];

  name6[0]  = "   ";
  name6[1]  = "4.1";
  name6[2]  = "4.1a";
  name6[3]  = "4.1b";
  name6[4]  = "4.2";
  name6[5]  = "4.3";
  name6[6]  = "4.3a";
  name6[7]  = "4.3b";
  name6[8]  = "4.4 ";
  name6[9]  = "4.5 ";
  name6[10] = "4.6 ";
  name6[11] = "4.6a";
  name6[12] = "4.7 ";
  name6[13] = "4.7a";
  name6[14] = "4.8 ";
  name6[15] = "4.8a";
  name6[16] = "4.9 ";

  name7 = new String[19];

  name7[0]   = "   ";
  name7[1]   = "5.1 ";
  name7[2]   = "5.1a";
  name7[3]   = "5.2 ";
  name7[4]   = "5.2a";
  name7[5]   = "5.3 ";
  name7[6]   = "5.3a";
  name7[7]   = "5.3b";
  name7[8]   = "5.4 ";
  name7[9]   = "5.5 ";
  name7[10]  = "5.5a";
  name7[11]  = "5.5b";
  name7[12]  = "5.6 ";
  name7[13]  = "5.7 ";
  name7[14]  = "5.7a";
  name7[15]  = "5.8 ";
  name7[16]  = "5.8a";
  name7[17]  = "5.9 ";
  name7[18]  = "5.9a";  

  name2 = new String[16];
  name2[0] = "        Order Modify";
  name2[1] = "        Order Display";
  name2[2] = "        Order/Quote Print";
  name2[3] = "        Packing Slip Entry";
  name2[4] = "        Daily Order Log";
  name2[5] = "        Open Order Report";
  name2[6] = "        Open Items Report";
  name2[7] = "        Quote to Order Log";

  name2[8] =  "  3.1a";
  name2[9] =  "  3.1b";
  name2[10] = "  3.1c";
  name2[11] = "  3.2";
  name2[12] = "  3.2a";
  name2[13] = "  3.3";
  name2[14] = "  3.3a";
  name2[15] = "  3.3b";

  name3 = new String[35];
  name3[0] = "        Order Cancel";
  name3[1] = "        Order Purge";
  name3[2] = "        On Hold Report";
  name3[3] = "        Release/Hold Orders";
  name3[4] = "        Convert Orders ";
  name3[5] = "        Customer Orders";
  name3[14]= "        Web Order Import";
  name3[15]= "        Inventory Inquiry";
  name3[16]= "        Bol Entry";
  name3[17]= "        Bol Print";
  name3[18]= "        Bol Cancel";
  name3[19]= "        Order Activity Display";
  name3[20]= "        Customer Service";

  name3[6] =  " 3.4 ";
  name3[7] =  " 3.4a";
  name3[8] =  " 3.4b";
  name3[9] =  " 3.5 ";
  name3[10] = " 3.5a";
  name3[11] = " 3.5b";
  name3[12] = " 3.6 ";
  name3[13] = " 3.7 ";
  name3[21] = " 3.8 ";
  name3[22] = " 3.8a";
  name3[23] = " 3.8  ";
  name3[24] = " 3.9  ";
  name3[25] = " 3.9a ";

  // SECOND COLUMN
  name4 = new String[30];

  name4[0]   = "4    Invoices"; 
  name4[1]   = "      Invoicing";
  name4[2]   = "      Direct Billing"; 
  name4[3]   = "      Credit Memos"; 
  name4[4]   = "      RMA Processing"; 
  name4[5]   = "      Invoice House Copy Print"; 
  name4[6]   = "      Invoice US Mail Printing"; 
  name4[7]   = "      Invoice Fax & E-mailing"; 
  name4[8]   = "      Fax/Email Submission Log"; 
  name4[9]   = "      Invoice Display"; 
  name4[10]  = "      Detail Sales Log"; 
  name4[11]  = "      Daily Sales Log"; 
  name4[12]  = "      Monthly sales Log"; 
  name4[13]  = "      Monthly Sales Tax Log"; 
  name4[14]  = "      Cost Correction"; 
  name4[15]  = "      Cost Correction Log"; 
  name4[16]  = "      Customer Service";  

  name5 = new String[30];

  name5[0]   = "5    Inventory";
  name5[1]   = "      Item Histoy Display";
  name5[2]   = "      Warehouse Transfers";
  name5[3]   = "      Adjustment Entry";
  name5[4]   = "      Status Report";
  name5[5]   = "      Low Stock Report";
  name5[6]   = "      Bin/Lot Detail Report";
  name5[7]   = "      Status Report By Bin";
  name5[8]   = "      Adj/Whse Xfer Log";
  name5[9]   = "      Warehouse";
  name5[10]  = "      Packing Entry";
  name5[11]  = "      Packaging Entry Log";
  name5[12]  = "      Value Report";
  name5[13]  = "      Bom Display";
  name5[14]  = "      Cost Updating";
  name5[15]  = "      Physical Inventory";
  name5[16]  = "      None Stock Log";
  name5[17]  = "      Bom Print";
  name5[18]  = "      ABC Price Create/Update";
  //String[] fontList = PFont.list();
  //printArray(fontList);
}

void draw() {
  background(255);
  
  //noFill();
  //rect(50,50,width-100,height-100);
  
  translate(-11, -7);
  fill(0);
  // Title
  textSize(30);
  text("Extended Contents", x, y + m);
  textSize(13);

  translate(0, -15);
  // #1 - block
  text(name[0], x + c1, y + yn + (0      * m1));
  fill(#424143);
  text(name[12+tt], x, y + yn + (0      * m1));

  translate(0, -18);
  fill(0);
  text(name[1], x + c1, y + yn + (2      * m1));
  fill(#424143);
  text(name[13+tt], x, y + yn + (2      * m1));
  // #1 - block

  fill(0);
  pushMatrix();
  translate(0, 5);
  text(name[2], x + c1, y + yn + (4      * m1));
  text(name[3], x + c1, y + yn + (5      * m1));
  text(name[4], x + c1, y + yn + (6      * m1));

  // #1 - block
  fill(#424143);
  text(name[14+tt], x, y + yn + (4      * m1));
  text(name[15+tt], x, y + yn + (5      * m1));
  text(name[16+tt], x, y + yn + (6      * m1));
  popMatrix();

  pushMatrix();
  translate(0, 15);
  // #2 - block
  text(name[17+tt], x, y + yn + ((7+m2)  * m1));
  text(name[18+tt], x, y + yn + ((8+m2)  * m1));
  text(name[19+tt], x, y + yn + ((9+m2)  * m1));
  text(name[20+tt], x, y + yn + ((10+m2) * m1));
  text(name[21+tt], x, y + yn + ((11+m2) * m1));

  fill(0);
  // #2 - block
  text(name[5], x + c1, y + yn + ((7+m2) * m1));
  text(name[6], x + c1, y + yn + ((8+m2) * m1));
  text(name[7], x + c1, y + yn + ((9+m2)  * m1));
  text(name[8], x + c1, y + yn + ((10+m2) * m1));
  text(name[9], x + c1, y + yn + ((11+m2) * m1));
  popMatrix();

  pushMatrix();
  translate(0, 19);
  text(name[10], x + c1, y + yn + ((10+mu) * m1));
  text(name[11], x + c1, y + yn + ((11+mu) * m1));

  // #3 block - Other Products
  fill(0);
  text(name2[0], x + c1, y + yn + (0 + yn2 * m1));
  text(name2[1], x + c1, y + yn + ((1 + yn2) * m1));
  text(name2[2], x + c1, y + yn + ((2 + yn2) * m1));
  text(name2[3], x + c1, y + yn + ((3 + yn2) * m1));
  text(name2[4], x + c1, y + yn + ((4 + yn2) * m1));
  text(name2[5], x + c1, y + yn + ((5 + yn2) * m1));
  text(name2[6], x + c1, y + yn + ((6 + yn2) * m1));
  text(name2[7], x + c1, y + yn + ((7 + yn2) * m1));
  //more in block 3
  text(name3[0], x + c1, y + yn + (0 + yn3 * m1));
  text(name3[1], x + c1, y + yn + ((1 + yn3) * m1));
  text(name3[2], x + c1, y + yn + ((2 + yn3) * m1));
  text(name3[3], x + c1, y + yn + ((3 + yn3) * m1));
  text(name3[4], x + c1, y + yn + ((4 + yn3) * m1));
  text(name3[5], x + c1, y + yn + ((5 + yn3) * m1));
  text(name3[14], x + c1, y + yn + ((6 + yn3) * m1));
  text(name3[15], x + c1, y + yn + ((7 + yn3) * m1));
  text(name3[16], x + c1, y + yn + ((8 + yn3) * m1));
  text(name3[17], x + c1, y + yn + ((9 + yn3) * m1));
  text(name3[18], x + c1, y + yn + ((10 + yn3) * m1));
  text(name3[19], x + c1, y + yn + ((11 + yn3) * m1));
  text(name3[20], x + c1, y + yn + ((12 + yn3) * m1));


  fill(#424143);
  //#3 block start at 55 numbers
  text(name[22+tt], x, y + yn + ((10+mu) * m1));
  text(name[23+tt], x, y + yn + ((11+mu) * m1));
  text(name2[8], x, y + yn + (0 + yn2 * m1));
  text(name2[9], x, y + yn + ((1 + yn2) * m1));
  text(name2[10], x, y + yn + ((2 + yn2) * m1));
  text(name2[11], x, y + yn + ((3 + yn2) * m1));
  text(name2[12], x, y + yn + ((4 + yn2) * m1));
  text(name2[13], x, y + yn + ((5 + yn2) * m1));
  text(name2[14], x, y + yn + ((6 + yn2) * m1));
  text(name2[15], x, y + yn + ((7 + yn2) * m1));

  text(name3[6], x, y + yn + (0 + yn3 * m1));
  text(name3[7], x, y + yn + ((1 + yn3) * m1));
  text(name3[8], x, y + yn + ((2 + yn3) * m1));
  text(name3[9], x, y + yn + ((3 + yn3) * m1));
  text(name3[10], x, y + yn + ((4 + yn3) * m1));
  text(name3[11], x, y + yn + ((5 + yn3) * m1));
  text(name3[12], x, y + yn + ((6 + yn3) * m1));
  text(name3[13], x, y + yn + ((7 + yn3) * m1));
  text(name3[21], x, y + yn + ((8 + yn3) * m1));
  text(name3[22], x, y + yn + ((9 + yn3) * m1));
  text(name3[23], x, y + yn + ((10+ yn3) * m1));
  text(name3[24], x, y + yn + ((11+ yn3) * m1));
  text(name3[25], x, y + yn + ((12+ yn3) * m1));
  popMatrix(); 


  for (int i = 0; i < name6.length; ++i) {
    text(name6[i], x2, 18+  y + yn + (yn4 * i)  );
  }

  for (int i = 0; i < name7.length; ++i) {
    text(name7[i], x2, 343+  y + yn + (yn4 * i)  );
  }
  fill(0);
  // 4th block
  translate(0, 18);
  for (int i=0; i<17; ++i) {
    text(name4[i], x2 + c1, y + yn + (yn4 * i));
  }
  //line(3*x2, y+yn+(yn4), x2*-100, y+yn+yn4);
  for (int j=0; j<19; ++j) {
    text(name5[j], x2 + c1, y + ynn + (yn4 * j));
  }

  //noFill();
  ////rect(318, 150, 37, 25);
  println("Finished.");
  exit();
  
  //pushMatrix(); translate(0, 0);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
}