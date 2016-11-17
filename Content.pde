import processing.pdf.*;

PFont coolvetica;

int x     = 240;
int y     = 80;
int z     = 0;

// Margin
int m;

// MARGIN for Products name
int m1   = 18; 
int mu   = 1;    //multiple for product name 
int yn   = 80;   //first y margin 
int yn2  = 14;   // second block margin 
int yn3  = 23;   // 3d block margin
int xc   = 50;   // numeration

// First Content Title MARGIN i.e. Orders 
int c1   = 50;

int tt   = 0;

String[] name;
String[] name2;
String[] name3;
void setup() {
  // , PDF, "filename.pdf"     loadFont("DejaVuSans-32.vlw");
  size(650, 842); 
  background(255);
  smooth(8);
  fill(0);
  coolvetica = createFont("KeepCalm-Medium", 32);
  textFont(coolvetica);
  // Products name 
  name = new String[26];
  name[0]  = "         Foreword";
  name[1]  = "         Preface";

  name[2]  = "  1     Five-M Software";
  name[3]  = "  2     Using Five-M";
  name[4]  = "  3     Orders";
  name[5]  = "  4     Invoices";
  name[6]  = "  5     Inventory";
  name[7]  = "  6     Purchasing";
  name[8]  = "  7     Sales";
  name[9] =  "  8     Receivables";
  name[10] = "  9     Accounts Payable";
  name[11] = "10     General Ledger"; 

  name[12]  = " XVI";
  name[13]  = "  XV";
  name[14]  = " 1.0";
  name[15]  = " 2.0";
  name[16]  = " 3.0";
  name[17]  = " 4.0";
  name[18]  = " 5.0";
  name[19]  = " 6.0";
  name[20]  = " 7.0";
  name[21]  = " 8.0";
  name[22]  = " 9.0";
  name[23]  = "10.0";
  name[24]  = "11.0"; 

  name2 = new String[16];
  name2[0] = "11     Counter Sales";
  name2[1] = "12     Rentals";
  name2[2] = "13     Check Processing";
  name2[3] = "14     File Maintenance";
  name2[4] = "15     File Lists";
  name2[5] = "16     User Access";
  name2[6] = "17     End of Month";
  name2[7] = "18     Change Companies";

  name2[8] =  "11.0";
  name2[9] =  "12.0";
  name2[10] = "13.0";
  name2[11] = "14.0";
  name2[12] = "15.0";
  name2[13] = "16.0";
  name2[14] = "17.0";
  name2[15] = "18.0";

  name3 = new String[14];
  name3[0] = "19     Change Date";
  name3[1] = "20     Utilities";
  name3[2] = "21     Export to Excel";
  name3[3] = "22     SalesMatrix";
  name3[4] = "23     Global Financial Bridge";
  name3[5] = "24     Exit to Windows";

  name3[6] =  "19.0";
  name3[7] =  "20.0";
  name3[8] =  "21.0";
  name3[9] =  "22.0";
  name3[10] = "23.0";
  name3[11] = "24.0";
  name3[12] = "25.0";
  name3[13] = "25.0";

  //String[] fontList = PFont.list();
  //printArray(fontList);
}

