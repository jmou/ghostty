#version 430 core

#include "common.glsl"

layout(binding = 0) uniform sampler2D source_texture;

layout(location = 0) out vec4 out_color;

void main() {
    // Compute UV coordinates from fragment position
    vec2 uv = gl_FragCoord.xy / screen_size;
    out_color = texture(source_texture, uv);
}
