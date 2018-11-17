Camera camera;

ParamSphere sphere = new ParamSphere();
ParamCylinder cylinder = new ParamCylinder();
ParamWave wave = new ParamWave();

PImage tex_earth;
PImage tex_csirke;
PImage tex_texture;

void setup() {
  size(800, 600, P3D);

  tex_earth = loadImage("earth.jpg");
  tex_csirke = loadImage("csirke.jpg");
  tex_texture = loadImage("texture.bmp");
  
  sphere.texture = tex_earth;
  cylinder.texture = tex_earth;
  sphere.texture = tex_earth;
  
  camera = new Camera();
}

void update() {
 camera.update(); 
}

void keyReleased() {
   if (key == 'w') {
    camera.MoveForwad(false); 
   } else if (key == 's') {
    camera.MoveBackward(false); 
   } else if (key == 'd') {
    camera.MoveRight(false); 
   } else if (key == 'a') {
    camera.MoveLeft(false); 
   }
}


void keyPressed() {
 if (key == 'w') {
  camera.MoveForwad(true); 
 } else if(key == 's') {
   camera.MoveBackward(true);
 } else if (key == 'd') {
  camera.MoveRight(true); 
 } else if (key == 'a') {
  camera.MoveLeft(true); 
 }
  
}

void draw() {
  update();
  SetLights();  
  draw3D();
}

void SetLights() {
  lights();
  directionalLight(255, 0, 0, 0, -1, 0);
}

void draw3D() {
  background(127);
  
  pushMatrix();
    rotateZ(millis()/1000.0);
    translate(0, 0, -1);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  pushMatrix();
    rotateZ(millis()/1000.0);
    translate(0, 0, 1);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  
  pushMatrix();
    rotateZ(-millis()/400.0);
    scale(1, 0.4, 0.4);
    translate(1,0,0);
    rotateY(PI/2);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  
  pushMatrix();
    translate(5, 0, 0);
    sphere.Draw();
  popMatrix();
  
  
  pushMatrix();
    translate(-5, 0, 0);
    cylinder.Draw();
  popMatrix();
  
  
  pushMatrix();
    translate(5, 5, 0);
    wave.offset.x = millis() / 500.0f;
    wave.offset.y = millis() / 500.0f;
    wave.Draw();
  popMatrix();
}
void pyramid() {
 beginShape(TRIANGLES); 
 vertex(-1, -1, 0);
 vertex(1, -1, 0);
 vertex(-1, 1, 0);
 
 vertex(1, -1, 0);
 vertex(1, 1, 0);
 vertex(-1, 1, 0);
 
 vertex(-1, -1, 0);
 vertex( 1, -1, 0);
 vertex(0, 0, 1);
 
 vertex(1, -1, 0);
 vertex( 1, 1, 0);
 vertex(0, 0, 1);
 
 vertex(1, 1, 0);
 vertex( -1, 1, 0);
 vertex(0, 0, 1);
 
 vertex(-1, 1, 0);
 vertex( -1, -1, 0);
 vertex(0, 0, 1);
 endShape();
}
