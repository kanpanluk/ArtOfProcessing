 PImage img; 

PFont f;
PImage pic ;
PImage prop; 
float e;
String s[];
int t[] = new int[18] ; 
int year = 0 ; 

float size_of_pic_x ;
float size_of_pic_y ; 

float origin_pic_x ;
float origin_pic_y ;

boolean mode ;

String fa ="0" ; 

String[] graduate59;
String[] graduate58;
String[] graduate57;
String[] graduate56;
String[] graduate55;

String [] stay59;
String [] stay58;
String [] stay57;
String [] stay56;
String [] stay55;

Circle cir[] = new Circle [16];
Line underLine[] = new Line [20];

Point point59[] = new Point [18] ; 
Point point58[] = new Point [18] ; 
Point point57[] = new Point [18] ; 
Point point56[] = new Point [18] ; 
Point point55[] = new Point [18] ; 

int time =0 ; 
int sa=0 ;
int ga=0 ; 
void setup(){
  fullScreen();
  //size(1000, 500);
  f=createFont("Tahoma",30,true);
  s = loadStrings("text.txt");
  newT();
  loadText();
  //saveStrings("split.txt",data);
  
  pic = loadImage("2.gif");
  newCir();
  newLine();
  
  size_of_pic_x = width ;
  size_of_pic_y = height;
  
  origin_pic_x = 0 ;
  origin_pic_y = 0 ;
  mode =true ;
  
  newPoint();
  smooth();
  frameRate(120);
}

void draw(){
  
    background(252,248,243);
    textFont(f);
    imageMode(CORNER);
    image(pic,origin_pic_x, origin_pic_y,size_of_pic_x,size_of_pic_y);
    
    //fill(0);
    //textFont(f);
    //text(data[i]+"\n",0,height/2);
    //i++;
    //if(i==data.length)i=0;
    rectMode(CORNER);
    stroke(0); 
    strokeWeight(3);
    fill(255);
    rect(width/39.02857142857143,height/25.6,width/24.83636363636364,height/38.4);
    rect(width/1.0928,height/1.08169014084507,width/13.66,height/15.36);
    
    fill(0);
    textSize(16);
    textAlign(LEFT);
    text("25"+(year+55),width/30.35555555555556,height/16.69565217391304);
    
    
    textSize(16);
    textAlign(LEFT);
    text("SELECT YEAR",width/91.06666666666667,height/30.72);
    text("BACK TO \nDEFAULT",width/1.077287066246057,height/1.054945054945055);
    
    if(mode){
       showLine();
       popUp();
       
    }
    popPop();
    popImg();
   
    //println(width,height,origin_pic_x,origin_pic_y);
    
    //if(mouseY==0)text(mouseX +" "+ mouseY ,mouseX+20,mouseY+20 );
    //if(mouseX>=displayWidth-100)text(mouseX +" "+ mouseY ,mouseX-100,mouseY);
    //else text(mouseX +" "+ mouseY ,mouseX,mouseY);
    size_of_pic_x=constrain(size_of_pic_x,width,pic.width);
    size_of_pic_y=constrain(size_of_pic_y,height,pic.height);
    //origin_pic_x=constrain(origin_pic_x,-width,0);
    //origin_pic_y=constrain(origin_pic_y,-height,0);
    fill(100,100);
    //ellipse(width/2,2*height/3,50,50);
    time++;
    if(time > 3) time=0;
    if(fa=="0"){
      n=1;
      sa=ga=0;
      for(int i=0;i<s.length;i++) t[i]=s[i].length();
    }
}


