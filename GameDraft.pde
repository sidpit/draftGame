Player player;
int Px = (int)width/2;
int Py = (int)height/2;
PVector playerPosition = new PVector(Px,Py);

void setup(){
  size(320,200);
  player = new Player(playerPosition);
}

void update(){
}

void draw(){
  player.draw();
}
