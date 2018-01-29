// this sketch doesnt have any shaders, and is only here to demonstrate
// what the sketches will build upon. the processing environment takes 
// care of a lot of the setup work that would be required for shader feedback
// in other environments. in this sketch, a shape is drawn at the position of
// the mouse pointer, and since the frame is never erased, it leaves a trail
// when the mouse is moved. this is where feedback occurs. the pixels drawn
// in previous frames will continually be updated by our shader (using the
// 'filter' function). in this sketch, there is no shader, and the pixels sit,
// frozen in the background.

void setup() {
    size(800, 600, P2D);
    
    stroke(255, 0, 0);
    rectMode(CENTER);
}

void draw(){
    rect(mouseX, mouseY, 150, 150); 
    ellipse(mouseX, mouseY, 100, 100);
}