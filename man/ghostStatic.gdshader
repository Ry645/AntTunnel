shader_type spatial;

uniform float amount = 40.0;
uniform sampler2D manTexture;

uniform float alphaThreshold = 1000.0;
uniform float alphaPrecision = 1000.0;

void fragment()
{
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