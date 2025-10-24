void mainImage(out vec4 fragColor, in vec2 fragCoord) {
  vec2 uv = fragCoord / iResolution.xy;

  // Current frame input
  vec4 current = texture(iChannel0, uv);

  // Previous frame output (new!)
  vec4 previous = texture(iChannel1, uv);

  // Blend for motion blur effect
  fragColor = mix(current, previous, 0.95);
}
