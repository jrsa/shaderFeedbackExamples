a series of processing sketches showing how to use glsl shaders to create a video feedback system using displacement and color shifting.

the sketches in this folder are sequential modifications of the 'feedbackNothing' sketch, and only the shader code is modified. the java code is exactly the same. to see how these examples work you will have to look at the 'feedback.glsl' file inside each sketches data folder. an easy way to get there is to press command-k when the sketch is open.

the sketches should be looked at in the following order:

feedbackNothing
feedbackSimpleShift
feedbackDisplace
feedbackDisplacementRule
feedbackDisplacementRuleAndShift

i have tried to document the code extensively using comments.

the java code is written so that the feedback process will only happen if a mouse button is pressed, otherwise nothing happens and you can look at a single frame frozen.

attribution note: these examples are derivations from the 'Shaders/BlurFilter' processing example, which is a good shader to check out. however, i think these examples will be a little easier to digest and get some cool/fun/good results.