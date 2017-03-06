// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0007;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    _r0007 = VertexCoord.x*MVPMatrix[0];
    _r0007 = _r0007 + VertexCoord.y*MVPMatrix[1];
    _r0007 = _r0007 + VertexCoord.z*MVPMatrix[2];
    _r0007 = _r0007 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0007;
    _oTex = TexCoord.xy;
    gl_Position = _r0007;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP3;
float _TMP5;
float _TMP4;
float _TMP10;
float _TMP11;
vec2 _TMP1;
vec2 _TMP9;
vec2 _TMP14;
vec2 _TMP7;
vec4 _TMP13;
float _TMP16;
float _TMP15;
float _TMP18;
vec2 _TMP12;
vec2 _TMP8;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _pos0025;
vec3 _a0027;
vec3 _b0027;
vec3 _c0027;
vec3 _TMP30;
vec2 _pos0031;
vec2 _x0033;
float _x0041;
float _x0045;
float _x0049;
vec3 _TMP50;
vec2 _pos0051;
vec2 _x0053;
float _x0061;
float _x0065;
float _x0069;
vec3 _TMP70;
vec2 _pos0071;
vec2 _x0073;
float _x0081;
float _x0085;
float _x0089;
vec2 _pos0091;
float _TMP94;
float _pos0095;
float _x0097;
float _TMP98;
float _x0101;
float _TMP102;
float _pos0103;
float _x0105;
vec3 _TMP108;
vec2 _pos0109;
vec2 _x0111;
float _x0119;
float _x0123;
float _x0127;
vec3 _TMP128;
vec2 _pos0129;
vec2 _x0131;
float _x0139;
float _x0143;
float _x0147;
vec3 _TMP148;
vec2 _pos0149;
vec2 _x0151;
float _x0159;
float _x0163;
float _x0167;
vec3 _TMP168;
vec2 _pos0169;
vec2 _x0171;
float _x0179;
float _x0183;
float _x0187;
vec3 _TMP188;
vec2 _pos0189;
vec2 _x0191;
float _x0199;
float _x0203;
float _x0207;
vec2 _pos0209;
float _TMP212;
float _pos0213;
float _x0215;
float _TMP216;
float _pos0217;
float _x0219;
float _TMP220;
float _x0223;
float _TMP224;
float _pos0225;
float _x0227;
float _TMP228;
float _pos0229;
float _x0231;
vec3 _TMP234;
vec2 _pos0235;
vec2 _x0237;
float _x0245;
float _x0249;
float _x0253;
vec3 _TMP254;
vec2 _pos0255;
vec2 _x0257;
float _x0265;
float _x0269;
float _x0273;
vec3 _TMP274;
vec2 _pos0275;
vec2 _x0277;
float _x0285;
float _x0289;
float _x0293;
vec2 _pos0295;
float _TMP298;
float _pos0299;
float _x0301;
float _TMP302;
float _x0305;
float _TMP306;
float _pos0307;
float _x0309;
vec2 _pos0313;
float _TMP316;
float _pos0317;
float _x0319;
vec2 _pos0323;
float _TMP326;
float _x0329;
vec2 _pos0333;
float _TMP336;
float _pos0337;
float _x0339;
vec2 _x0341;
vec2 _pos0343;
vec3 _mask0343;
float _TMP344;
float _x0345;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _pos9;
    vec3 _outColor;
    _pos0025 = TEX0.xy*(TextureSize.xy/InputSize.xy);
    _pos0025 = _pos0025*2.00000000E+00 - 1.00000000E+00;
    _pos0025 = _pos0025*vec2(1.00000000E+00 + _pos0025.y*_pos0025.y*3.09999995E-02, 1.00000000E+00 + _pos0025.x*_pos0025.x*4.10000011E-02);
    _TMP0 = _pos0025*5.00000000E-01 + 5.00000000E-01;
    _pos9 = _TMP0*(InputSize.xy/TextureSize.xy);
    _x0033 = _pos9*TextureSize.xy + vec2( -1.00000000E+00, -1.00000000E+00);
    _TMP12 = floor(_x0033);
    _pos0031 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0031.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0041 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0041, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0045 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0045, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0049 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0049, 2.40000010E+00);
    } 
    _TMP30 = vec3(_TMP15, _TMP16, _TMP18);
    _x0053 = _pos9*TextureSize.xy + vec2( 0.00000000E+00, -1.00000000E+00);
    _TMP12 = floor(_x0053);
    _pos0051 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0051.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0061 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0061, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0065 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0065, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0069 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0069, 2.40000010E+00);
    } 
    _TMP50 = vec3(_TMP15, _TMP16, _TMP18);
    _x0073 = _pos9*TextureSize.xy + vec2( 1.00000000E+00, -1.00000000E+00);
    _TMP12 = floor(_x0073);
    _pos0071 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0071.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0081 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0081, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0085 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0085, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0089 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0089, 2.40000010E+00);
    } 
    _TMP70 = vec3(_TMP15, _TMP16, _TMP18);
    _pos0091 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0091);
    _TMP7 = -((_pos0091 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _pos0095 = _TMP7.x - 1.00000000E+00;
    _x0097 = -3.00000000E+00*_pos0095*_pos0095;
    _TMP94 = exp2(_x0097);
    _x0101 = -3.00000000E+00*_TMP7.x*_TMP7.x;
    _TMP98 = exp2(_x0101);
    _pos0103 = _TMP7.x + 1.00000000E+00;
    _x0105 = -3.00000000E+00*_pos0103*_pos0103;
    _TMP102 = exp2(_x0105);
    _a0027 = (_TMP30*_TMP94 + _TMP50*_TMP98 + _TMP70*_TMP102)/(_TMP94 + _TMP98 + _TMP102);
    _x0111 = _pos9*TextureSize.xy + vec2( -2.00000000E+00, 0.00000000E+00);
    _TMP12 = floor(_x0111);
    _pos0109 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0109.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0119 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0119, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0123 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0123, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0127 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0127, 2.40000010E+00);
    } 
    _TMP108 = vec3(_TMP15, _TMP16, _TMP18);
    _x0131 = _pos9*TextureSize.xy + vec2( -1.00000000E+00, 0.00000000E+00);
    _TMP12 = floor(_x0131);
    _pos0129 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0129.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0139 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0139, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0143 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0143, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0147 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0147, 2.40000010E+00);
    } 
    _TMP128 = vec3(_TMP15, _TMP16, _TMP18);
    _x0151 = _pos9*TextureSize.xy;
    _TMP12 = floor(_x0151);
    _pos0149 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0149.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0159 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0159, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0163 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0163, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0167 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0167, 2.40000010E+00);
    } 
    _TMP148 = vec3(_TMP15, _TMP16, _TMP18);
    _x0171 = _pos9*TextureSize.xy + vec2( 1.00000000E+00, 0.00000000E+00);
    _TMP12 = floor(_x0171);
    _pos0169 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0169.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0179 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0179, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0183 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0183, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0187 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0187, 2.40000010E+00);
    } 
    _TMP168 = vec3(_TMP15, _TMP16, _TMP18);
    _x0191 = _pos9*TextureSize.xy + vec2( 2.00000000E+00, 0.00000000E+00);
    _TMP12 = floor(_x0191);
    _pos0189 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0189.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0199 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0199, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0203 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0203, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0207 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0207, 2.40000010E+00);
    } 
    _TMP188 = vec3(_TMP15, _TMP16, _TMP18);
    _pos0209 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0209);
    _TMP8 = -((_pos0209 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _pos0213 = _TMP8.x - 2.00000000E+00;
    _x0215 = -3.00000000E+00*_pos0213*_pos0213;
    _TMP212 = exp2(_x0215);
    _pos0217 = _TMP8.x - 1.00000000E+00;
    _x0219 = -3.00000000E+00*_pos0217*_pos0217;
    _TMP216 = exp2(_x0219);
    _x0223 = -3.00000000E+00*_TMP8.x*_TMP8.x;
    _TMP220 = exp2(_x0223);
    _pos0225 = _TMP8.x + 1.00000000E+00;
    _x0227 = -3.00000000E+00*_pos0225*_pos0225;
    _TMP224 = exp2(_x0227);
    _pos0229 = _TMP8.x + 2.00000000E+00;
    _x0231 = -3.00000000E+00*_pos0229*_pos0229;
    _TMP228 = exp2(_x0231);
    _b0027 = (_TMP108*_TMP212 + _TMP128*_TMP216 + _TMP148*_TMP220 + _TMP168*_TMP224 + _TMP188*_TMP228)/(_TMP212 + _TMP216 + _TMP220 + _TMP224 + _TMP228);
    _x0237 = _pos9*TextureSize.xy + vec2( -1.00000000E+00, 1.00000000E+00);
    _TMP12 = floor(_x0237);
    _pos0235 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0235.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0245 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0245, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0249 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0249, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0253 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0253, 2.40000010E+00);
    } 
    _TMP234 = vec3(_TMP15, _TMP16, _TMP18);
    _x0257 = _pos9*TextureSize.xy + vec2( 0.00000000E+00, 1.00000000E+00);
    _TMP12 = floor(_x0257);
    _pos0255 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0255.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0265 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0265, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0269 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0269, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0273 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0273, 2.40000010E+00);
    } 
    _TMP254 = vec3(_TMP15, _TMP16, _TMP18);
    _x0277 = _pos9*TextureSize.xy + vec2( 1.00000000E+00, 1.00000000E+00);
    _TMP12 = floor(_x0277);
    _pos0275 = (_TMP12 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize.xy;
    _TMP13 = COMPAT_TEXTURE(Texture, _pos0275.xy);
    if (_TMP13.x <= 4.04499993E-02) { 
        _TMP18 = _TMP13.x/1.29200001E+01;
    } else {
        _x0285 = (_TMP13.x + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0285, 2.40000010E+00);
    } 
    _TMP15 = _TMP18;
    if (_TMP13.y <= 4.04499993E-02) { 
        _TMP18 = _TMP13.y/1.29200001E+01;
    } else {
        _x0289 = (_TMP13.y + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0289, 2.40000010E+00);
    } 
    _TMP16 = _TMP18;
    if (_TMP13.z <= 4.04499993E-02) { 
        _TMP18 = _TMP13.z/1.29200001E+01;
    } else {
        _x0293 = (_TMP13.z + 5.49999997E-02)/1.05499995E+00;
        _TMP18 = pow(_x0293, 2.40000010E+00);
    } 
    _TMP274 = vec3(_TMP15, _TMP16, _TMP18);
    _pos0295 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0295);
    _TMP7 = -((_pos0295 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _pos0299 = _TMP7.x - 1.00000000E+00;
    _x0301 = -3.00000000E+00*_pos0299*_pos0299;
    _TMP298 = exp2(_x0301);
    _x0305 = -3.00000000E+00*_TMP7.x*_TMP7.x;
    _TMP302 = exp2(_x0305);
    _pos0307 = _TMP7.x + 1.00000000E+00;
    _x0309 = -3.00000000E+00*_pos0307*_pos0307;
    _TMP306 = exp2(_x0309);
    _c0027 = (_TMP234*_TMP298 + _TMP254*_TMP302 + _TMP274*_TMP306)/(_TMP298 + _TMP302 + _TMP306);
    _pos0313 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0313);
    _TMP9 = -((_pos0313 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _pos0317 = _TMP9.y + -1.00000000E+00;
    _x0319 = -8.00000000E+00*_pos0317*_pos0317;
    _TMP316 = exp2(_x0319);
    _pos0323 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0323);
    _TMP9 = -((_pos0323 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _x0329 = -8.00000000E+00*_TMP9.y*_TMP9.y;
    _TMP326 = exp2(_x0329);
    _pos0333 = _pos9*TextureSize.xy;
    _TMP14 = floor(_pos0333);
    _TMP9 = -((_pos0333 - _TMP14) - vec2( 5.00000000E-01, 5.00000000E-01));
    _pos0337 = _TMP9.y + 1.00000000E+00;
    _x0339 = -8.00000000E+00*_pos0337*_pos0337;
    _TMP336 = exp2(_x0339);
    _outColor = _a0027*_TMP316 + _b0027*_TMP326 + _c0027*_TMP336;
    _x0341 = TEX0.xy*(TextureSize.xy/InputSize.xy)*OutputSize.xy;
    _TMP1 = floor(_x0341);
    _pos0343 = _TMP1 + vec2( 5.00000000E-01, 5.00000000E-01);
    _pos0343.x = _pos0343.x + _pos0343.y*3.00000000E+00;
    _mask0343 = vec3( 5.00000000E-01, 5.00000000E-01, 5.00000000E-01);
    _x0345 = _pos0343.x/6.00000000E+00;
    _TMP344 = fract(_x0345);
    if (_TMP344 < 3.33000004E-01) { 
        _mask0343.x = 1.50000000E+00;
    } else {
        if (_TMP344 < 6.66000009E-01) { 
            _mask0343.y = 1.50000000E+00;
        } else {
            _mask0343.z = 1.50000000E+00;
        } 
    } 
    _outColor.xyz = _outColor.xyz*_mask0343;
    if (_outColor.x < 3.13080009E-03) { 
        _TMP10 = _outColor.x*1.29200001E+01;
    } else {
        _TMP11 = pow(_outColor.x, 4.16660011E-01);
        _TMP10 = 1.05499995E+00*_TMP11 - 5.49999997E-02;
    } 
    _TMP4 = _TMP10;
    if (_outColor.y < 3.13080009E-03) { 
        _TMP10 = _outColor.y*1.29200001E+01;
    } else {
        _TMP11 = pow(_outColor.y, 4.16660011E-01);
        _TMP10 = 1.05499995E+00*_TMP11 - 5.49999997E-02;
    } 
    _TMP5 = _TMP10;
    if (_outColor.z < 3.13080009E-03) { 
        _TMP10 = _outColor.z*1.29200001E+01;
    } else {
        _TMP11 = pow(_outColor.z, 4.16660011E-01);
        _TMP10 = 1.05499995E+00*_TMP11 - 5.49999997E-02;
    } 
    _TMP3 = vec3(_TMP4, _TMP5, _TMP10);
    _ret_0 = vec4(_TMP3.x, _TMP3.y, _TMP3.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
