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
int c1 = 50;

int tt = 0;

// ____________________Second Column______________________________________
int x2 = 380;
int yn4 = 18;
int ynn = 410;

String[] name;
String[] name2;
String[] name3;

String[] name4;
String[] name5;
String[] name6;
String[] name7;
String[] name8;
String[] name9;
String[] name10;

String[] name11;
String[] name12;
String[] name13;
String[] name14;
String[] name15;
String[] name16;
String[] name17;
String[] name18;
String[] name19;
String[] name20;

void setup() {
  // , PDF, "filename.pdf"
  size(650, 850); 
  background(255); 
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);

  // Products name 
  name = new String[20];

  name[0]   = "15    File List";
  name[1]   = "        Customer List";
  name[2]   = "        Ship to List ";
  name[3]   = "        Mail to List ";
  name[4]   = "        Sales Rep List ";
  name[5]   = "        Vendor List  ";
  name[6]   = "        Comm. Code List ";
  name[7]   = "        Warehouse List";
  name[8]   = "        Uom List ";
  name[9]   = "        Chart/Acc List ";
  name[10]  = "        A/R Term Code List";
  name[11]  = "        Product List   ";
  name[12]  = "        Product Cost List ";
  name[13]  = "        ABC Price List  ";
  name[14]  = "        Product X-Ref List";
  name[15]  = "        Message List ";
  name[16]  = "        Ship Via List"; 
  name[17]  = "        Substitution List";
  name[18]  = "        Price Book   ";
  name[19]  = "        Audit Report";

  name11 = new String[20];

  name11[0]  = "  ";
  name11[1 ]  = " 15.1 ";
  name11[2 ]  = " 15.1a";
  name11[3 ]  = " 15.1b";
  name11[4 ]  = " 15.2 ";
  name11[5 ]  = " 15.2a";
  name11[6 ]  = " 15.3 ";
  name11[7 ]  = " 15.3a";
  name11[8 ]  = " 15.4 ";
  name11[9 ]  = " 15.4a";
  name11[10]  = " 15.5 ";
  name11[11]  = " 15.6 ";
  name11[12]  = " 15.6a";
  name11[13]  = " 15.6b";
  name11[14]  = " 15.7 ";
  name11[15]  = " 15.7a";
  name11[16]  = " 15.8 ";
  name11[17]  = " 15.8a";
  name11[18]  = " 15.9 ";
  name11[19]  = " 15.9a";

  name4 = new String[23];

  name4[0]       = "16    User Acces ";
  name4[0+inc]   = "        Client Login   "; 
  name4[1+inc]   = "        Client Password ";
  name4[2+inc]   = "        Verify Password ";
  name4[3+inc]   = "        Clients Company Path ";
  name4[4+inc]   = "        Date Created";
  name4[5+inc]   = "        Disable Login ";
  name4[6+inc]   = "        Client Number";
  name4[7+inc]   = "        Location Warehouse";
  name4[8+inc]   = "        Default Printer";
  name4[9+inc]   = "        Available Printers   ";
  name4[10+inc]  = "        Date Password Expires";
  name4[11+inc]  = "        Setup User Menu   ";
  name4[12+inc]  = "        Write, Erase, Exit   ";
  name4[13+inc]  = "         ";
  name4[14+inc]  = "         ";
  name4[15+inc]  = "         ";
  name4[16+inc]  = "         ";
  name4[17+inc]  = "         ";
  name4[18+inc]  = "         ";
  name4[19+inc]  = "         ";
  name4[20+inc]  = "         ";
  name4[21+inc]  = "         ";  

  name12 = new String[23];

  name12[0]  = " ";
  name12[1 ] = " 16.1 ";
  name12[2 ] = " 16.1a";
  name12[3 ] = " 16.1b";
  name12[4 ] = " 16.2 ";
  name12[5 ] = " 16.3 ";
  name12[6 ] = " 16.4 ";
  name12[7 ] = " 16.5 ";
  name12[8 ] = " 16.6 ";
  name12[9 ] = " 16.7 ";
  name12[10] = " 16.7a";
  name12[11] = " 16.8 ";
  name12[12] = " 16.9 ";
  name12[13] = " 16.9a";
  name12[14] = "      ";
  name12[15] = "      ";
  name12[16] = "      ";
  name12[17] = "      ";
  name12[18] = "      ";
  name12[19] = "      ";
  name12[20] = "      ";
  name12[21] = "      ";
  name12[22] = "      ";


  name5 = new String[06];

  name5[0]   = "17     End of Month ";
  name5[1]   = "        Sales & Inventory";
  name5[2]   = "        -Reset";
  name5[3]   = "        G/L Interface ";
  name5[4]   = "        -Maintenance ";
  name5[5]   = "        End of Period Status  ";

  name13 = new String[6];

  name13[0]   = "  ";
  name13[1 ]  = " 17.1 ";
  name13[2 ]  = "      ";
  name13[3 ]  = " 17.2 ";
  name13[4 ]  = "      ";
  name13[5 ]  = " 17.3";

  //String[] fontList = PFont.list();
  //printArray(fontList);


  name2 = new String[1];

  name2[0] = "18    Change Companies";

  name3 = new String[01];

  name3[0] = "19    Change Date ";

  name6 = new String[06];

  name6[0] = "20    Utilities";
  name6[1] = "        Test Fonts";
  name6[2] = "        Form Code Maintenance";
  name6[3] = "        Report Writer";
  name6[4] = "        Data Dictionary";
  name6[5] = "        -Cross Reference";

  name16 = new String[6];

  name16[0]  = "";
  name16[1 ] = " 20.1";
  name16[2 ] = " 20.2";
  name16[3 ] = " 20.3";
  name16[4 ] = " 20.4";
  name16[5 ] = " ";

  name7 = new String[04];

  name7[0] = "21    Export to Excel";
  name7[1] = "        Path/Data File";
  name7[2] = "        Data File Fields";
  name7[3] = "        Fields to Export";

  name17 = new String[4];

  name17[0] = "";
  name17[1] = " 21.1";
  name17[2] = " 21.2";
  name17[3] = " 21.3";

  name8 = new String[1];

  name8[0] = "22    Sales Matrix";

  name9 = new String[1];

  name9[0] = "23    Global Financial Bridge ";
  
  name10 = new String[1];

  name10[0] = "24    Exit to Windows";
}