void newLine (){
  underLine[0] = new Line (width/3.34,height/5.8,width/2.33);
  underLine[1] = new Line (width/3.34,height/5.2,width/2.42);
 
  underLine[2] = new Line (width/2.23776224,height/8.0357142857,width/1.82857142857);
  underLine[3] = new Line (width/2.237762237762238,height/6.923076923076923,width/1.702127659574468);
  underLine[4] = new Line (width/2.237762237762238,height/5.806451612903226,width/1.767955801104972);
  underLine[5] = new Line (width/2.237762237762238,height/5.142857142857143,width/1.739130434782609);
  underLine[6] = new Line (width/2.237762237762238,height/4.736842105263158,width/1.758241758241758);
  underLine[7] = new Line (width/2.237762237762238,height/4.186046511627907,width/1.828571428571429);

  underLine[8] = new Line (width/1.6359281,height/9.035294,width/1.4303664);
  underLine[9] = new Line (width/1.6300715,height/3.339130,width/1.393877551);
  underLine[10] = new Line (width/1.6359281,height/3.072,width/1.393877551020408);
  underLine[11] = new Line (width/1.6359281,height/2.67595,width/1.418483904);
  underLine[12] = new Line (width/1.6359281,height/2.5098039,width/1.304680038204394);
  underLine[13] = new Line (width/1.6359281,height/2.3630769,width/1.415544041450777);
 
  underLine[14] = new Line (width/1.253211009174312,height/8.08421052,width/1.115102040816327);
  underLine[15] = new Line (width/1.253211009174312,height/2.92015209,width/1.124279835390947);
  underLine[16] = new Line (width/1.253211009174312,height/2.742857142857143,width/1.12892561);
  underLine[17] = new Line (width/1.253211009174312,height/2.415094339622642,width/1.127062706270627);
  underLine[18] = new Line (width/1.253211009174312,height/1.873170731707317,width/1.019402985074627);
  underLine[19] = new Line (width/1.253211009174312,height/1.786046511627907,width/1.119672131147541);
  
}
void showLine(){
  for(int i=0;i<underLine.length;i++){
    underLine[i].lineUp(100);
  }
}
void popUp(){
 //01
  if(block(width/3.36842105,height/6.67,width/2.40601504,height/5.14285714)){
    underLine[0].lineUp(0);
    underLine[1].lineUp(0);
    cir[0].blink();
 }
 //2
 if(block(width/2.23776223776,height/9.47368421053,width/1.82857142857,height/8.18181818182)){
   underLine[2].lineUp(0);
   cir[1].blink();
 }
 //3
 if(block(width/2.237762237762238,height/7.826086956521739,width/1.702127659574468,height/6.923076923076923)){
    underLine[3].lineUp(0);
    cir[1].blink();
    
 }
 //4
 if(block(width/2.237762237762238,height/6.428571428571429,width/1.767955801104972,height/5.806451612903226)){
    underLine[4].lineUp(0);
    cir[2].blink();
 }
 //56
 if(block(width/2.237762237762238,height/5.625,width/1.758241758241758,height/4.736842105263158)){
    underLine[5].lineUp(0);
    underLine[6].lineUp(0);
    cir[2].blink();
 }
 //7
 if(block(width/2.237762237762238,height/4.5,width/1.828571428571429,height/4.186046511627907)){
    underLine[7].lineUp(0); 
    cir[3].blink();
 }
 //not done yet 
 //8
 if(block(underLine[8].x1,height/10.97142857142857,underLine[8].x2,underLine[8].y)){
    underLine[8].lineUp(0);
    cir[4].blink();
 }
 //9
 if(block(underLine[9].x1,height/3.572093023255814,underLine[9].x2,underLine[9].y)){
    underLine[9].lineUp(0);    
    cir[5].blink();
 }
 //10
 if(block(underLine[10].x1,height/3.268085106382979,underLine[10].x2,underLine[10].y)){
    underLine[10].lineUp(0);    
    cir[6].blink();
 }
 //11
 if(block(underLine[11].x1,height/2.792727272727273,underLine[11].x2,underLine[11].y)){
    underLine[11].lineUp(0);  
    cir[7].blink();
 }
 //12
 if(block(underLine[12].x1,height/2.648275862068966,underLine[12].x2,underLine[12].y)){
    underLine[12].lineUp(0); 
    cir[8].blink();
 }
 //13
 if(block(underLine[13].x1,height/2.47741935483871,underLine[13].x2,underLine[13].y)){
    underLine[13].lineUp(0); 
    cir[9].blink();
 }
 //14
 if(block(underLine[14].x1,height/9.6,underLine[14].x2,underLine[14].y)){
    underLine[14].lineUp(0); 
    cir[10].blink();
 }
 //15
 if(block(underLine[15].x1,height/3.072,underLine[15].x2,underLine[15].y)){
    underLine[15].lineUp(0); 
    cir[11].blink();
 }
 //16
 if(block(underLine[16].x1,height/2.89811320754717,underLine[16].x2,underLine[16].y)){
    underLine[16].lineUp(0);
    cir[12].blink();
 }
 //17
 if(block(underLine[17].x1,height/2.56,underLine[17].x2,underLine[17].y)){
    underLine[17].lineUp(0);    
    cir[13].blink();
 }
 //18
 if(block(underLine[18].x1,height/1.944303797468354,underLine[18].x2,underLine[18].y)){
    underLine[18].lineUp(0); 
    cir[14].blink();
 }
 //19
  if(block(underLine[19].x1,height/1.850602409638554,underLine[19].x2,underLine[19].y)){
    underLine[19].lineUp(0);   
    cir[15].blink();
 }
}

boolean block(double x1,double y1,double x2,double y2){
  //noStroke();
  //fill(255);
  //rect((float)x1,(float)y1,(float)(x2-x1),(float)(y2-y1));
  return x1<=mouseX && mouseX<=x2 && y1<=mouseY && mouseY<=y2 ;
}

