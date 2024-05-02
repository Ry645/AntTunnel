shader_type spatial;
render_mode fog_disabled, depth_draw_never;

uniform float amount = 0.03;
uniform sampler2D manTexture;

uniform float alphaThreshold = 490.0;
uniform float alphaPrecision = 500.0;

void fragment()
{
	ALBEDO = vec3(1.0, 1.0, 1.0);
	
	float a = fract(sin(dot (UV, vec2(12.9898, 78.233) *TIME))* 438.5453)*1.9;
	vec4 col = texture(manTexture, UV);
	if (col.a > 0.5) {
		col.a = pow(a, amount);
		if (col.a < alphaThreshold/alphaPrecision) {
			ALPHA = 1.0;
		}
		else {
			ALPHA = 0.0;
		}
	}
	else
	{
		ALPHA = 0.0;
	}
}