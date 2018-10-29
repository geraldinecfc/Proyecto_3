int i = int (random(5.2));
int j = int (random(5.2));
int k = int (random(2.2));

concursantes p1,p2;
pantallas a,b,c,d,e,f;
comida hamburguesa,hot,nugget,papas,pizza;
int pantalla=1,jugador1,jugador2,c1=0,c2=0,t=1,o=0;

void setup()
{
  size (900,600);
  
  p1 = new concursantes (10,10);
  p2 = new concursantes (10,10);
  
  a = new pantallas (0,0,1);
  b = new pantallas (0,0,2);
  c = new pantallas (0,0,3); 
  d = new pantallas (0,0,4);
  e = new pantallas (0,0,5);
  f = new pantallas (0,0,6);
  
  hamburguesa = new comida (5,5,1);
  hot = new comida (5,5,2);
  nugget = new comida (5,5,3);
  papas = new comida (5,5,4);
  pizza = new comida (5,5,5);
  
}

void draw()
{
  keyPressed();
  
  if (pantalla==1)
  {
    a.display();
    println ("pantalla1");
  }
  
  if (pantalla==2)
  {
    b.display();
    println ("pantalla2");
    if (mousePressed && (mouseX>420) && (mouseX<=420+80) && (mouseY>500) && (mouseY<=500+60))
    {
      pantalla=3;
    }
    /*noFill();
    stroke(255);
    rect(420,500,80,60);
    println ("pantalla2");*/
  }
  
  if (pantalla==3)
  {
    c.display();
    println("pantalla 3");
     if (jugador1!=0 && jugador2!=0)
    {
      pantalla=4;
    }
  }
  
  if (pantalla==4)
  {
    d.display();
    pelea();
    println("pantalla 4");
    if (c1>=10 || c2>=10)
    {
      pantalla=5;
    }
  }
  
  if (pantalla==5)
  {
    println("Decidir quién ganó");
    if (c1>c2)
    {
      e.display();
    }
    else if (c2>c1)
    {
      f.display();
    }
  }


}


void keyPressed()
{
  if (pantalla==1 && key=='z')
  {
    pantalla=2;
  }
  
  if (pantalla==3)
  {
    switch (key)
    {
      case 'a':
      jugador1=1;
      break;
      case 'b':
      jugador1=2;
      break;
      case 'c':
      jugador1=3;
      break;
      case 'd':
      jugador1=4;
      break;
      case 'e':
      jugador1=5;
      break;
      
      case 'f':
      jugador2=1;
      break;
      case 'g':
      jugador2=2;
      break;
      case 'h':
      jugador2=3;
      break;
      case 'i':
      jugador2=4;
      break;
      case 'j':
      jugador2=5;
      break;
    }
  }
  
  if (pantalla==5)
  {
    switch (key)
    {
      case '2':
      pantalla=1;
      t=1;
      o=0;
      c1=0;
      c2=0;
      break;
      
      case '9':
      exit();
      break;
    }
  }
  
  if (pantalla==4 && t==1 && key=='a')
  {
    c1=c1+i;
    t=2;
    println ("Comió jugador 1");
  }
  
  if (pantalla==4 && t==2 && key=='ñ')
  {
    c2=c2+j;
    t=1;
    println ("Comió jugador 2");
  }
  
  //rect(220,515,60,60);
  if (mousePressed && (mouseX>220) && (mouseX<=220+60) && (mouseY>515) && (mouseY<=515+60) && pantalla==4 && t==1 && o<=3)
  {
    c2=c2-k;
    t=2;
    o=o+1;
    println ("ROBA JUGADOR 1");
  }
  
  //rect(645,515,60,60);
  if (mousePressed && (mouseX>645) && (mouseX<=645+60) && (mouseY>515) && (mouseY<=515+60) && pantalla==4 && t==2 && o<=3)
  {
    c1=c1-k;
    t=1;
    o=o+1;
    println ("ROBA JUGADOR 2");
  }
}
