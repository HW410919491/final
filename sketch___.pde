PImage player;
PImage bullet;
PImage enemy;
float px =240,py=240 ;
float bulletx =-20;
float bullety =-20;
float ex=590;
float ey;



void setup() {
  size(640, 480, P2D);
 player = loadImage("img/player.png");
 bullet = loadImage("img/bullet.png");
 enemy = loadImage("img/player.png");
 ey=floor(random(0,430));
 
 
 //floor(random(0,430))
}


void draw() {
  background(255);  
fill(255,0,0);
image( player, px, py,80,80);
image(bullet,bulletx,bullety,20,20); 
 
image(enemy,ex,ey,50,50); 
ex-=5;
if(ex==-50){
  ex=640;
  ey=floor(random(0,430));
  
}

}

void  keyPressed() {
 if (keyPressed) {
    if (key == 'w'||key == 'W') {
      py-=5;
      }
    if (key == 's'||key == 'S') {
        py+=5;
    }
    if (key == 'a'||key == 'A' ){
        px-=5;
    }
    if (key == 'd'||key == 'D') {
        px+=5;
    }
   }
  image( player, px, py,80,80);
  
  
  
  
  
}



void mouseReleased(){
  bulletx = px;
  bullety =py;
  image(bullet,bulletx,bullety,20,20); 
   for(int i =0;i<=200;i++){
            bulletx++;
   }
   //在這裡搞碰撞看看
   image(bullet,bulletx,bullety,20,20); 
   
   bulletx =-20;
   bullety =-20;
}

void  keyReleased(){
 
image( player, px, py,80,80);

}
