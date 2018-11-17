class ParamWawe extends ParamSurface {
  
  float size = 6;
  PVector offset;
  PVector GetPos(float u, float v){
    return PVector(u*size, cos(2*PI*u+offset.x)*sin(2*PI*v+offset.x),
    v*size); //z
  }
}
