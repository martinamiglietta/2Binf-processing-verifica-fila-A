Personaggio hermione ;
Trasfigurabile piuma;


class Personaggio {
  PShape forma;
  Personaggio () {
    forma= loadShape("witch.obj");
    forma.setFill(color(#3E0E0E));
  }
  void disegna(float x, float y ) {
    shape(forma, x, y);
  }
}



class Trasfigurabile {
  PShape forma;
  Trasfigurabile() {
    forma= loadShape("quill.obj");
    forma.setFill(color(#2893BC));
  }

  void disegna(float x, float y ) {
    shape(forma, movimentox, y);
  }
}



PShape azzurra;
float movimentox, movimentoy;

void movimentoautox() {
  if (movimentox >= width*0.8) {
    movimentox = width*0.8;
  } else { 
    movimentox +=4;
  }
}






void setup() {
  fullScreen(P3D);
  hermione = new Personaggio();
  piuma = new Trasfigurabile();
}


void draw() {
  background(255, 255, 255);
  lights();
  piuma.disegna(width*0.5, height*0.1);
  hermione.disegna(width*0.5, height*0.1);
  movimentoautox();
}
