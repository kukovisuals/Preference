import processing.pdf.*;

PFont coolvetica;

int x = 80;
int y = 80;
int z = 0;

// Margin
int m;

// MARGIN for Products name
int inc = 1;        // increment for a block 
int m1 = 18; 
int m2 = 1;

int yn = 80;        //first y margin
int mu = 3 + inc;   //multiple for product name 
int yn2 = 15 + inc; // second block margin 
int yn3 = 23 + inc; // 3d block margin
int xc  = 50;       // numeration 

// First Content Title MARGIN i.e. Orders 
int c1 = 45;

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
  size(650, 850 , PDF, "filename.pdf"); 
  background(255); 
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);

  // Products name 
  name = new String[19];

  name[0]   = "9    Accounts Payable";
  name[1]   = "      Voucher Entry";
  name[2]   = "      Voucher Register";
  name[3]   = "      Open Payables Report";
  name[4]   = "      Paid Payables Report";
  name[5]   = "      Payables By Due Date";
  name[6]   = "      Cash Requirements";
  name[7]   = "      Distribution Report";
  name[8]   = "      Payables Inquiry";
  name[9]   = "      Payables Modify";
  name[10]   = "      Vendor Maint    ";
  name[11]   = "      Vendor List        ";
  name[12]   = "      Receipts not Voucher";
  name[13]   = "      Vendor Labels   ";
  name[14]   = "      Change Pay Date";
  name[15]   = "      Historical Payables";
  name[16]   = "      -Distribution Report "; 
  name[17]   = "      Historical Voucher";
  name[18]   = "      -Entry Report";

  name2 = new String[20];

  name2[0]   = " 9.1";
  name2[1]   = " 9.1a";
  name2[2 ]  = " 9.2";
  name2[3 ]  = " 9.2a";
  name2[4 ]  = " 9.2b";
  name2[5 ]  = " 9.3";
  name2[6 ]  = " 9.3a";
  name2[7 ]  = " 9.4 ";
  name2[8 ]  = " 9.4a";
  name2[9 ]  = " 9.5";
  name2[10]  = " 9.5a";
  name2[11]  = " 9.6";
  name2[12]  = " 9.7 ";
  name2[13]  = " 9.8";
  name2[14]  = " 9.9";
  name2[15]  = "    ";
  name2[16]  = " 9.9a";
  name2[17]  = "    ";
  name2[18]  = "    ";
  name2[19]  = "    ";
  
  name3 = new String[28];

  name3[0]   = "   10.1  ";
  name3[1]   = "   10.1a ";
  name3[2]   = "   10.2  ";
  name3[3]   = "   10.2a ";
  name3[4]   = "   10.3  ";
  name3[5]   = "         ";
  name3[6]   = "   10.3a ";
  name3[7]   = "   10.4  ";
  name3[8]   = "   10.4a ";
  name3[9]   = "   10.4b ";
  name3[10]  = "   10.4c ";
  name3[11]  = "   10.5  ";
  name3[12]  = "   10.5a ";
  name3[13]  = "   10.5b ";
  name3[14]  = "   10.6  ";
  name3[15]  = "   10.7  ";
  name3[16]  = "   10.7a ";
  name3[17]  = "   10.7b ";
  name3[18]  = "   10.8  ";
  name3[19]  = "   10.8a ";
  name3[20]  = "   10.9  ";
  name3[21]  = "   10.9a ";
  name3[22]  = "         ";
  name3[23]  = "         ";
  name3[24]  = "         ";
  name3[25]  = "         ";
  name3[26]  = "         ";
  name3[27]  = "         ";

  name4 = new String[23];

  name4[0]   = "10    General Ledger";
  name4[1]   = "        Journal Entry"; 
  name4[1]   = "        Detail Report";
  name4[2]   = "        Trial Balance";
  name4[3]   = "        YTD Detail Report";
  name4[4]   = "        G/L Account Display";
  name4[5]   = "        Chart of Account ";
  name4[6]   = "        -Maintenance";
  name4[7]   = "        Chart of Account List  ";
  name4[8]   = "        Financial STMT Format";
  name4[9]   = "        Financial STMT List ";
  name4[10]  = "        Financial STMT Setup ";
  name4[11]  = "        Financial STMT Print";
  name4[12]  = "        Recurring J/E     ";
  name4[13]  = "        Recurring J/E List";
  name4[14]  = "        Recurring J/E Modify";
  name4[15]  = "        End of Month   ";
  name4[16]  = "        G/L Budget Entry";
  name4[17]  = "        Post Recurring J/E ";
  name4[18]  = "        SEQ Journal No. Report";
  name4[19]  = "        G/L Budget List  ";
  name4[20]  = "        Change G/L Date    ";
  name4[21]  = "        Delete Recurring J/E ";
  name4[22]  = "        Credit Card Maintenance ";  

  name1 = new String[14];

  name1[0]    = "11.1  ";
  name1[1 ]   = "11.2  ";
  name1[2 ]   = "11.2a  ";
  name1[3 ]   = "11.3  ";
  name1[4 ]   = "11.4  ";
  name1[5 ]   = "11.5  ";
  name1[6 ]   = "11.5a  ";
  name1[7 ]   = "11.6  ";
  name1[8 ]   = "11.7  ";
  name1[9 ]   = "11.8  ";
  name1[10]   = "11.9  ";
  name1[11]   = "    ";
  name1[12]   = "    ";
  name1[13]   = "    ";

  name5 = new String[14];

  name5[0]   = " 11     Counter Sales";
  name5[1]   = "          Entry";
  name5[2]   = "          Returns";
  name5[3]   = "          Reprint Ticket";
  name5[4]   = "          Modify Open Ticket";
  name5[5]   = "          Daily Counter Log";
  name5[6]   = "          Open Ticket Report";
  name5[7]   = "          Open Deposit Report";
  name5[8]   = "          COD/Deposit Close-Out";
  name5[9]   = "          Monthly Counter Log";
  name5[10]  = "          Inventory";
  name5[11]  = "          Customer Service";
  name5[12]  = "        ";
  name5[13]  = "        ";
  //String[] fontList = PFont.list();
  //printArray(fontList);



}

