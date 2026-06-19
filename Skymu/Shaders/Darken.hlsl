sampler2D input : register(s0);
float intensity;

float4 main(float2 uv : TEXCOORD) : COLOR
{
    float4 c = tex2D(input, uv);

    c.rgb = c.rgb * (1.0 - intensity * 0.9);

    return c;
}