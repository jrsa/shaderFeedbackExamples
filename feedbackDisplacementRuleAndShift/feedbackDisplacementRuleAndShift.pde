// this version displaces the image based on the input, and also adds the color
// shift effect from the first sketch. these two effects interact pretty well!

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