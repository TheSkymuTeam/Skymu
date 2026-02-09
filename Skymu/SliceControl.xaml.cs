/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
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
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace Skymu
{
    public enum SpriteStackDirection { Vertical, Horizontal }
    public enum ButtonVisualState { Default, Hover, Pressed, Disabled }

    public partial class SliceControl : UserControl
    {
        #region Constructor
        private ButtonVisualState _visualState = ButtonVisualState.Default;
        private DispatcherTimer _animationTimer;
        private int _currentAnimationFrame = 0;
        private readonly ImageBrush _leftBrush = new ImageBrush();
        private readonly ImageBrush _middleBrush = new ImageBrush();
        private readonly ImageBrush _rightBrush = new ImageBrush();

        private const double PressedTextOffsetY = 1.0;

        public SliceControl()
        {
            InitializeComponent();

            // Mouse events
            MouseEnter += (s, e) =>
            {
                if (!IsEnabled) return;
                if (HoverIndex != -1) SetStateInternal(ButtonVisualState.Hover);
            };

            MouseLeave += (s, e) =>
            {
                if (!IsEnabled) return;
                if (HoverIndex != -1) SetStateInternal(ButtonVisualState.Default);
            };

            MouseLeftButtonDown += (s, e) =>
            {
                if (!IsEnabled) return;

                if (PressedIndex != -1)
                {
                    if (IsRadioButton && _visualState == ButtonVisualState.Pressed) return;
                    SetStateInternal(ButtonVisualState.Pressed);
                }
            };

            MouseLeftButtonUp += (s, e) =>
            {
                if (!IsEnabled) return;

                if (PressedIndex != -1)
                {
                    var newState = (IsMouseOver && HoverIndex != -1)
                        ? ButtonVisualState.Hover
                        : ButtonVisualState.Default;

                    if (IsRadioButton && _visualState == ButtonVisualState.Pressed) return;
                    SetStateInternal(newState);
                }
            };

            IsEnabledChanged += (s, e) =>
            {
                IsHitTestVisible = IsEnabled;

                if (!IsEnabled)
                {
                    _animationTimer.Stop();
                    SetStateInternal(ButtonVisualState.Disabled);
                }
                else
                {
                    SetStateInternal(ButtonVisualState.Default);
                    UpdateAnimation();
                }
            };


            // Animation timer
            _animationTimer = new DispatcherTimer();
            _animationTimer.Tick += (s, e) =>
            {
                _currentAnimationFrame++;
                if (_currentAnimationFrame >= ElementCount)
                    _currentAnimationFrame = 0;

                UpdateSlices();
            };

            // Brush defaults
            _leftBrush.Stretch = Stretch.Fill;
            _leftBrush.ViewboxUnits = BrushMappingMode.RelativeToBoundingBox;

            _middleBrush.Stretch = Stretch.Fill;
            _middleBrush.ViewboxUnits = BrushMappingMode.RelativeToBoundingBox;

            _rightBrush.Stretch = Stretch.Fill;
            _rightBrush.ViewboxUnits = BrushMappingMode.RelativeToBoundingBox;

            Loaded += (s, e) =>
            {
                UpdateTextOffset();
                SetStateInternal(IsEnabled ? ButtonStateOnInit : ButtonVisualState.Disabled);
            };
        }
        #endregion

        #region Properties

        public ButtonVisualState ButtonStateOnInit
        {
            get { return (ButtonVisualState)GetValue(ButtonStateOnInitProperty); }
            set { SetValue(ButtonStateOnInitProperty, value); }
        }
        public static readonly DependencyProperty ButtonStateOnInitProperty =
            DependencyProperty.Register(nameof(ButtonStateOnInit), typeof(ButtonVisualState), typeof(SliceControl),
                new PropertyMetadata(ButtonVisualState.Default));

        public bool IsRadioButton
        {
            get { return (bool)GetValue(IsRadioButtonProperty); }
            set { SetValue(IsRadioButtonProperty, value); }
        }
        public static readonly DependencyProperty IsRadioButtonProperty =
            DependencyProperty.Register(nameof(IsRadioButton), typeof(bool), typeof(SliceControl),
                new PropertyMetadata(false));

        public ImageSource Source { get { return (ImageSource)GetValue(SourceProperty); } set { SetValue(SourceProperty, value); } }
        public static readonly DependencyProperty SourceProperty =
            DependencyProperty.Register("Source", typeof(ImageSource), typeof(SliceControl),
                new PropertyMetadata(null, OnAnyPropertyChanged));

        public int ElementCount { get { return (int)GetValue(ElementCountProperty); } set { SetValue(ElementCountProperty, value); } }
        public static readonly DependencyProperty ElementCountProperty =
            DependencyProperty.Register("ElementCount", typeof(int), typeof(SliceControl),
                new PropertyMetadata(1, OnAnyPropertyChanged));

        public double SpriteSpacing { get { return (double)GetValue(SpriteSpacingProperty); } set { SetValue(SpriteSpacingProperty, value); } }
        public static readonly DependencyProperty SpriteSpacingProperty =
            DependencyProperty.Register(nameof(SpriteSpacing), typeof(double), typeof(SliceControl),
                new PropertyMetadata(0.0, OnAnyPropertyChanged));

        public SpriteStackDirection StackDirection { get { return (SpriteStackDirection)GetValue(StackDirectionProperty); } set { SetValue(StackDirectionProperty, value); } }
        public static readonly DependencyProperty StackDirectionProperty =
            DependencyProperty.Register("StackDirection", typeof(SpriteStackDirection), typeof(SliceControl),
                new PropertyMetadata(SpriteStackDirection.Vertical, OnAnyPropertyChanged));

        public int DefaultIndex { get { return (int)GetValue(DefaultIndexProperty); } set { SetValue(DefaultIndexProperty, value); } }
        public static readonly DependencyProperty DefaultIndexProperty =
            DependencyProperty.Register("DefaultIndex", typeof(int), typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int DisabledIndex { get { return (int)GetValue(DisabledIndexProperty); } set { SetValue(DisabledIndexProperty, value); } }
        public static readonly DependencyProperty DisabledIndexProperty =
            DependencyProperty.Register("DisabledIndex", typeof(int), typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int HoverIndex { get { return (int)GetValue(HoverIndexProperty); } set { SetValue(HoverIndexProperty, value); } }
        public static readonly DependencyProperty HoverIndexProperty =
            DependencyProperty.Register("HoverIndex", typeof(int), typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public int PressedIndex { get { return (int)GetValue(PressedIndexProperty); } set { SetValue(PressedIndexProperty, value); } }
        public static readonly DependencyProperty PressedIndexProperty =
            DependencyProperty.Register("PressedIndex", typeof(int), typeof(SliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public bool IsAnimation { get { return (bool)GetValue(IsAnimationProperty); } set { SetValue(IsAnimationProperty, value); } }
        public static readonly DependencyProperty IsAnimationProperty =
            DependencyProperty.Register(nameof(IsAnimation), typeof(bool), typeof(SliceControl),
                new PropertyMetadata(false, OnAnimationPropertyChanged));

        public double AnimationFps { get { return (double)GetValue(AnimationFpsProperty); } set { SetValue(AnimationFpsProperty, value); } }
        public static readonly DependencyProperty AnimationFpsProperty =
            DependencyProperty.Register(nameof(AnimationFps), typeof(double), typeof(SliceControl),
                new PropertyMetadata(10.0, OnAnimationPropertyChanged));

        public string Text { get { return (string)GetValue(TextProperty); } set { SetValue(TextProperty, value); } }
        public static readonly DependencyProperty TextProperty =
            DependencyProperty.Register(nameof(Text), typeof(string), typeof(SliceControl),
                new PropertyMetadata(string.Empty, OnTextChanged));

        public FontFamily TextFont { get { return (FontFamily)GetValue(TextFontProperty); } set { SetValue(TextFontProperty, value); } }
        public static readonly DependencyProperty TextFontProperty =
            DependencyProperty.Register(nameof(TextFont), typeof(FontFamily), typeof(SliceControl),
                new PropertyMetadata(SystemFonts.MessageFontFamily, OnTextChanged));

        public FontWeight TextWeight { get { return (FontWeight)GetValue(TextWeightProperty); } set { SetValue(TextWeightProperty, value); } }
        public static readonly DependencyProperty TextWeightProperty =
            DependencyProperty.Register(nameof(TextWeight), typeof(FontWeight), typeof(SliceControl),
                new PropertyMetadata(FontWeights.Normal, OnTextChanged));

        public double LeftRightWidth { get { return (double)GetValue(LeftRightWidthProperty); } set { SetValue(LeftRightWidthProperty, value); } }
        public static readonly DependencyProperty LeftRightWidthProperty =
            DependencyProperty.Register(nameof(LeftRightWidth), typeof(double), typeof(SliceControl),
                new PropertyMetadata(32.0, OnAnyPropertyChanged));

        public FontStyle TextStyle { get { return (FontStyle)GetValue(TextStyleProperty); } set { SetValue(TextStyleProperty, value); } }
        public static readonly DependencyProperty TextStyleProperty =
            DependencyProperty.Register(nameof(TextStyle), typeof(FontStyle), typeof(SliceControl),
                new PropertyMetadata(FontStyles.Normal, OnTextChanged));

        public double TextSize { get { return (double)GetValue(TextSizeProperty); } set { SetValue(TextSizeProperty, value); } }
        public static readonly DependencyProperty TextSizeProperty =
            DependencyProperty.Register(nameof(TextSize), typeof(double), typeof(SliceControl),
                new PropertyMetadata(12.0, OnTextChanged));

        public Brush TextColor { get { return (Brush)GetValue(TextColorProperty); } set { SetValue(TextColorProperty, value); } }
        public static readonly DependencyProperty TextColorProperty =
            DependencyProperty.Register(nameof(TextColor), typeof(Brush), typeof(SliceControl),
                new PropertyMetadata(Brushes.Black, OnTextChanged));

        public HorizontalAlignment TextHorizontalAlignment { get { return (HorizontalAlignment)GetValue(TextHorizontalAlignmentProperty); } set { SetValue(TextHorizontalAlignmentProperty, value); } }
        public static readonly DependencyProperty TextHorizontalAlignmentProperty =
            DependencyProperty.Register(nameof(TextHorizontalAlignment), typeof(HorizontalAlignment), typeof(SliceControl),
                new PropertyMetadata(HorizontalAlignment.Left, OnTextChanged));

        public VerticalAlignment TextVerticalAlignment { get { return (VerticalAlignment)GetValue(TextVerticalAlignmentProperty); } set { SetValue(TextVerticalAlignmentProperty, value); } }
        public static readonly DependencyProperty TextVerticalAlignmentProperty =
            DependencyProperty.Register(nameof(TextVerticalAlignment), typeof(VerticalAlignment), typeof(SliceControl),
                new PropertyMetadata(VerticalAlignment.Center, OnTextChanged));

        public double TextStartPositionX { get { return (double)GetValue(TextStartPositionXProperty); } set { SetValue(TextStartPositionXProperty, value); } }
        public static readonly DependencyProperty TextStartPositionXProperty =
            DependencyProperty.Register(nameof(TextStartPositionX), typeof(double), typeof(SliceControl),
                new PropertyMetadata(0.0, OnTextChanged));

        public bool Slice { get { return (bool)GetValue(SliceProperty); } set { SetValue(SliceProperty, value); } }
        public static readonly DependencyProperty SliceProperty =
            DependencyProperty.Register(nameof(Slice), typeof(bool), typeof(SliceControl),
                new PropertyMetadata(true, OnAnyPropertyChanged));

        #endregion

        #region Methods

        private void SetStateInternal(ButtonVisualState state)
        {
            // Allow exiting Disabled ONLY if control is enabled
            if (_visualState == ButtonVisualState.Disabled &&
                state != ButtonVisualState.Disabled &&
                !IsEnabled)
                return;

            if (IsRadioButton &&
                _visualState == ButtonVisualState.Pressed &&
                state != ButtonVisualState.Disabled)
                return;

            if (_visualState == state)
                return;

            _visualState = state;
            UpdateSlices();
            UpdateTextOffset();
        }

        public void SetState(ButtonVisualState state)
        {
            _visualState = state;
            UpdateSlices();
            UpdateTextOffset();
        }

        public ButtonVisualState GetState()
        {
            return _visualState;
        }


        private void UpdateTextOffset()
        {
            if (OverlayText is null) return;
            OverlayText.Margin = new Thickness(
                TextStartPositionX,
                _visualState == ButtonVisualState.Pressed ? PressedTextOffsetY : 0.0,
                0,
                0);
        }

        private static void OnAnimationPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
            => ((SliceControl)d).UpdateAnimation();

        private void UpdateAnimation()
        {
            _animationTimer.Stop();

            if (IsEnabled && IsAnimation && AnimationFps > 0)
            {
                _currentAnimationFrame = 0;
                _animationTimer.Interval = TimeSpan.FromSeconds(1.0 / AnimationFps);
                _animationTimer.Start();
            }

            UpdateSlices();
        }

        private static void OnAnyPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
            => ((SliceControl)d).UpdateSlices();

        private static void OnTextChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
            => ((SliceControl)d).UpdateText();

        private void UpdateText()
        {
            if (OverlayText is null) return;

            OverlayText.Text = Text;
            OverlayText.FontFamily = TextFont;
            OverlayText.FontSize = TextSize;
            OverlayText.Foreground = TextColor;
            OverlayText.HorizontalAlignment = TextHorizontalAlignment;
            OverlayText.VerticalAlignment = TextVerticalAlignment;
            OverlayText.FontWeight = TextWeight;
            OverlayText.FontStyle = TextStyle;
        }

        private int GetCurrentIndex()
        {
            if (!IsEnabled || _visualState == ButtonVisualState.Disabled)
                return DisabledIndex;

            if (IsAnimation)
                return _currentAnimationFrame;

            if (_visualState == ButtonVisualState.Hover && HoverIndex != -1)
                return HoverIndex;

            if (_visualState == ButtonVisualState.Pressed && PressedIndex != -1)
                return PressedIndex;

            return DefaultIndex;
        }

        private Rect GetStateViewbox()
        {
            var bmp = Source as BitmapSource;
            if (bmp is null || ElementCount <= 0)
                return new Rect(0, 0, 1, 1);

            int index = GetCurrentIndex();
            if (index < 0) index = 0;
            if (index >= ElementCount) index = ElementCount - 1;

            if (StackDirection == SpriteStackDirection.Vertical)
            {
                double spriteHeightPx = GetElementHeight();
                double yPx = index * (spriteHeightPx + SpriteSpacing);
                return new Rect(0, yPx / bmp.PixelHeight, 1, spriteHeightPx / bmp.PixelHeight);
            }
            else
            {
                double spriteWidthPx = (bmp.PixelWidth - (ElementCount - 1) * SpriteSpacing) / ElementCount;
                double xPx = index * (spriteWidthPx + SpriteSpacing);
                return new Rect(xPx / bmp.PixelWidth, 0, spriteWidthPx / bmp.PixelWidth, 1);
            }
        }

        private double GetElementHeight()
        {
            var bmp = Source as BitmapSource;
            if (bmp is null || ElementCount <= 0)
                return ActualHeight;

            return StackDirection == SpriteStackDirection.Vertical
                ? (bmp.PixelHeight - (ElementCount - 1) * SpriteSpacing) / ElementCount
                : bmp.PixelHeight;
        }


        private void UpdateSlices()
        {
            var bmp = Source as BitmapSource;
            if (bmp is null) return;

            if (!Slice)
            {
                MiddleSlice.Visibility = Visibility.Visible;
                LeftSlice.Visibility = RightSlice.Visibility = Visibility.Collapsed;

                MiddleSlice.Width = Width;
                MiddleSlice.Height = GetElementHeight();

                _middleBrush.ImageSource = Source;
                _middleBrush.Viewbox = GetStateViewbox();
                MiddleSlice.Fill = _middleBrush;

                return;
            }

            double elementHeight = GetElementHeight();
            double leftWidth = LeftRightWidth;
            double rightWidth = LeftRightWidth;
            double middleWidth = Math.Max(0, Width - leftWidth - rightWidth);

            LeftSlice.Width = leftWidth;
            MiddleSlice.Width = middleWidth;
            RightSlice.Width = rightWidth;

            LeftSlice.Height = MiddleSlice.Height = RightSlice.Height = elementHeight;

            LeftSlice.Visibility = MiddleSlice.Visibility = RightSlice.Visibility = Visibility.Visible;

            var stateBox = GetStateViewbox();

            _leftBrush.ImageSource = Source;
            _leftBrush.Viewbox = new Rect(
                stateBox.X,
                stateBox.Y,
                Math.Min(leftWidth / bmp.PixelWidth * stateBox.Width, stateBox.Width),
                stateBox.Height);
            LeftSlice.Fill = _leftBrush;

            _middleBrush.ImageSource = Source;
            _middleBrush.Viewbox = new Rect(
                stateBox.X + leftWidth / bmp.PixelWidth * stateBox.Width,
                stateBox.Y,
                Math.Max(0, stateBox.Width - (leftWidth + rightWidth) / bmp.PixelWidth * stateBox.Width),
                stateBox.Height);
            MiddleSlice.Fill = _middleBrush;

            _rightBrush.ImageSource = Source;
            _rightBrush.Viewbox = new Rect(
                stateBox.X + (stateBox.Width - rightWidth / bmp.PixelWidth * stateBox.Width),
                stateBox.Y,
                Math.Min(rightWidth / bmp.PixelWidth * stateBox.Width, stateBox.Width),
                stateBox.Height);
            RightSlice.Fill = _rightBrush;
        }

        #endregion
    }
}
