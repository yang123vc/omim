attribute vec4 a_pos;
attribute vec3 a_normal;

uniform mat4 m_transform;

varying float v_intensity;

void main()
{
  vec4 position = m_transform * vec4(a_pos.x, a_pos.y, 0.0, 1.0);
  v_intensity = a_pos.w;
  gl_Position = position;
}