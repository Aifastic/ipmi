//Diapositivas
int screen0 = -1;
//Imágenes
PImage image01;
PImage image02;
PImage image03;
PImage image04;
PImage image05;
PImage image06;
PImage image07;
PImage image08;
PImage image09;
PImage image10;
//Fuentes
PFont titleFont;
PFont bodyFont;
//Otras variables
float tamFont = 1;
float tamRectX = 0;
float tamRectY = 0;
float posX = 10;
float posY = 50;
int alphaText = 0;
int alphaRect = 0;
float dirX = 1;
float dirY = 1;
boolean pressed = false;

void setup() {
  size(640, 480);
  background(200);
  image01=loadImage("tiger and bunny.png");
  image02=loadImage("tiger on tv.png");
  image03=loadImage("Hurt 01.png");
  image04=loadImage("Dead Parents 01.png");
  image05=loadImage("Heroes.png");
  image06=loadImage("Lunatic 01.png");
  image07=loadImage("Jake 04.png");
  image08=loadImage("Dead Parents 03.png");
  image09=loadImage("bunny saves kaede.png");
  image10=loadImage("End02bis.png");

  titleFont = loadFont("StonyIslandNF-48.vlw");
  bodyFont = loadFont("Rubik-Regular-48.vlw");
}

void draw() {
  background(200);
  if (screen0 == -1) { //Inicio
    image(image10, 0, 0, 640, 480);
    fill(250, 190);
    noStroke();
    rect(170, 80, 320, 90);

    fill(0);
    textFont(titleFont);
    textSize(70);
    text("Tiger & Bunny", 180, 150);

    stroke(255, 0, 0);
    strokeWeight(2);
    if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40) {
      fill(200);
      if (pressed==true) {
        fill(150);
      }
    } else {
      fill(240);
    }
    rect(450, 390, 150, 40);
    if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40 && pressed == true) {
      fill(0);
      textFont(titleFont);
      textSize(20);
      text("Iniciar", 510, 420);
    } else if (screen0 == -1) {
      fill(0);
      noStroke();
      textFont(titleFont);
      textSize(25);
      text("Iniciar", 505, 420);
    }
  }
  if (screen0 >= 0 && screen0 < 5001) { //Tempo y reset del noStroke()
    screen0 = screen0 + 1;
    noStroke();
  }
  if (screen0 >=0 && screen0 <= 500) { //Diapositiva 01
    if (screen0 == 0) {
      alphaRect = 0;
      alphaText = 0;
      tamFont = 1;
      posX = 10;
      posY = 50;
      dirX = 1;
      dirY = 1;
    }
    image(image01, 0, 0, 640, 480);
    fill(255, alphaRect);
    noStroke();
    rect(posX-10, posY-10, 395, 45);
    fill(0);

    textFont(titleFont);
    textSize(40);
    text("Tiger and Bunny, over and out", posX, posY, 500, 100);
    posX = posX + dirX;
    posY = posY + dirY;

    if (posX + 500/2 <= 500) {
      dirX = 1.5;
    } else {
      dirX = 0;
    }

    if (posY >= 50) {
      dirY = -1.5;
    }
    if (posY <= 10) {
      dirY = 1.5;
    }
    if (dirX == 0) {
      dirY = 0;
    }
    if (screen0 >=170 && screen0 <= 500) {
      fill(255, alphaRect);
      noStroke();
      rect(240, 80, 396, 200);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
      fill(0, alphaText);

      textFont(bodyFont);
      textSize(25);
      text("Tiger & Bunny es una serie de superhéroes ambientada en el futuro en la ciudad ficticia de Sternbild. Sus protagonistas son Wild Tiger y Barnaby Brooks Jr. (''Bunny'').", 250, 100, 396, 400);
      alphaText = alphaText + 5;
      if (alphaText >= 255) {
        alphaText = 255;
      }
    }
  } else if (screen0 > 500 && screen0 <= 1000) { //Diapositiva 02
    if (screen0 == 501) {
      alphaRect = 0;
      alphaText = 0;
    }
    image(image02, 0, 0, 640, 480);
    if (screen0 >= 660 && screen0 <= 1000) {
      fill(255, alphaRect);
      rect(40, 75, 550, 120);
      rect(40, 220, 595, 120);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
    fill(0);
    textFont(bodyFont);
    textSize(tamFont);
    text("Los héroes son televisados en acción \n como parte de un espectáculo, trabajan para\n compañías de héroes y tienen sponsors\n que los mantienen a flote.\n \n Tiger y Bunny son forzados a trabajar juntos\n en la misma compañía, algo sin\n precedentes en el ambiente competitivo heroico.\n Inicialmente no se llevan bien.", 50, 100);

    tamFont = tamFont + 0.15;
    if (tamFont >= 25) {
      tamFont = 25;
    }
  } else if (screen0 > 1000 && screen0 <= 1500) { //Diapositiva 03
    if (screen0 == 1001) {
      alphaRect = 0;
      posX = -100;
      dirX = 1;
    }
    image(image03, 0, 0, 640, 480);
    if (screen0 > 1070 && screen0 <= 1500) {
      fill(255, alphaRect);
      rect(30, 90, 380, 185);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
    fill(0);

    textFont(bodyFont);
    textSize(25);
    text("Kotetsu Kaburagi (''Wild Tiger'') siempre ayuda a quien más lo necesita, sin importar su estatus, y no le importan los destrozos que cause en el camino (o salir herido).", posX, 100, 350, 300);
    posX = posX + dirX;

    if (posX >= -100) {
      dirX = 2;
    }
    if (posX >= 50) {
      posX = 50;
    }
  } else if (screen0 > 1500 && screen0 <= 2000) { //Diapositiva 04
    if (screen0 == 1501) {
      alphaRect = 0;
      posX = 700;
      dirX = 1;
    }
    image(image04, 0, 0, 640, 480);
    if (screen0 > 1600 && screen0 <= 2000) {
      fill(255, alphaRect);
      rect(260, 90, 370, 250);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
    fill(0);
    textFont(bodyFont);
    textSize(25);
    text("Los padres de Barnaby fueron asesinados por un hombre con un tatuaje de una organización secreta que opera en Sternbild. Sus recuerdos lo atormentan. Se volvió héroe para encontrar al asesino.", posX, 100, 350, 300);
    posX = posX + dirX;

    if (posX >= 700) {
      dirX = -4;
    }
    if (posX <= 270) {
      posX = 270;
    }
  } else if (screen0 > 2000 && screen0 <= 2500) { //Diapositiva 05
    if (screen0 == 2001) {
      alphaRect = 0;
      alphaText = 0;
      tamFont = 1;
    }
    image(image05, 0, 0, 640, 480);
    fill(255, 130);
    rect(40, 75, tamRectX, tamRectY);

    tamRectX = tamRectX + 4.5;
    if (tamRectX >= 560) {
      tamRectX = 560;
    }
    tamRectY = tamRectY + 1.1;
    if (tamRectY >= 135) {
      tamRectY = 135;
    }

    fill(0);
    textFont(bodyFont);
    textSize(tamFont);
    text("Tiger y Bunny no están solos. Hay seis héroes más:\n Origami Cyclone, Rock Bison, Blue Rose,\n Fire Emblem, Sky High y Dragon Kid.\n Compiten por puntos, pero su amistad crece en la serie y\n trabajan juntos para vencer las mayores dificultades.", 50, 100);

    tamFont = tamFont + 0.15;
    if (tamFont >= 20) {
      tamFont = 20;
    }
  } else if (screen0 > 2500 && screen0 <= 3000) { //Diapositiva 06
    if (screen0 == 2501) {
      alphaRect = 0;
      alphaText = 0;
      posX = 10;
      posY = 50;
      dirX = 1;
      dirY = 1;
    }
    image(image06, 0, 0, 640, 480);
    fill(255, 100);
    noStroke();
    rect(posX-10, posY-10, 250-20, 45);

    fill(0);
    textFont(titleFont);
    textSize(40);
    text("Villanos Notables", posX, posY, 250, 100);
    posX = posX + dirX;
    posY = posY + dirY;

    if (posX + 250 <= 420) {
      dirX = 1.5;
    } else {
      dirX = 0;
    }

    if (posY >= 50) {
      dirY = -1.5;
    }
    if (posY <= 10) {
      dirY = 1.5;
    }
    if (dirX == 0) {
      dirY = 0;
    }
    if (screen0 > 2610 && screen0 <= 3000) {
      fill(255, alphaRect);
      noStroke();
      rect(40, 90, 420, 160);

      fill(0, alphaText);
      textFont(bodyFont);
      textSize(20);
      text("Lunatic es un asesino de villanos (lo cual va contra los principios de Tiger). Tiene un oscuro pasado. Les trae problemas a los héroes y asesina a un sujeto que es parte de la organización que mató a los padres de Bunny.", 50, 100, 400, 150);

      alphaText = alphaText + 5;
      if (alphaText >= 255) {
        alphaText = 255;
      }
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
  } else if (screen0 > 3000 && screen0 <= 3500) { //Diapositiva 07
    if (screen0 == 3001) {
      alphaRect = 0;
      alphaText = 0;
      posY = -100;
    }
    image(image07, 0, 0, 640, 480);
    fill(255, alphaRect);
    noStroke();
    rect(40, 80, 420, 170);

    fill(0, alphaText);
    textFont(bodyFont);
    textSize(20);
    text("Jake es parte de esta organización secreta (Uroboros). Su novia extorsiona a Sternbild para que lo saquen de prisión, y amenaza con tomar las riendas de la ciudad. Bunny llega a creer que es el asesino de sus padres.", 50, 100, 400, 150);

    alphaText = alphaText + 5;
    if (alphaText >= 255) {
      alphaText = 255;
    }
    alphaRect = alphaRect + 5;
    if (alphaRect >= 100) {
      alphaRect = 100;
    }
  } else if (screen0 > 3500 && screen0 <= 4000) { //Diapositiva 08
    if (screen0 == 3501) {
      dirY = 0;
      posY = -100;
    }
    image(image08, 0, 0, 640, 480);
    fill(255, 130);
    rect(40, posY - 10, 420, 160);

    fill(0);
    textFont(bodyFont);
    textSize(20);
    text("Los recuerdos de Barnaby lo torturan: son muy vagos, y tiene pesadillas con que cualquiera puede ser el asesino.\n \n Mientras tanto, Tiger se enfrenta a la posibilidad de perder sus poderes.", 50, posY, 400, 190);

    posY = posY + dirY;

    if (posY >= -100) {
      dirY = 2;
    }
    if (posY >= 100) {
      posY = 100;
    }
  } else if (screen0 > 4000 && screen0 <= 4500) { //Diapositiva 09
    if (screen0 == 4001) {
      alphaRect = 0;
      posX = -100;
      dirX = 1;
    }
    image(image09, 0, 0, 640, 480);
    if (screen0 > 4075 && screen0 <= 4500) {
      fill(255, alphaRect);
      rect(40, 90, 370, 130);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
    fill(0);

    textFont(bodyFont);
    textSize(25);
    text("La serie trata temas como la justicia, la familia, la pérdida, el trauma, la amistad y el trabajo en equipo.", posX, 100, 350, 150);
    posX = posX + dirX;

    if (posX >= -100) {
      dirX = 2;
    }
    if (posX >= 50) {
      posX = 50;
    }
  } else if (screen0 > 4500) { //Diapositiva 10
    if (screen0 == 4501) {
      alphaRect = 0;
      alphaText = 0;
      tamFont = 1;
    }
    image(image10, 0, 0, 640, 480);
    if (screen0 >= 4620) {
      fill(255, alphaRect);
      noStroke();
      rect(40, 75, 550, 135);
      alphaRect = alphaRect + 5;
      if (alphaRect >= 100) {
        alphaRect = 100;
      }
    }
    fill(0);
    textFont(bodyFont);
    textSize(tamFont);
    text("Tiger & Bunny es un animé entrañable que fue votado\n el mejor animé de la historia en Japón en 2017.\n Este es el resumen sin spoilers de su primera temporada,\n el animé completo está en Netflix y consta de\n dos temporadas y dos películas hasta la fecha.", 50, 100);

    tamFont = tamFont + 0.15;
    if (tamFont >= 20) {
      tamFont = 20;
    }
    if (screen0 == 5001) { //Botón final de reinicio
      stroke(255, 0, 0);
      strokeWeight(2);
      if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40) {
        fill(200);
        if (pressed==true) {
          fill(150);
        }
      } else {
        fill(240);
      }
      rect(450, 390, 150, 40);
      if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40 && pressed == true) {
        fill(0);
        textFont(titleFont);
        textSize(20);
        text("Reiniciar", 502, 420);
      } else {
        fill(0);
        noStroke();
        textFont(titleFont);
        textSize(25);
        text("Reiniciar", 495, 420);
      }
    }
  }
}

void mousePressed() {
  if (screen0 == -1 && mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40 || screen0 == 5001 && mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40) {
    pressed = true;
  }
}

void mouseReleased() {
  if (screen0 == -1 && mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40 && pressed == true || screen0 == 5001 && mouseX > 450 && mouseX < 450 + 150 && mouseY > 390 && mouseY < 390 + 40 && pressed == true) {
    pressed = false;
    screen0 = 0;
    tamFont = 1;
    tamRectX = 0;
    tamRectY = 0;
    posX = 10;
    posY = 50;
    alphaText = 0;
    alphaRect = 0;
    dirX = 1;
    dirY = 1;
  } else {
    pressed = false;
  }
}
