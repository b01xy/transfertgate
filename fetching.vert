uniform sampler2D MyTex;
uniform float seed;
uniform float K;
varying vec4 C;
void main()
{
	vec4 v = vec4(gl_Vertex);
	vec4 color = texture2D(MyTex, gl_MultiTexCoord0.st);
	v.z = (color.r)*seed;	
	v.x += (color.b)*K;
//	v.y += (color.g)/2.;

	C=color;
	gl_Position = gl_ModelViewProjectionMatrix * v;
	
}

