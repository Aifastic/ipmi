int calcularRadio(float x1, float y1, float x2, float y2){
  float distancia= dist(x1, y1, x2, y2);
  int radio = round(distancia)/2;
  return radio;
}
