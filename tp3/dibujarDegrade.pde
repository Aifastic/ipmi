void dibujarDegrade(int hueMin, int hueMax, int radioEsferaMin, int radioEsferaMax) {
  ellipseMode(RADIUS);
  colorMode(HSB, 360, 100, 100);

  for (int r = radioEsferaMax; r>radioEsferaMin; r-=2) {
    float hue = map(r, radioEsferaMin, radioEsferaMax, hueMin, hueMax);
    noFill();
    stroke(hue, 65, 85);
    strokeWeight(3);
    ellipse(0, 0, r, r);
    ellipse(0, 0, r, r);
  }
}

void dibujarDegradeRect(float coordXRect, float anchoRect, float altoRect) {
  noStroke();
  for (int i=0; i<20; i++) {
    float alpha = map(i, 0, 20, 255, 0);
    colorMode(RGB, 255);
    fill(255, alpha);
    rect(coordXRect+i*anchoRect/40, 0, anchoRect/40, altoRect);
  }
  for (int i=20; i<40; i++) {
    float alpha = map(i, 20, 40, 0, 255);
    colorMode(RGB, 255);
    fill(0, alpha);
    rect(coordXRect+i*anchoRect/40, 0, anchoRect/40, altoRect);
  }
}