void draw() {
  background(255);
  
    noFill();
  rect(50,50,width-100,height-100);
  
  translate(-31, -7); 
  fill(0);

  // Title
  textSize(30);
  text("Extended Contents", x, y + m, z);
  textSize(13);

  translate(0, -15);
  // #1 - block
  for (int i = 0; i < name.length; ++i) {
    text(name[i], x + c1, y + yn + (i * m1), z);
  }

  fill(#424143);
  for (int i = 0; i < name11.length; ++i) {
    text(name11[i], x, y + yn + (i * m1), z);
  }

  fill(0);
  // 4th block
  //translate(0, 290);
  for (int i=0; i<name4.length; ++i) {
    text(name4[i], x + c1, y + yn + 399 +(m1 * i), z);
  }

  fill(#424143);
  for (int i=0; i<name12.length; ++i) {
    text(name12[i], x, y + yn + 399 +(m1 * i), z);
  }
  //line(3*x2, y+yn+(yn4), x2*-100, y+yn+yn4);
  
  fill(0);
  pushMatrix();
  translate(0, 0);
  for (int j=0; j<name5.length; ++j) {
    text(name5[j], x2 + c1, y + yn + (yn4 * j), z);
  }
  fill(#424143);
  for (int j=0; j<name13.length; ++j) {
    text(name13[j], x2, y + yn + (yn4 * j), z);
  }
  popMatrix();

  translate(0,40);
  fill(0);
  for (int i=0; i<name2.length; ++i) {
    text(name2[i], x2+ c1, y + yn + 94 +(m1 * i), z);
  }

  for (int i=0; i<name3.length; ++i) {
    text(name3[i], x2+ c1, y + yn + 134 +(m1 * i), z);
  }

  for (int i=0; i<name6.length; ++i) {
    text(name6[i], x2+ c1, y + yn + 174 +(m1 * i), z);
  }
  fill(#424143);
  for (int i=0; i<name16.length; ++i) {
    text(name16[i], x2, y + yn + 174 +(m1 * i), z);
  }

  fill(0);
  for (int i=0; i<name7.length; ++i) {
    text(name7[i], x2+ c1, y + yn + 304 +(m1 * i), z);
  }
  fill(#424143);
  for (int i=0; i<name17.length; ++i) {
    text(name17[i], x2, y + yn + 304 +(m1 * i), z);
  }

  fill(0);
  for (int i=0; i<name8.length; ++i) {
    text(name8[i], x2+ c1, y + yn + 401 +(m1 * i), z);
  }

  for (int i=0; i<name9.length; ++i) {
    text(name9[i], x2+ c1, y + yn + 441 +(m1 * i), z);
  }

  for (int i=0; i<name10.length; ++i) {
    text(name10[i], x2+ c1, y + yn + 481 +(m1 * i), z);
  }

//  println("Finished.");
//  exit();
  //pushMatrix(); translate(0, 93);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
  
}