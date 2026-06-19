using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;

namespace Skymu.Shaders
{
    public class DarkenEffect : ShaderEffect
    {
        private static readonly PixelShader _shader = new PixelShader
        {
            UriSource = new Uri("pack://application:,,,/Shaders/Darken.ps")
        };

        public DarkenEffect()
        {
            PixelShader = _shader;
            UpdateShaderValue(InputProperty);
            UpdateShaderValue(IntensityProperty);
        }

        public static readonly DependencyProperty InputProperty =
            ShaderEffect.RegisterPixelShaderSamplerProperty(
                "Input", typeof(DarkenEffect), 0);

        public Brush Input
        {
            get => (Brush)GetValue(InputProperty);
            set => SetValue(InputProperty, value);
        }

        public static readonly DependencyProperty IntensityProperty =
    DependencyProperty.Register(
        nameof(Intensity),
        typeof(double),
        typeof(DarkenEffect),
        new UIPropertyMetadata(0.7, PixelShaderConstantCallback(0)));

        public double Intensity
        {
            get => (double)GetValue(IntensityProperty);
            set => SetValue(IntensityProperty, value);
        }
    }
}
