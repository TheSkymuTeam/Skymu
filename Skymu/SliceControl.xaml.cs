/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace Skymu
{
    public enum SpriteStackDirection
    {
        Vertical,
        Horizontal
    }

    public enum ButtonVisualState
    {
        Default,
        Hover,
        Pressed,
        Disabled
    }

    public partial class SliceControl : UserControl
    {
        private ButtonVisualState _visualState = ButtonVisualState.Default;
        private const double PressedTextOffsetY = 1.0;
        private DispatcherTimer _animationTimer;
        private int _currentAnimationFrame = 0;

        public SliceControl()
        {
            InitializeComponent();

            // Mouse state handling
            MouseEnter += OnMouseEnter;
            MouseLeave += OnMouseLeave;
            MouseLeftButtonDown += OnMouseDown;
            MouseLeftButtonUp += OnMouseUp;
            IsEnabledChanged += OnEnabledChanged;

            // Animation timer setup
            _animationTimer = new DispatcherTimer();
            _animationTimer.Tick += OnAnimationTick;
        }

        public ImageSource Source
        {
            get { return (ImageSource)GetValue(SourceProperty); }
            set { SetValue(SourceProperty, value); }
        }

        public static readonly DependencyProperty SourceProperty =
            DependencyProperty.Register(
                "Source",
                typeof(ImageSource),
                typeof(SliceControl),
                new PropertyMetadata(null, OnAnyPropertyChanged));

        public int ElementCount
        {
            get { return (int)GetValue(ElementCountProperty); }
            set { SetValue(ElementCountProperty, value); }
        }

        public static readonly DependencyProperty ElementCountProperty =
            DependencyProperty.Register(
                "ElementCount",
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(1, OnAnyPropertyChanged));

        public double SpriteSpacing
        {
            get { return (double)GetValue(SpriteSpacingProperty); }
            set { SetValue(SpriteSpacingProperty, value); }
        }

        public static readonly DependencyProperty SpriteSpacingProperty =
            DependencyProperty.Register(
                nameof(SpriteSpacing),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(0.0, OnAnyPropertyChanged));

        public SpriteStackDirection StackDirection
        {
            get { return (SpriteStackDirection)GetValue(StackDirectionProperty); }
            set { SetValue(StackDirectionProperty, value); }
        }

        public static readonly DependencyProperty StackDirectionProperty =
            DependencyProperty.Register(
                "StackDirection",
                typeof(SpriteStackDirection),
                typeof(SliceControl),
                new PropertyMetadata(SpriteStackDirection.Vertical, OnAnyPropertyChanged));

        public int DefaultIndex
        {
            get { return (int)GetValue(DefaultIndexProperty); }
            set { SetValue(DefaultIndexProperty, value); }
        }

        public static readonly DependencyProperty DefaultIndexProperty =
            DependencyProperty.Register(
                "DefaultIndex",
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int DisabledIndex
        {
            get { return (int)GetValue(DisabledIndexProperty); }
            set { SetValue(DisabledIndexProperty, value); }
        }

        public static readonly DependencyProperty DisabledIndexProperty =
            DependencyProperty.Register(
                "DisabledIndex",
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int HoverIndex
        {
            get { return (int)GetValue(HoverIndexProperty); }
            set { SetValue(HoverIndexProperty, value); }
        }

        public static readonly DependencyProperty HoverIndexProperty =
            DependencyProperty.Register(
                "HoverIndex",
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int PressedIndex
        {
            get { return (int)GetValue(PressedIndexProperty); }
            set { SetValue(PressedIndexProperty, value); }
        }

        public static readonly DependencyProperty PressedIndexProperty =
            DependencyProperty.Register(
                "PressedIndex",
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public bool IsAnimation
        {
            get { return (bool)GetValue(IsAnimationProperty); }
            set { SetValue(IsAnimationProperty, value); }
        }

        public static readonly DependencyProperty IsAnimationProperty =
            DependencyProperty.Register(
                nameof(IsAnimation),
                typeof(bool),
                typeof(SliceControl),
                new PropertyMetadata(false, OnAnimationPropertyChanged));

        public double AnimationFps
        {
            get { return (double)GetValue(AnimationFpsProperty); }
            set { SetValue(AnimationFpsProperty, value); }
        }

        public static readonly DependencyProperty AnimationFpsProperty =
            DependencyProperty.Register(
                nameof(AnimationFps),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(10.0, OnAnimationPropertyChanged));

        public string Text
        {
            get { return (string)GetValue(TextProperty); }
            set { SetValue(TextProperty, value); }
        }

        public static readonly DependencyProperty TextProperty =
            DependencyProperty.Register(
                nameof(Text),
                typeof(string),
                typeof(SliceControl),
                new PropertyMetadata(string.Empty, OnTextChanged));

        public FontFamily TextFont
        {
            get { return (FontFamily)GetValue(TextFontProperty); }
            set { SetValue(TextFontProperty, value); }
        }

        public static readonly DependencyProperty TextFontProperty =
            DependencyProperty.Register(
                nameof(TextFont),
                typeof(FontFamily),
                typeof(SliceControl),
                new PropertyMetadata(SystemFonts.MessageFontFamily, OnTextChanged));

        public FontWeight TextWeight
        {
            get { return (FontWeight)GetValue(TextWeightProperty); }
            set { SetValue(TextWeightProperty, value); }
        }

        public static readonly DependencyProperty TextWeightProperty =
            DependencyProperty.Register(
                nameof(TextWeight),
                typeof(FontWeight),
                typeof(SliceControl),
                new PropertyMetadata(FontWeights.Normal, OnTextChanged));

        public double LeftRightWidth
        {
            get { return (double)GetValue(LeftRightWidthProperty); }
            set { SetValue(LeftRightWidthProperty, value); }
        }

        public static readonly DependencyProperty LeftRightWidthProperty =
            DependencyProperty.Register(
                nameof(LeftRightWidth),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(32.0, OnAnyPropertyChanged));


        public FontStyle TextStyle
        {
            get { return (FontStyle)GetValue(TextStyleProperty); }
            set { SetValue(TextStyleProperty, value); }
        }

        public static readonly DependencyProperty TextStyleProperty =
            DependencyProperty.Register(
                nameof(TextStyle),
                typeof(FontStyle),
                typeof(SliceControl),
                new PropertyMetadata(FontStyles.Normal, OnTextChanged));

        public double TextSize
        {
            get { return (double)GetValue(TextSizeProperty); }
            set { SetValue(TextSizeProperty, value); }
        }

        public static readonly DependencyProperty TextSizeProperty =
            DependencyProperty.Register(
                nameof(TextSize),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(12.0, OnTextChanged));

        public Brush TextColor
        {
            get { return (Brush)GetValue(TextColorProperty); }
            set { SetValue(TextColorProperty, value); }
        }

        public static readonly DependencyProperty TextColorProperty =
            DependencyProperty.Register(
                nameof(TextColor),
                typeof(Brush),
                typeof(SliceControl),
                new PropertyMetadata(Brushes.Black, OnTextChanged));

        public HorizontalAlignment TextHorizontalAlignment
        {
            get { return (HorizontalAlignment)GetValue(TextHorizontalAlignmentProperty); }
            set { SetValue(TextHorizontalAlignmentProperty, value); }
        }

        public static readonly DependencyProperty TextHorizontalAlignmentProperty =
            DependencyProperty.Register(
                nameof(TextHorizontalAlignment),
                typeof(HorizontalAlignment),
                typeof(SliceControl),
                new PropertyMetadata(HorizontalAlignment.Left, OnTextChanged));

        public VerticalAlignment TextVerticalAlignment
            {
            get { return (VerticalAlignment)GetValue(TextVerticalAlignmentProperty); }
            set { SetValue(TextVerticalAlignmentProperty, value); }
        }

        public static readonly DependencyProperty TextVerticalAlignmentProperty =
            DependencyProperty.Register(
                nameof(TextVerticalAlignment),
                typeof(VerticalAlignment),
                typeof(SliceControl),
                new PropertyMetadata(VerticalAlignment.Center, OnTextChanged));

        public double TextStartPositionX
        {
            get { return (double)GetValue(TextStartPositionXProperty); }
            set { SetValue(TextStartPositionXProperty, value); }
        }

        public static readonly DependencyProperty TextStartPositionXProperty =
            DependencyProperty.Register(
                nameof(TextStartPositionX),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(0.0, OnTextChanged));

        public bool Slice
        {
            get { return (bool)GetValue(SliceProperty); }
            set { SetValue(SliceProperty, value); }
        }

        public static readonly DependencyProperty SliceProperty =
            DependencyProperty.Register(
                nameof(Slice),
                typeof(bool),
                typeof(SliceControl),
                new PropertyMetadata(true, OnAnyPropertyChanged));

        private void OnMouseEnter(object sender, MouseEventArgs e)
        {
            if (HoverIndex != -1)
            {
                SetState(ButtonVisualState.Hover);
            }
        }

        private void OnMouseLeave(object sender, MouseEventArgs e)
        {
            if (HoverIndex != -1)
            {
                SetState(ButtonVisualState.Default);
            }
        }

        private void OnMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (PressedIndex != -1)
            {
                SetState(ButtonVisualState.Pressed);
            }
        }

        private void OnMouseUp(object sender, MouseButtonEventArgs e)
        {
            if (PressedIndex != -1)
            {
                if (IsMouseOver && HoverIndex != -1)
                    SetState(ButtonVisualState.Hover);
                else
                    SetState(ButtonVisualState.Default);
            }
        }

        private void OnEnabledChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (!IsEnabled)
                SetState(ButtonVisualState.Disabled);
            else
                SetState(ButtonVisualState.Default);
        }

        public void SetState(ButtonVisualState state)
        {
            if (_visualState == state)
                return;

            _visualState = state;
            UpdateSlices();
            UpdateTextOffset();
        }

        private void UpdateTextOffset()
        {
            if (OverlayText == null)
                return;

            double yOffset = (_visualState == ButtonVisualState.Pressed) ? PressedTextOffsetY : 0.0;

            OverlayText.Margin = new Thickness(
                TextStartPositionX,
                yOffset,
                0,
                0);
        }

        private static void OnAnimationPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            ((SliceControl)d).UpdateAnimation();
        }

        private void UpdateAnimation()
        {
            if (IsAnimation)
            {
                if (AnimationFps > 0)
                {
                    _animationTimer.Interval = TimeSpan.FromSeconds(1.0 / AnimationFps);
                    _currentAnimationFrame = 0;
                    _animationTimer.Start();
                }
            }
            else
            {
                _animationTimer.Stop();
                UpdateSlices();
            }
        }

        private void OnAnimationTick(object sender, EventArgs e)
        {
            _currentAnimationFrame++;
            if (_currentAnimationFrame >= ElementCount)
            {
                _currentAnimationFrame = 0;
            }
            UpdateSlices();
        }

        private static void OnAnyPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            ((SliceControl)d).UpdateSlices();
        }

        private int GetCurrentIndex()
        {
            if (IsAnimation)
                return _currentAnimationFrame;

            if (_visualState == ButtonVisualState.Hover && HoverIndex != -1)
                return HoverIndex;

            if (_visualState == ButtonVisualState.Pressed && PressedIndex != -1)
                return PressedIndex;

            if (_visualState == ButtonVisualState.Disabled)
                return DisabledIndex;

            return DefaultIndex;
        }

        private Rect GetStateViewbox()
        {
            if (Source == null || ElementCount <= 0)
                return new Rect(0, 0, 1, 1);

            BitmapSource bmp = Source as BitmapSource;
            if (bmp == null)
                return new Rect(0, 0, 1, 1);

            int index = GetCurrentIndex();
            if (index < 0)
                index = 0;
            if (index >= ElementCount)
                index = ElementCount - 1;

            if (StackDirection == SpriteStackDirection.Vertical)
            {
                double spriteHeightPx = GetElementHeight();
                double totalHeightPx =
                    ElementCount * spriteHeightPx +
                    (ElementCount - 1) * SpriteSpacing;

                double yPx = index * (spriteHeightPx + SpriteSpacing);

                return new Rect(
                    0,
                    yPx / bmp.PixelHeight,
                    1,
                    spriteHeightPx / bmp.PixelHeight);
            }
            else
            {
                double spriteWidthPx =
                    (bmp.PixelWidth - (ElementCount - 1) * SpriteSpacing)
                    / ElementCount;

                double xPx = index * (spriteWidthPx + SpriteSpacing);

                return new Rect(
                    xPx / bmp.PixelWidth,
                    0,
                    spriteWidthPx / bmp.PixelWidth,
                    1);
            }
        }

        private double GetElementHeight()
        {
            BitmapSource bmp = Source as BitmapSource;
            if (bmp == null || ElementCount <= 0)
                return ActualHeight;

            if (StackDirection == SpriteStackDirection.Vertical)
            {
                double totalSpacing = (ElementCount - 1) * SpriteSpacing;
                return (bmp.PixelHeight - totalSpacing) / ElementCount;
            }
            else
            {
                return bmp.PixelHeight;
            }
        }

        private void UpdateUnsliced(BitmapSource bmp)
        {
            double elementHeight = GetElementHeight();

            LeftSlice.Visibility = Visibility.Collapsed;
            RightSlice.Visibility = Visibility.Collapsed;

            MiddleSlice.Visibility = Visibility.Visible;
            MiddleSlice.Width = Width;
            MiddleSlice.Height = elementHeight;

            Rect stateBox = GetStateViewbox();
            MiddleSlice.Fill = CreateBrush(stateBox, new Rect(0, 0, 1, 1));
        }

        private static void OnTextChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            ((SliceControl)d).UpdateText();
        }

        private void UpdateText()
        {
            if (OverlayText == null)
                return;

            OverlayText.Text = Text;
            OverlayText.FontFamily = TextFont;
            OverlayText.FontSize = TextSize;
            OverlayText.Foreground = TextColor;
            OverlayText.HorizontalAlignment = TextHorizontalAlignment;
            OverlayText.VerticalAlignment = TextVerticalAlignment;
            OverlayText.FontWeight = TextWeight;
            OverlayText.FontStyle = TextStyle;

            OverlayText.Margin = new Thickness(TextStartPositionX, 0, 0, 0);
        }

        private void UpdateSlices()
        {
            if (Source == null)
                return;

            BitmapSource bmp = Source as BitmapSource;
            if (bmp == null)
                return;

            if (!Slice)
            {
                UpdateUnsliced(bmp);
                return;
            }

            double elementHeight = GetElementHeight();
            double totalWidth = this.Width;

            double leftWidth = LeftRightWidth;
            double rightWidth = LeftRightWidth;

            double middleWidth = totalWidth - leftWidth - rightWidth;
            if (middleWidth < 0) middleWidth = 0;

            LeftSlice.Width = leftWidth;
            MiddleSlice.Width = middleWidth;
            RightSlice.Width = rightWidth;

            LeftSlice.Height = elementHeight;
            MiddleSlice.Height = elementHeight;
            RightSlice.Height = elementHeight;

            Rect stateBox = GetStateViewbox();
            LeftSlice.Fill = CreateBrush(stateBox, new Rect(0.0, 0, leftWidth / bmp.PixelWidth, 1));
            double middleRatio = 1.0 - (leftWidth + rightWidth) / bmp.PixelWidth;
            if (middleRatio < 0) middleRatio = 0;

            MiddleSlice.Fill = CreateBrush(stateBox, new Rect(leftWidth / bmp.PixelWidth, 0, middleRatio, 1));

            RightSlice.Fill = CreateBrush(stateBox, new Rect(1.0 - rightWidth / bmp.PixelWidth, 0, rightWidth / bmp.PixelWidth, 1));
        }

        private ImageBrush CreateBrush(Rect stateBox, Rect sliceBox)
        {
            ImageBrush brush = new ImageBrush(Source);
            brush.ViewboxUnits = BrushMappingMode.RelativeToBoundingBox;
            brush.Stretch = Stretch.Fill;
            brush.Viewbox = new Rect(
                stateBox.X + sliceBox.X * stateBox.Width,
                stateBox.Y + sliceBox.Y * stateBox.Height,
                sliceBox.Width * stateBox.Width,
                sliceBox.Height * stateBox.Height);

            return brush;
        }
    }
}