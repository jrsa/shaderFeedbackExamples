// this sketch displaces the image like in the 'feedbackDisplace' sketch, but
// does so variably based on the input color.

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