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
int c1 = 40;

int tt = 0;

// ____________________Second Column______________________________________
int x2 = 380;
int yn4 = 18;
int ynn = 410;

String[] name;
String[] name1;
String[] name2;
String[] name3;

String[] name4;
String[] name5;

void setup() {
  // , PDF, "filename.pdf"
  size(650, 850, PDF, "filename.pdf" ); 
  background(255); 
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);

  // Products name 
  name = new String[19];

  name[0]   = "  12    Rentals ";
  name[1]   = "          Rental Entry ";
  name[2]   = "          Rental Print & Issue";
  name[3]   = "          Rental Return       ";
  name[4]   = "          Rental Billing Calc ";
  name[5]   = "          Rental Pre-Invoice Select ";
  name[6]   = "          Rental Pre-Invoice Report";
  name[7]   = "          Rental Invoice Generator";
  name[8]   = "          Open Order Report";
  name[9]   = "          Rent Release/Hold Orders";
  name[10]  = "          Customer Service";
  name[11]  = "          View All Rentals";
  name[12]  = "          Rental Status";
  name[13]  = "          Inventory ";
  name[14]  = "   ";
  name[15]  = "   ";
  name[16]  = "   "; 
  name[17]  = "   ";
  name[18]  = "   ";

  name2 = new String[19];

  name2[0]  = "12.1 ";
  name2[1]  = "12.2 ";
  name2[2 ] = "12.2a";
  name2[3 ] = "12.3 ";
  name2[4 ] = "12.4 ";
  name2[5 ] = "12.4a";
  name2[6 ] = "12.4b";
  name2[7 ] = "12.5 ";
  name2[8 ] = "12.5 ";
  name2[9 ] = "12.7 ";
  name2[10] = "12.8 ";
  name2[11] = "12.8a";
  name2[12] = "12.9 ";
  name2[13] = "     ";
  name2[14] = "     ";
  name2[15] = "     ";
  name2[16] = "     ";
  name2[17] = "     ";
  name2[18] = "     ";

  name3 = new String[22];

  name3 [0]    = "13.1 ";
  name3 [1 ]   = "13.2 ";
  name3 [2 ]   = "13.3 ";
  name3 [3 ]   = "13.3a ";
  name3 [4 ]   = "13.3 ";
  name3 [5 ]   = "13.4 ";
  name3 [6 ]   = "13.4a ";
  name3 [7 ]   = "13.5 ";
  name3 [8 ]   = "13.5a ";
  name3 [9 ]   = "13.6 ";
  name3 [10]   = "13.7 ";
  name3 [11]   = "13.7a ";
  name3 [12]   = "13.8 ";
  name3 [13]   = "13.9 ";
  name3 [14]   = "13.9a ";
  name3 [15]   = "13.9b ";
  name3 [16]   = "   ";
  name3 [17]   = "   ";
  name3 [18]   = "   ";
  name3 [19]   = "   ";
  name3 [20]   = "   ";
  name3 [21]   = "   "; 
  
  name4 = new String[23];

  name4[0]       = "  13    Check Processing";
  name4[0+inc]   = "          Payable Modify"; 
  name4[1+inc]   = "          Monthly Check Register";
  name4[2+inc]   = "          Auto Pay Selection";
  name4[3+inc]   = "          Manual Pay select";
  name4[4+inc]   = "          Payment Selection Register";
  name4[5+inc]   = "          Check Print";
  name4[6+inc]   = "          Check Register";
  name4[7+inc]   = "          Manual Check Entry";
  name4[8+inc]   = "          Manual Check Register";
  name4[9+inc]   = "          Void Check Entry ";
  name4[10+inc]  = "          Misc Payments ";
  name4[11+inc]  = "          Misc Pay log ";
  name4[12+inc]  = "          A/P Inquiry  ";
  name4[13+inc]  = "          Bank Adjustment";
  name4[14+inc]  = "          Bank Reconciliation ";
  name4[15+inc]  = "          Change Pay Date ";
  name4[16+inc]  = "  ";
  name4[17+inc]  = "  ";
  name4[18+inc]  = "  ";
  name4[19+inc]  = "  ";
  name4[20+inc]  = "  ";
  name4[21+inc]  = "  ";  

  name1  = new String[37];

  name1[0]    = "14.1 ";
  name1[1 ]   = "14.1a";
  name1[2 ]   = "14.1b";
  name1[3 ]   = "14.1c";
  name1[4 ]   = "14.1d";
  name1[5 ]   = "14.2 ";
  name1[6 ]   = "14.2a";
  name1[7 ]   = "14.2b";
  name1[8 ]   = "14.2c";
  name1[9 ]   = "14.2d";
  name1[10]   = "14.3 ";
  name1[11]   = "14.3a";
  name1[12]   = "14.3b";
  name1[13]   = "14.3c";
  name1[14]   = "14.3d";
  name1[15]   = "14.4 ";
  name1[16]   = "14.4a";
  name1[17]   = "14.4b";
  name1[18]   = "14.4c";
  name1[19]   = "14.5 ";
  name1[20]   = "14.5a";
  name1[21]   = "14.5b";
  name1[22]   = "14.5c";
  name1[23]   = "14.5d";
  name1[24]   = "14.6 ";
  name1[25]   = "14.6a";
  name1[26]   = "14.7 ";
  name1[27]   = "14.7a";
  name1[28]   = "14.7b";
  name1[29]   = "14.7c";
  name1[30]   = "14.7d";
  name1[31]   = "14.8 ";
  name1[32]   = "14.8a";
  name1[33]   = "14.8b";
  name1[34]   = "14.9 ";
  name1[35]   = "14.9a";
  name1[36]   = "14.9b";
  
  name5 = new String[38];

  name5[0]   = " 14     File Maintenance";
  name5[1]   = "          Customer";
  name5[2]   = "          Ship to ";
  name5[3]   = "          Mail to ";
  name5[4]   = "          Ship Via ";
  name5[5]   = "          Sales Rep";
  name5[6]   = "          Payment Terms ";
  name5[7]   = "          Bank ";
  name5[8]   = "          Vendor";
  name5[9]   = "          State ";
  name5[10]  = "         Inventory ";
  name5[11]  = "         P/O Multi Price";
  name5[12]  = "         P/O Vend Pricing";
  name5[13]  = "         Warehouse ";
  name5[14]  = "         ABC Pricing";
  name5[15]  = "         Item Cross Ref ";
  name5[16]  = "         Commission Sched By GP ";
  name5[17]  = "         Reason Codes ";
  name5[18]  = "         Price Code Maint";
  name5[19]  = "         Product Lines ";
  name5[20]  = "         Tax Codes";
  name5[21]  = "         MFR UCC Nos. ";
  name5[22]  = "         Complementary Items";
  name5[23]  = "         G.P% Calculator";
  name5[24]  = "         Special Price";
  name5[25]  = "         Unit of Measure ";
  name5[26]  = "         Cust Message";
  name5[27]  = "         TS Weekly Update ";
  name5[28]  = "         Vendor Rebates  ";
  name5[29]  = "         Buyer / PO Agent";
  name5[30]  = "         Cust / Line Price";
  name5[31]  = "         Comm Code";
  name5[32]  = "         Bill of Material";
  name5[33]  = "         Consignee ";
  name5[34]  = "         Contract PO's" ;
  name5[35]  = "         Bulk Ts Add";
  name5[36]  = "         Price Factors ";
  name5[37]  = "         Rental Warehouse";
  //String[] fontList = PFont.list();
  //printArray(fontList);



}