void draw() {
  background(255);
  fill(0);
  // Title
  textSize(30);
  text("Contents", x, y + m, z);

  // Major Products
  textSize(13);
  text(name[0], x + c1, y + yn + (0 * m1), z);
  text(name[1], x + c1, y + yn + (1 * m1), z);
  text(name[2], x + c1, y + yn + ((2+mu) * m1), z);
  text(name[3], x + c1, y + yn + ((3+mu) * m1), z);
  text(name[4], x + c1, y + yn + ((4+mu) * m1), z);
  text(name[5], x + c1, y + yn + ((5+mu) * m1), z);
  text(name[6], x + c1, y + yn + ((6+mu) * m1), z);
  text(name[7], x + c1, y + yn + ((7+mu) * m1), z);
  text(name[8], x + c1, y + yn + ((8+mu) * m1), z);
  text(name[9], x + c1, y + yn + ((9+mu) * m1), z);
  text(name[10], x + c1, y + yn + ((10+mu) * m1), z);
  text(name[11], x + c1, y + yn + ((11+mu) * m1), z);

  fill(#424143);
  text(name[12+tt], x, y + yn + (0 * m1), z);
  text(name[13+tt], x, y + yn + (1 * m1), z);
  text(name[14+tt], x, y + yn + ((2+mu) * m1), z);
  text(name[15+tt], x, y + yn + ((3+mu) * m1), z);
  text(name[16+tt], x, y + yn + ((4+mu) * m1), z);
  text(name[17+tt], x, y + yn + ((5+mu) * m1), z);
  text(name[18+tt], x, y + yn + ((6+mu) * m1), z);
  text(name[19+tt], x, y + yn + ((7+mu) * m1), z);
  text(name[20+tt], x, y + yn + ((8+mu) * m1), z);
  text(name[21+tt], x, y + yn + ((9+mu) * m1), z);
  text(name[22+tt], x, y + yn + ((10+mu) * m1), z);
  text(name[23+tt], x, y + yn + ((11+mu) * m1), z);
  // Other Products
  fill(0);
  text(name2[0], x + c1, y + yn + (0 + yn2 * m1), z);
  text(name2[1], x + c1, y + yn + ((1 + yn2) * m1), z);
  text(name2[2], x + c1, y + yn + ((2 + yn2) * m1), z);
  text(name2[3], x + c1, y + yn + ((3 + yn2) * m1), z);
  text(name2[4], x + c1, y + yn + ((4 + yn2) * m1), z);
  text(name2[5], x + c1, y + yn + ((5 + yn2) * m1), z);
  text(name2[6], x + c1, y + yn + ((6 + yn2) * m1), z);
  text(name2[7], x + c1, y + yn + ((7 + yn2) * m1), z);

  fill(#424143);
  text(name2[8], x, y + yn + (0 + yn2 * m1), z);
  text(name2[9], x, y + yn + ((1 + yn2) * m1), z);
  text(name2[10], x, y + yn + ((2 + yn2) * m1), z);
  text(name2[11], x, y + yn + ((3 + yn2) * m1), z);
  text(name2[12], x, y + yn + ((4 + yn2) * m1), z);
  text(name2[13], x, y + yn + ((5 + yn2) * m1), z);
  text(name2[14], x, y + yn + ((6 + yn2) * m1), z);
  text(name2[15], x, y + yn + ((7 + yn2) * m1), z);

  // More extra 
  fill(0);
  text(name3[0], x + c1, y + yn + (0 + yn3 * m1), z);
  text(name3[1], x + c1, y + yn + ((1 + yn3) * m1), z);
  text(name3[2], x + c1, y + yn + ((2 + yn3) * m1), z);
  text(name3[3], x + c1, y + yn + ((3 + yn3) * m1), z);
  text(name3[4], x + c1, y + yn + ((4 + yn3) * m1), z);
  text(name3[5], x + c1, y + yn + ((5 + yn3) * m1), z);

  fill(#424143);
  text(name3[6], x, y + yn + (0 + yn3 * m1), z);
  text(name3[7], x, y + yn + ((1 + yn3) * m1), z);
  text(name3[8], x, y + yn + ((2 + yn3) * m1), z);
  text(name3[9], x, y + yn + ((3 + yn3) * m1), z);
  text(name3[10], x, y + yn + ((4 + yn3) * m1), z);
  text(name3[11], x, y + yn + ((5 + yn3) * m1), z);

  //println("Finished.");
  //exit();

  //pushMatrix(); translate(0, 0);
  //stroke(0);
  //line(width/2,0,width/2,height);
  //line(0,height/2, width, height/2);
  //popMatrix();
}