class ParamWave extends ParamSurface {
 
  float size = 10;
  PVector offset = new PVector();
  PVector GetPos(float u, float v) {
    return new PVector(u * size, 
    cos(2 * PI * u + offset.x) 
                  * sin(2 * PI * v + offset.y),
    v * size);    
  }
  
  PVector getDiffU(float u, float v){
    return new PVector(size, 
    (-1)*sin(2 * PI * u + offset.x)*2*PI 
                    * sin(2 * PI * v + offset.y),
    0);
  }
  PVector getDiffV(float u, float v){
    return new PVector(u * size, 
    (-1)*cos(2 * PI * u + offset.x) 
                  * cos(2 * PI * v + offset.y)*(2 * PI),
    size 
    );
  }
  
   PVector GetNormal(float u, float v){
     return (getDiffU(u,v).cross(getDiffV(u,v))).normalize();
   }
}
