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
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Skymu.UserControls
{
    public class MaxGapUniformPanel : StackPanel
    {
        public double MaxGap { get; set; } = 20;

        double ResolveEqualWidth(double availableWidth)
        {
            int count = InternalChildren.Count;
            if (count == 0) return 0;

            var remaining = InternalChildren.Cast<UIElement>().ToList();
            double remainingWidth = availableWidth;

            while (remaining.Count > 0)
            {
                double equalW = remainingWidth / remaining.Count;

                var clamped = remaining
                    .Where(c => c is FrameworkElement fe && fe.MinWidth > equalW)
                    .ToList();

                if (clamped.Count == 0)
                    return equalW;

                foreach (var c in clamped)
                {
                    remainingWidth -= ((FrameworkElement)c).MinWidth;
                    remaining.Remove(c);
                }
            }

            return 0;
        }

        protected override Size ArrangeOverride(Size arrangeSize)
        {
            int count = InternalChildren.Count;
            if (count == 0) return arrangeSize;

            double equalW = ResolveEqualWidth(arrangeSize.Width);
            double totalW = InternalChildren
                .Cast<UIElement>()
                .Sum(c => Math.Max(equalW, c is FrameworkElement fe && fe.MinWidth > 0 ? fe.MinWidth : 0));

            double totalGap = arrangeSize.Width - totalW;
            double gap = Math.Min(totalGap / (count + 1), MaxGap);
            double x = (arrangeSize.Width - totalW - gap * (count - 1)) / 2;

            foreach (UIElement child in InternalChildren)
            {
                double minW = child is FrameworkElement fe && fe.MinWidth > 0 ? fe.MinWidth : 0;
                double w = Math.Max(equalW, minW);
                child.Arrange(new Rect(x, 0, w, arrangeSize.Height));
                x += w + gap;
            }

            return arrangeSize;
        }

        protected override Size MeasureOverride(Size availableSize)
        {
            if (InternalChildren.Count == 0)
                return availableSize;

            double equalW = ResolveEqualWidth(availableSize.Width);

            foreach (UIElement child in InternalChildren)
            {
                double minW = child is FrameworkElement fe && fe.MinWidth > 0 ? fe.MinWidth : 0;
                child.Measure(new Size(Math.Max(equalW, minW), availableSize.Height));
            }

            return availableSize;
        }
    }
}
