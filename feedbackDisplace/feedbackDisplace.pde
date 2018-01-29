// this version shifts each frame by a small amount, meaning that over
// feedback iterations the image slides continuously in one direction.

PShader shader;

void setup() {
    size(800, 600, P2D);
    shader = loadShader("feedback.glsl");
    
    stroke(255, 0, 0);
    rectMode(CENTER);
    
    textureWrap(REPEAT);
}

void draw(){
    if (mousePressed) {
        filter(shader);
    }
    rect(mouseX, mouseY, 150, 150); 
    ellipse(mouseX, mouseY, 100, 100);
}