void newCir (){
  //6
  cir[0] = new Circle (width/4.041420118343195,height/2.792727272727273);
  //10
  cir[1] = new Circle (width/6.4739336492891,height/2.792727272727273);
  //11
  cir[2] = new Circle (width/7.805714285714286,height/2.742857142857143);
  //12
  cir[3] = new Circle (width/8.130952380952381,height/2.327272727272727);
  //19
  cir[4] = new Circle (width/4.309148264984227,height/2.585858585858586);
  //25
  cir[5] = new Circle (width/8.986842105263158,height/1.769585253456221);
  //26
  cir[6] = new Circle (width/5.691666666666667,height/1.391304347826087);
  //28
  cir[7] = new Circle (width/3.78393351800554,height/1.342657342657343);
  //29
  cir[8] = new Circle (width/3.415,height/1.396363636363636);
  //30
  cir[9] = new Circle (width/3.05592841163311,height/1.234726688102894);
  //33
  cir[10] = new Circle (width/2.804928131416838,height/1.310580204778157);
  //42
  cir[11] = new Circle (width/1.878954607977992,height/1.11304347826087);
  //43
  cir[12] = new Circle (width/1.769430051813472,height/1.097142857142857);
  //45
  cir[13] = new Circle (width/1.427377220480669,height/1.105035971223022);
  //48
  cir[14] = new Circle (width/1.340529931305201,height/1.08936170212766);
  //49
  cir[15] = new Circle (width/1.299714557564225,height/1.074125874125874);
  
}

void popImg(){
  
  if(!mode) {
    noStroke();
    fill(100,150);
    triangle(2*width/3, 2.5*height/4,2*width/3-width/25,height/4,2*width/3+width/25,height/4);
    rectMode(CENTER);
    strokeWeight(10);
    stroke(150,150);
    rect(2*width/3, 1.5*height/6,width/3+3,height/3+3);
  }
  imageMode(CENTER);
  switch(fa){
    case "6" : 
      prop=loadImage("6.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(0);
      break;
    case "10" : 
      prop=loadImage("10.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(1);
      break;
    case "10.1" : 
      prop=loadImage("10.1.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(2);
      break;
    case "11" : 
      prop=loadImage("11.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(3);
      break;
    case "11.1" : 
      prop=loadImage("11.1.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(4);
      break;
    case "12" : 
      prop=loadImage("12.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(5);
      break;
    case "19" : 
      prop=loadImage("19.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(6);
      break;
    case "25" : 
      prop=loadImage("25.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(7);
      break;
    case "26" : 
      prop=loadImage("26.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(8);
      break;
    case "28" : 
      prop=loadImage("28.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(9);
      break;
    case "29" : 
      prop=loadImage("29.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(10);
      break;
    case "30" : 
      prop=loadImage("30.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(11);
      break;
    case "33" : 
      prop=loadImage("33.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(12);
      break;
    case "42" : 
      prop=loadImage("42.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(13);
      break;
    case "43" : 
      prop=loadImage("43.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(14);
      break;
    case "45" : 
      prop=loadImage("45.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(15);
      break;
    case "48" : 
      prop=loadImage("48.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(16);
      break;
    case "49" : 
      prop=loadImage("49.jpg");
      image(prop,2*width/3, 1.5*height/6,width/3,height/3);
      printText(17);
      break;
    
  }
  
  
}

void newPoint(){
  
  for(int i=0;i<graduate59.length;i++){
    String grade[] = splitTokens(graduate59[i],"\t");
    String stay[]= splitTokens(stay59[i],"\t");
    point59[i] = new Point(Integer.parseInt(grade[2]),Integer.parseInt(stay[2]),grade[0]);
  }
  
  for(int i=0;i<graduate58.length;i++){
    String grade[] = splitTokens(graduate58[i],"\t");
    String stay[]= splitTokens(stay58[i],"\t");
    point58[i] = new Point(Integer.parseInt(grade[2]),Integer.parseInt(stay[2]),grade[0]);
  }
  
  for(int i=0;i<graduate57.length;i++){
    String grade[] = splitTokens(graduate57[i],"\t");
    String stay[]= splitTokens(stay57[i],"\t");
    point57[i] = new Point(Integer.parseInt(grade[2]),Integer.parseInt(stay[2]),grade[0]);
  }
  
  for(int i=0;i<graduate56.length;i++){
    String grade[] = splitTokens(graduate56[i],"\t");
    String stay[]= splitTokens(stay56[i],"\t");
    point56[i] = new Point(Integer.parseInt(grade[2]),Integer.parseInt(stay[2]),grade[0]);
  }
  
  for(int i=0;i<graduate59.length;i++){
    String grade[] = splitTokens(graduate55[i],"\t");
    String stay[]= splitTokens(stay55[i],"\t");
    point55[i] = new Point(Integer.parseInt(grade[2]),Integer.parseInt(stay[2]),grade[0]);
    
  }
}

void loadText(){
  graduate59 = loadStrings("graduate59.txt");
  stay59 = loadStrings("stay59.txt");
  
  graduate58 = loadStrings("graduate58.txt");
  stay58 = loadStrings("stay58.txt");
  
  graduate57 = loadStrings("graduate57.txt");
  stay57 = loadStrings("stay57.txt");
  
  graduate56 = loadStrings("graduate56.txt");
  stay56 = loadStrings("stay56.txt");
  
  graduate55 = loadStrings("graduate55.txt");
  stay55 = loadStrings("stay55.txt");
  
  
}

void newT(){
  for(int i=0;i<s.length;i++){
    t[i]=s[i].length();
  }
}