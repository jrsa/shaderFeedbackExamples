// this is a very simple feedback sketch that shifts the red channel of the image
// this hardly looks like you would expect feedback to look, except that it continuously
// changes the color of everything that was previously drawn into the frame. there is no
// sliding or any other type of spatial effect because that has to be  explicitly written!

PShader shader;

void setup() {
    size(800, 600, P2D);
    shader = loadShader("feedback.glsl");
    
    stroke(255, 0, 0);
    rectMode(CENTER);
}

void draw(){
    if (mousePressed) {
        filter(shader);
    }
    rect(mouseX, mouseY, 150, 150); 
    ellipse(mouseX, mouseY, 100, 100);
}