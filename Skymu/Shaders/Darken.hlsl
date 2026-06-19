sampler2D input : register(s0);

float intensity; 

float4 main(float2 uv : TEXCOORD) : COLOR
{
    float4 c = tex2D(input, uv);

    float3 darkTint = float3(0.12, 0.12, 0.14);

    c.rgb = lerp(c.rgb, darkTint, intensity);

    return c;
}