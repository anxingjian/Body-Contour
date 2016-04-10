PFont font;
PImage[] imageArray = new PImage[9];
PImage[] imageArray2 = new PImage[9];

void setup() {
  fullScreen();
  background(0);
  font = createFont("font/DisplayOTF.otf", 100);

  //group1 image array
  for (int i=1; i<imageArray.length; i++) {
    imageArray[i] = loadImage(i + ".jpg");
  }

  //group2 image array
  for (int n=1; n<imageArray2.length; n++) {
    imageArray2[n] = loadImage(n + 9 + ".jpg");
  }
}

void draw() {
  //results();
}

void mousePressed() {   //use milli instead
  for (int i=1; i<imageArray.length; i++) {
    image(imageArray[i], 0, 0, width/2, height);
  }
  for (int n=1; n<imageArray2.length; n++) {
    image(imageArray2[n], width/2, 0, width/2, height);
  }
}

//void results() {
PImage photo1=loadImage("1.jpg");
PImage photo2=loadImage("2.jpg");
PImage photo3=loadImage("3.jpg");
PImage photo4=loadImage("4.jpg");
PImage photo5=loadImage("5.jpg");
PImage photo6=loadImage("6.jpg");
PImage photo7=loadImage("7.jpg");
PImage photo8=loadImage("8.jpg");
PImage photo9=loadImage("9.jpg");
PImage photo10=loadImage("10.jpg");
PImage photo11=loadImage("11.jpg");
PImage photo12=loadImage("12.jpg");
PImage photo13=loadImage("13.jpg");
PImage photo14=loadImage("14.jpg");
PImage photo15=loadImage("15.jpg");
PImage photo16=loadImage("16.jpg");
PImage photo17=loadImage("17.jpg");
PImage photo18=loadImage("18.jpg");

//Loser
image(photo10, width/2, 0, width/6, height/3);
image(photo11, width*2/3, 0, width/6, height/3);
image(photo12, width*5/6, 0, width/6, height/3);

image(photo13, width/2, height/3, width/6, height/3);
image(photo14, width*2/3, height/3, width/6, height/3);
image(photo15, width*5/6, height/3, width/6, height/3);

image(photo16, width/2, height*2/3, width/6, height/3);
image(photo17, width*2/3, height*2/3, width/6, height/3);
image(photo18, width*5/6, height*2/3, width/6, height/3);

filter(GRAY);
textFont(font);
fill(255);

String l = "LOSER : (";
float lw = textWidth(l);
text(l, width*3/4-lw/2, height/2+10);



//Winner
image(photo1, 0, 0, width/6, height/3);
image(photo2, width/6, 0, width/6, height/3);
image(photo3, width/3, 0, width/6, height/3);

image(photo4, 0, height/3, width/6, height/3);
image(photo5, width/6, height/3, width/6, height/3);
image(photo6, width/3, height/3, width/6, height/3);

image(photo7, 0, height*2/3, width/6, height/3);
image(photo8, width/6, height*2/3, width/6, height/3);
image(photo9, width/3, height*2/3, width/6, height/3);

textFont(font);
fill(255, 105, 105);

String w = "WINNER !";
float ww = textWidth(w);
text(w, width/4-ww/2, height/2+10);
}