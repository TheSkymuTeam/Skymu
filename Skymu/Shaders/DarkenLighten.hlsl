sampler2D input : register(s0);
float intensity;

float4 main(float2 uv : TEXCOORD) : COLOR
{
    float4 c = tex2D(input, uv);
    
    float bright = (c.r + c.g + c.b) / 3.0;
    
    float3 result;
    if (bright > 0.5)
        result = lerp(c.rgb, 0.1, intensity); // bring down, floor at 0.1
    else
        result = lerp(c.rgb, 1.0, intensity); // bring up, ceiling at 1.0
    
    c.rgb = result;
    return c;
}