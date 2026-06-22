/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;

namespace Skymu.Shaders
{
    public class DarkenShader : ShaderEffect
    {
        private static readonly PixelShader _shader = new PixelShader
        {
            UriSource = new Uri("pack://application:,,,/Shaders/Darken.ps")
        };

        public DarkenShader()
        {
            PixelShader = _shader;
            UpdateShaderValue(InputProperty);
            UpdateShaderValue(IntensityProperty);
        }

        public static readonly DependencyProperty InputProperty =
            ShaderEffect.RegisterPixelShaderSamplerProperty(
                "Input", typeof(DarkenShader), 0);

        public Brush Input
        {
            get => (Brush)GetValue(InputProperty);
            set => SetValue(InputProperty, value);
        }

        public static readonly DependencyProperty IntensityProperty =
    DependencyProperty.Register(
        nameof(Intensity),
        typeof(double),
        typeof(DarkenShader),
        new UIPropertyMetadata(0.9, PixelShaderConstantCallback(0)));

        public double Intensity
        {
            get => (double)GetValue(IntensityProperty);
            set => SetValue(IntensityProperty, value);
        }
    }
}
