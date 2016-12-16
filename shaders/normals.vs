
#version 130

uniform mat4 view;
uniform mat4 projection;
in vec4 vPosition;
in vec3 vNormal;
out vec3 normal;
out vec3 position;

void main() {
	gl_Position = projection * view * vPosition;
	position = vPosition.xyz;
	normal = vNormal;
}