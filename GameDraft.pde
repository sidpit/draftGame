Player player;

void setup(){
  size(640,480);
  PVector playerPosition = new PVector(width/2,height/2);
  player = new Player(playerPosition);
}

void draw(){
  background(50);
  pushStyle();
  player.draw();
  player.update();
  popStyle();
}
