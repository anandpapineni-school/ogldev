#version 330

layout (location = 0) in vec3 Position;
layout (location = 1) in vec2 TexCoord;
layout (location = 2) in vec3 Normal;
layout (location = 3) in ivec4 BoneIDs;
layout (location = 4) in vec4 Weights;

out vec2 TexCoord0;
out vec3 Normal0;
out vec3 LocalPos0;
flat out ivec4 BoneIDs0;

const int MAX_BONES = 100;

uniform mat4 gWVP;
uniform mat4 gBones[MAX_BONES];

void main()
{
    gl_Position = gWVP * vec4(Position, 1.0);
    TexCoord0 = TexCoord;
    Normal0 = Normal;
    LocalPos0 = Position;
    BoneIDs0 = BoneIDs;
}
