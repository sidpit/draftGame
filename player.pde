class Player {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  int taille = 64;
  
  Player(PVector p){
    this.position = p;
    this.velocity = new PVector(0,0);
    this.acceleration = new PVector(0.5f,0.5f);

  }
  
  void update(){
    // Movement
    if(keyPressed) //<>//
    { //<>// //<>//
      if (keyCode == LEFT)
      {   
        velocity.x += acceleration.x;
        this.position.x -= velocity.x;
      }
      else if (keyCode == RIGHT)
      { 
        velocity.x += acceleration.x;
        this.position.x += velocity.x;
      }
      else if (keyCode == UP)
      { 
        velocity.y += acceleration.y;
        this.position.y -= velocity.y;
      }
      else if (keyCode == DOWN)
      {   
        velocity.y += acceleration.y;
        this.position.y += velocity.y;
      }
      else
      {
        velocity = new PVector(0,0);
        acceleration = new PVector(0.5f,0.5f);
      }
    }
    else
    {
      velocity = new PVector(0,0);
      acceleration = new PVector(0.5f,0.5f);
    }
    
    // Collisions
    if(position.x > width-taille/2)
    {
      velocity = new PVector(0,0);
      position.x = width-taille/2;
    }
    
    if(position.x - taille/2 < 0)
    {
      velocity = new PVector(0,0);
      position.x = taille/2;
    }
    
    if(position.y > height-taille/2)
    {
      velocity = new PVector(0,0);
      position.y = height-taille/2;
    }
    
    if(position.y - taille/2 < 0)
    {
      velocity = new PVector(0,0);
      position.y = taille/2;
    }
    
  }
  
  void draw(){
    rectMode(CENTER);
    rect(position.x,position.y,taille,taille);
  }
}
