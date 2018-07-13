class Player {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Player(PVector p){
    this.position = p;
    this.velocity = new PVector(0,0);
    this.acceleration = new PVector(0,0);
  }
  
  void update(){
    if(key == CODED)
    {
      if (keyPressed && keyCode == LEFT)
      {   
        this.position.x -= 1;
      }
      
      if (keyPressed && keyCode == RIGHT)
      {  
        this.position.x += 1;
      }
      
      if (keyPressed && keyCode == UP)
      {    
        this.position.y -= 1;
      }
      
      if (keyPressed && keyCode == DOWN)
      {   
        this.position.y += 1;
      }
    }
  }
  
  void draw(){
    rectMode(CENTER);
    rect(position.x,position.y,64,64);
  }
}