void draw() {
  background(255);
  
  translate(-31, -8); fill(0);

  textSize(13);
  fill(#424143);
  int f = -10;
  pushMatrix(); translate(0,3);
  for (int i = 0; i < name2.length; ++i) {
    text(name2[i], x, y + yn +(i * m1) );
  }

  for (int i = 0; i < name3.length; ++i) {
    text(name3[i], x2, y + yn + (m1 * i) );
  }

  for (int i = 0; i < name1.length; ++i) {
    text(name1[i], x, y + ynn + 92 + f+ (i * m1) );
  }
  popMatrix();
  
  // Title
  fill(0);
  textSize(30);
  text("Extended Contents", x, y + m, z);
  textSize(13);
  
  translate(0,-15);
  // #1 - block
  for (int i = 0; i < name.length; ++i) {
   text(name[i], x + c1, y + yn + (i * m1), z);
  }

  // 4th block
  translate(15, 0);
  for (int i=0; i<name4.length; ++i) {
    text(name4[i], x2 + c1 - 3, y + yn + (m1 * i), z);
  }
  //int ll=421;
  //line(3*x2, y+yn+(yn4)+ll, x2*-100, y+yn+yn4+ll);
  pushMatrix();
  translate(-20,92);
  for (int j=0; j<name5.length; ++j) {
    text(name5[j], x + c1, y + ynn + f + (yn4 * j), z);
  }
  popMatrix();

  println("Finished.");
  exit();
 
  //pushMatrix(); translate(0, 132);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
  
  //noFill();
  //rect(50,50,width-100,height-100);
}