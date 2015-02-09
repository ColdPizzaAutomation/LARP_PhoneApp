//MMART 168 Online Interactivity and Games 
//Mason Thompson
//Project start on 2/5/2015
//Project name: LARP Sorcery: 'SMITE your adversaries' 
//Summon random lightning bolts to target on front camera
//Used photoshop to manipulate background (blur and text);
//Note to Self and to Justin: I wanted flashing text, because how cool is that? Getting flashing text to 
//work was difficult - plenty of EOF expected errors, but this was solved after putting 
//certain code in respective places (void setup, void draw, etc). Did a vocal 'YES' with a fistpump. 


// Not all entirely my Code - wanted a flashing text icon for battery
// taken from https://processing.org/tutorials/text/
String[] headlines = {
  "  ", //to display empty space, gives semiregular on/off
  "74%",
  };

PFont f;  // Global font variable
float x;  // horizontal location of headline
int index = 0;
PImage photo;// End not my Code
float y = 37; //used for front facing camera, boring I know


//My Code
void setup() {
  size(995, 1000);
  photo = loadImage("light1.jpg");
//image taken from reddit via google search, direct link: http://i.imgur.com/GcZnMtK.jpg

// Not my Code
f = createFont("Impact",10,true);  
  x = width; 
}// End not my Code

//My Code
void draw() {
  image(photo, -30, -150);
print("Name: Mason Thompson, App: LARP Sorcery: LIGHTNING BOLT, MMART 168 - Online Games and Interactivity");
print("Dish out some Nordic justice, the like Thor's seen, to your iPhone's camera target.");
print("Lightning may appear on or around your camera's target.");
print("HARK my old nemesis - TREE! By Odin's will it shall be rend asunder!");
print("in-app purchase: MAGIC MISSILE coming soon!");


// Not my Code
  textFont(f,10); 
  fill(255);  
  textAlign(LEFT);
  text(headlines[index],516,89); 
   x = x - 3;
  float w = textWidth(headlines[index]);
  if (x < -w) {
    x = width; 
    index = (index + 1) % headlines.length;
  }// End not my Code


//My Code  
//Top half frame of phone
beginShape(); 
strokeWeight(2);
strokeJoin(ROUND); //not working 
int topHalf = 0;
fill(topHalf);
vertex(160,15); 
vertex(160,415);
vertex(175, 415);
vertex(175,76);
vertex(561, 76);
vertex(561, 415);
vertex(576, 415);
vertex(576,15);
vertex(537, 15);
vertex(537, 11);
strokeWeight(1);
vertex(480,11);
vertex(480,15);
vertex(160,15);
endShape();

//Bottom half frame of phone
beginShape(); 
int bottomHalf = 0;
fill(bottomHalf);
vertex(160, 415);
vertex(160, 816);
vertex(576, 816);
vertex(576, 415);
vertex(561,415);
vertex(561,740);
vertex(175,740);
vertex(175,415);
endShape();

//Phone Status bar
int statusBar; 
fill(255,0,0,150);
int signal = 255;
fill(signal);
ellipse(183,85, 6, 6);
fill(signal);
ellipse(191,85, 6, 6);
fill(signal);
ellipse(199,85, 6, 6);
fill(signal - 255);
ellipse(207,85, 6, 6);
fill(signal - 255);
ellipse(215,85, 6, 6);

//pulldown menu
//int pdm = 200;
fill(#CACECB, 75);
strokeWeight(1);
strokeJoin(ROUND); // would like to display rounded shapes, but it's not working. Went so far to delete my rectangle, and put in verticies
beginShape();
vertex(335,80);
vertex(385,80);
vertex(385,87);
vertex(335,87);
vertex(335,80);
endShape();

//battery
int bat = #02F745; 
fill(#02F745, 60);
rect(510, 80, 27, 10);
rect(537,83,5,5);

//Bezel for Icons (top)
//int  bezelTop = 100;
fill(0,0,0,40);
rect(175, 92, 385, 40);

//3_by_Threes
line(283, 133, 283, 739);
line(450, 133, 450, 739);
line(176, 300, 560, 300);
line(176, 525, 560, 525);

//Other phone stuff
//silent
int rect = 130;
fill(rect);
rect(155,150, 5, 20);
//volume up
fill(rect);
rect(156,200,4, 10);
//volume down
fill(rect);
rect(156,240, 4, 10);
//sleep
fill(rect);
rect(480,10, 56, 5);

//earpiece
int earpiece = 45;
fill(earpiece);
beginShape();
rect(330,50,60,10);
endShape();

//front camera
ellipse(360,y,10,10); //used third example of float here

//Top In-app Buttons
fill(242,55,47,160);
ellipse(500,115,20,20);
fill(174,221,60,160);
ellipse(505,105,20,20); //green
fill(116,193,206,160);
ellipse(510,115,20,20); //

//Sorcery OFF Button
strokeWeight(3);
stroke(#F2FF43, 150);
line(250, 100, 240, 110);
stroke(#F2FF43, 50);
line(240, 110, 250, 110);
stroke(#F2FF43, 80);
line(250, 110, 240, 120);
strokeWeight(2);
stroke(255,0,0,170);
line(250, 120, 255, 125);
line(250, 125, 255, 120); 

//Sorcery ON Button
strokeWeight(2);   // bolt
stroke(#F2FF43);
line(365, 97, 355, 112); // bolt 
strokeWeight(2); // bolt 
stroke(#F2FF43);
line(355,112,365, 107); //bolt
strokeWeight(3); //bolt
stroke(#F2FF43);
line(365,107, 355,122); //bolt 
strokeWeight(1.5);

//Impact 
stroke(255);
line(355,125, 355, 130);
line(353, 130, 350, 127);
line(357,130, 359, 127);

//Bottom In-app Buttons
//bottom left (picture history)
int history = 60;
beginShape();
fill(history);
rect(225,680,25,25);
fill(history + 51);
rect(230,685, 25,25);
fill(history + 102);
rect(235, 690, 25, 25);
endShape();

//Capture button
  int Capture = 200;
    beginShape();
    fill(Capture);
    ellipse(360,680, 70,70);
    fill(Capture -120);
    ellipse(360,680,60,60);
    endShape();
  
//Home Button
int Home = 23;
fill(Home);
ellipse(360, 775, 50, 50);

//Contact list
strokeWeight(2);
line(475,690, 525, 690);
strokeWeight(2);
line(475,700, 525,700);
strokeWeight(2);
line(475,710,525,710);

}

