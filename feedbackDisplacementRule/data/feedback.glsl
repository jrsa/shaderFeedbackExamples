uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
    // fetch the previous frame's pixel value at the current location.
    // this value is not going to be directly used as the output color,
    // but will instead be used to calculate a position from which the
    // output will be fetched from.
    vec4 inputPixel = texture2D(texture, vertTexCoord.st);
    vec2 offset = inputPixel.rb / 150.0;

    // this is a second lookup from the input image which
    // is used as the output pixel color. the position in the
    // frame that it is fetched from is offset by the color fetched above
    gl_FragColor = texture2D(texture, vertTexCoord.st + offset);
}
