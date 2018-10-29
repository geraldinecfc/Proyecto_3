class concursantes
{
  PImage uno,dos;
  int x,y;
  concursantes(int x_, int y_)
  {
    x = x_;
    y = y_; 
  }
  
  void displayUno()
  {
  uno= loadImage("p1.png");
  image (uno,x,y);
  }
  
  void displayDos()
  {
  dos= loadImage("p2.png");
  image (dos,x,y);
  }
}

class pantallas
{
  int x,y,pan;
  PImage p1,p2,p3,p4,p5,p6;
  
  pantallas(int x_, int y_, int pan_)
  {
    x = x_;
    y = y_;
    pan = pan_;
  }
  
  void display()
  {
    switch (pan)
    {
      case 1:
      p1 = loadImage("pantalla1.jpg");
      image (p1,x,y,width,height);
      break;
      
      case 2:
      p2 = loadImage("pantalla2.jpg");
      image (p2,x,y,width,height);
      break;
      
      case 3:
      p3 = loadImage("pantalla3.jpg");
      image (p3,x,y,width,height);
      break;
      
      case 4:
      p4 = loadImage("pantalla4.jpg");
      image (p4,x,y,width,height);
      break;
      
      case 5:
      p5 = loadImage("pantalla5a.jpg");
      image (p5,x,y,width,height);
      break;
      
      case 6:
      p6 = loadImage("pantalla5b.jpg");
      image (p6,x,y,width,height);
      break;
    }
  }
}

class comida
{
  int x,y,c;
  PImage hamburguesa,hot,nugget,papas,pizza;
  
  comida(int x_, int y_, int c_)
  {
    x = x_;
    y = y_;
    c = c_;
  }
  
  void display()
  {
    switch (c)
    {
      case 1:
      hamburguesa = loadImage("hamburguesa.png");
      image (hamburguesa,x,y,width,height);
      break;
      
      case 2:
      hot = loadImage("hot.png");
      image (hot,x,y,width,height);
      break;
      
      case 3:
      nugget = loadImage("nugget.png");
      image (nugget,x,y,width,height);
      break;
      
      case 4:
      papas = loadImage("papas.png");
      image (papas,x,y,width,height);
      break;
      
      case 5:
      pizza = loadImage("pizza.png");
      image (pizza,x,y,width,height);
      break;
    }
  }
}
