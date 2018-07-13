class Player {
  
  PVector position;
  
  Player(PVector p){
    this.position = p;
  }
  
  void update(){
  }
  
  void draw(){
    rectMode(CENTER);
    rect(position.x,position.y,64,64);
  }
}
