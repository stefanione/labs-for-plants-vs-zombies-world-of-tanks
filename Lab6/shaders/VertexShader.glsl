#version 330

// Input
// TODO(student): Get vertex attributes from each location
layout(location = 0) in vec3 v_position;
layout(location = 3) in vec3 v_normal;
layout(location = 2) in vec3 v_texture;
layout(location = 1) in vec3 v_color;

// Uniform properties
uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;
uniform float time;

// Output
// TODO(student): Output values to fragment shader
out vec3 f_position;
out vec3 f_normal;
out vec3 f_texture;
out vec3 f_color;


void main()
{
    // TODO(student): Send output to fragment shader
    f_position = v_position;
    f_normal = v_normal;
    f_texture = v_texture;
    f_color = v_color;

     vec3 new_position = vec3(v_position + sin(time));

    // TODO(student): Compute gl_Position
    gl_Position = Projection * View * Model * vec4(new_position, 1.0);
}
