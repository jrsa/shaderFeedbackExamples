uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
    // fetch the previous frame's pixel value at the current location.
    // this value is not going to be directly used as the output color,
    // but will instead be used to calculate a position from which the
    // output will be fetched from.
    vec4 originalInputPixel = texture2D(texture, vertTexCoord.st);
    vec2 offset = originalInputPixel.rb / 200.0;

    // this is a second lookup from the input image. this pixel color
    // will be modified and output as a result
    vec4 inputPixel = texture2D(texture, vertTexCoord.st + offset);

    // this is a 4 component vector that will be added to the final
    // color value. the 4th component is for the alpha channel, which
    // will not have an effect unless blending is enabled. 
    vec4 colorShiftAmount = vec4(0.01, 0.02, 0.03, 0.0);
    vec4 outputPixel = inputPixel + colorShiftAmount;

    // wrap color values to [0.0, 1.0]
    // without this step, most of the pixels will end up at 1.0 (white) and stay there
    outputPixel = mod(outputPixel, 1.0);

    gl_FragColor = outputPixel;
}
