shader_type canvas_item;
render_mode blend_mix;

uniform float pixelization = 512;
uniform float channelNumber = 8;
uniform sampler2D screen_tex_frg_7 : hint_screen_texture;

vec3 snap(vec3 original, float stepVal) {
	return round(original * 1.0/stepVal) * stepVal;
}

void fragment() {
// Input:2
	vec2 n_out2p0 = UV;


// FloatParameter:3
	float n_out3p0 = pixelization;


// VectorOp:4
	vec2 n_out4p0 = n_out2p0 * vec2(n_out3p0);


// VectorFunc:5
	vec2 n_out5p0 = floor(n_out4p0);


// VectorOp:6
	vec2 n_out6p0 = n_out5p0 / vec2(n_out3p0);


	vec4 n_out7p0;
// Texture2D:7
	n_out7p0 = texture(screen_tex_frg_7, n_out6p0);


// Output:0
	COLOR.rgb = snap(vec3(n_out7p0.xyz), 1.0/channelNumber);
	
	//COLOR.rgb = vec3(n_out7p0.xyz);

}