void draw() {
  background(255);
  
  translate(-31, -7); 

  textSize(13);

  // Title
  textSize(30); fill(0);
  text("Extended Contents", x, y + m, z);
  textSize(13);
  
  translate(0,-15);
  // #1 - block
  for (int i = 0; i < name.length; ++i) {
   text(name[i], x + c1, y + yn + (i * m1), z);
  }
  fill(#424143);

  for (int i = 0; i < name2.length; ++i) {
    text(name2[i], x, y + yn + 18 + (i * m1) );
  }

  fill(0);
  //13th block
  pushMatrix();
  translate(0, 19);
  for (int i=0; i<name4.length; ++i) {
    text(name4[i], x + c1, y + yn + 305 +(m1 * i), z);
  } 
  fill(#424143);

  for (int i = 0; i < name3.length; ++i) {
    text(name3[i], x, y + yn + 323 + (i * m1) );
  }
  popMatrix();
  
  fill(0);
  pushMatrix();
  translate(0 ,0);
  for (int j=0; j<name5.length; ++j) {
    text(name5[j], x2 + c1, y + yn + (yn4 * j), z);
  }

  fill(#424143);
  for (int i = 0; i < name1.length; ++i) {
    text(name1[i], x2, y + yn + 18 + (i * m1) );
  }
  popMatrix();

  //int l = 305;
  //line(3*x2, y+yn+(yn4) + l  , x2*-100,l+ y+yn+yn4);
  
  println("Finished.");
  exit();
  
  //pushMatrix(); translate(0, 112);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
  
    //noFill();
  //rect(50,50,width-100,height-100);
  
}