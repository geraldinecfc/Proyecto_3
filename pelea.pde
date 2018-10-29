PFont text;

void pelea()
{
  switch (jugador1)
  {
    case 1:
    pushMatrix();
    scale(0.15,0.15);
    translate(1200,1150);
    hamburguesa.display();
    
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(0.15,0.15);
    translate(1200,1150);
    hot.display();
   
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(0.15,0.15);
    translate(1200,1150);
    nugget.display();
    
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    scale(0.15,0.15);
    translate(1200,1150);
    papas.display();
   
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    scale(0.15,0.15);
    translate(1200,1150);
    pizza.display();
    
    popMatrix();
    break;
  }
  
  switch (jugador2)
  {
    case 1:
    pushMatrix();
    scale(0.15,0.15);
    translate(4000,1150);
    hamburguesa.display();
    
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(0.15,0.15);
    translate(4000,1150);
    hot.display();
    
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(0.15,0.15);
    translate(4000,1150);
    nugget.display();
   
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    scale(0.15,0.15);
    translate(4000,1150);
    papas.display();
    
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    scale(0.15,0.15);
    translate(4000,1150);
    pizza.display();
    popMatrix();
    break;
  }
  
  text=loadFont("text.vlw");
  
  textFont(text);
  fill (0);
  text (c1,393,130);
  text (c2,500,130);
  
  noFill();
  stroke(0);
  rect(220,515,60,60);
  rect(645,515,60,60);
  
}
