uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
    // get the pixel from the input
    // in this version, a small offset will be added so that an
    // adjacent pixel is fetched from the input.
    vec4 inputPixel = texture2D(texture, vertTexCoord.st + vec2(0.01));

    gl_FragColor = inputPixel;
}
