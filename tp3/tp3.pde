float angle;
float angleBig;
float angleRect;
PImage obraOriginal;
boolean mPressed = false;
float escala = 0.89;
int colorDegrade = 200;

void setup() {
  size(800, 400);
  background(255);
  obraOriginal= loadImage("11222095_wormhole-1.jpg");
}

void draw() { 
  
  background(255);
  float coordXRect = width;
  float anchoRect = 90;
  float altoRect = 70;
  
  pushMatrix();
  translate((width/4)*3, height/2);
  int radioEsferaExterna = calcularRadio(0,0,width/2,height);
    
  if (keyPressed == true) {
    if (key == ENTER || key == RETURN) {
      colorDegrade = 200;
      rotate(-angleBig);
      angleBig = 0;
    }
    if (keyCode == UP) {
      if (colorDegrade<210) {
        colorDegrade+=3;
      }
    }
    if (keyCode == DOWN) {
      if (colorDegrade>0) {
        colorDegrade-=3;
      }
    }
  }

  rotate(angleBig);
  dibujarDegrade(colorDegrade, colorDegrade+150, 150, radioEsferaExterna);
  dibujarDegrade(colorDegrade+40, colorDegrade, 1, 150);
  for (float a=0; a<360; a+=11.25) {
    rotate(radians(a));
    pushMatrix();
    for (int i=0; i<100; i++) {
      coordXRect = coordXRect * escala;
      anchoRect = anchoRect * escala;
      altoRect = altoRect * escala;
      rotate(radians(angle));
      dibujarDegradeRect(coordXRect, anchoRect, altoRect);
    }
    coordXRect = width;
    anchoRect = 90;
    altoRect = 70;
    popMatrix();
  }
  angle=17;
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    float velocidad = map(mouseX, 400, 800, -100, 100);
    if (mPressed==true) {
      angleBig= angleBig + velocidad * 0.0004;
      println(angleBig);
    }
  }
  popMatrix();
  image(obraOriginal, 0, 0, 400, 400);
}

void mousePressed() {
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    mPressed = true;
  } else {
    mPressed = false;
  }
}
void mouseReleased() {
    mPressed = false;
}
