uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
    // get the pixel from the input
    vec4 pixelColor = texture2D(texture, vertTexCoord.st);

    // add to the color channels by different amounts, so that they
    // will diverge across the feedback iterations. they also need
    // to be wrapped around to 0.0 when they reach 1.0, otherwise
    // the whole frame would end up white.
    pixelColor.r = mod(pixelColor.r + 0.01, 1.0);
    pixelColor.g = mod(pixelColor.g + 0.02, 1.0);
    pixelColor.b = mod(pixelColor.b + 0.03, 1.0);

    // we're done, the gl_FragColor variable is built in, and it is
    // where we store the output.
    gl_FragColor = pixelColor;
}
