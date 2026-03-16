/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using System.Windows.Shapes;
using System.Windows.Media.Animation;

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
        #region Constructor
        private ButtonVisualState _visualState = ButtonVisualState.Default;
        private static DispatcherTimer _sharedAnimationTimer;
        private static HashSet<SliceControl> _animatingControls = new HashSet<SliceControl>();
        private int _currentAnimationFrame = 0;
        private double _frameAccumulator = 0;
        private Storyboard _fadeStoryboard;
        private ButtonVisualState _fadeTargetState;

        private ImageBrush _leftBrush;
        private ImageBrush _middleBrush;
        private ImageBrush _rightBrush;

        private ImageBrush _topLeftBrush;
        private ImageBrush _topMidBrush;
        private ImageBrush _topRightBrush;

        private ImageBrush _botLeftBrush;
        private ImageBrush _botMidBrush;
        private ImageBrush _botRightBrush;

        private ImageBrush _overlayLeftBrush; // overlay currently only supported in 3 slice mode
        private ImageBrush _overlayMidBrush;
        private ImageBrush _overlayRightBrush;

        private const double PressedTextOffsetY = 1.0;

        public SliceControl()
        {
            InitializeComponent();

            // Mouse events
            MouseEnter += (s, e) =>
            {
                if (!IsEnabled)
                    return;
                if (HoverIndex != -1)
                    SetStateInternal(ButtonVisualState.Hover);
            };

            MouseLeave += (s, e) =>
            {
                if (!IsEnabled) return;
                if (IsRadioButton && _visualState == ButtonVisualState.Pressed) return;
                SetStateInternal(ButtonVisualState.Default);
            };

            MouseLeftButtonDown += (s, e) =>
            {
                if (!IsEnabled)
                    return;

                if (PressedIndex != -1)
                {
                    if (IsRadioButton && _visualState == ButtonVisualState.Pressed)
                        return;
                    SetStateInternal(ButtonVisualState.Pressed);
                }
            };

            MouseLeftButtonUp += (s, e) =>
            {
                if (!IsEnabled)
                    return;

                if (PressedIndex != -1)
                {
                    var newState =
                        (IsMouseOver && HoverIndex != -1)
                            ? ButtonVisualState.Hover
                            : ButtonVisualState.Default;

                    if (IsRadioButton && _visualState == ButtonVisualState.Pressed)
                        return;
                    SetStateInternal(newState);
                }
            };

            IsEnabledChanged += (s, e) =>
            {
                UpdateHitTestState();

                if (!IsEnabled)
                {
                    _animatingControls.Remove(this);
                    if (_animatingControls.Count == 0)
                        _sharedAnimationTimer?.Stop();
                    SetStateInternal(ButtonVisualState.Disabled);
                }
                else
                {
                    SetStateInternal(ButtonVisualState.Default);
                    UpdateAnimation();
                }
            };

            // Animation timer
            if (_sharedAnimationTimer == null)
            {
                _sharedAnimationTimer = new DispatcherTimer(DispatcherPriority.Render);
                _sharedAnimationTimer.Interval = TimeSpan.FromMilliseconds(16.67); // 60 FPS base tick rate
                _sharedAnimationTimer.Tick += (s, e) =>
                {
                    double deltaTime = 16.67 / 1000.0;

                    foreach (var control in _animatingControls)
                    {
                        if (control.AnimationFps <= 0)
                            continue;

                        control._frameAccumulator += deltaTime * control.AnimationFps;

                        if (control._frameAccumulator >= 1.0)
                        {
                            int framesToAdvance = (int)control._frameAccumulator;
                            control._frameAccumulator -= framesToAdvance;

                            control._currentAnimationFrame += framesToAdvance;
                            if (control._currentAnimationFrame >= control.ElementCount)
                                control._currentAnimationFrame %= control.ElementCount;

                            if (control.SliceMode == 0) control._middleBrush.Viewbox = control.GetStateViewbox();
                            else control.UpdateSlices();
                        }
                    }
                };
            }

            Loaded += (s, e) =>
            {
                UpdateHitTestState();
                UpdateTextOffset();
                SetStateInternal(IsEnabled ? ButtonStateOnInit : ButtonVisualState.Disabled);
                UpdateAnimation();
            };

            Unloaded += (s, e) =>
            {
                _animatingControls.Remove(this);
                if (_animatingControls.Count == 0)
                    _sharedAnimationTimer?.Stop();
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
            DependencyProperty.Register(
                nameof(ButtonStateOnInit),
                typeof(ButtonVisualState),
                typeof(SliceControl),
                new PropertyMetadata(ButtonVisualState.Default)
            );

        public bool IsRadioButton
        {
            get { return (bool)GetValue(IsRadioButtonProperty); }
            set { SetValue(IsRadioButtonProperty, value); }
        }
        public static readonly DependencyProperty IsRadioButtonProperty =
            DependencyProperty.Register(
                nameof(IsRadioButton),
                typeof(bool),
                typeof(SliceControl),
                new PropertyMetadata(false)
            );

        public bool Interactive
        {
            get { return (bool)GetValue(InteractiveProperty); }
            set { SetValue(InteractiveProperty, value); }
        }

        public static readonly DependencyProperty InteractiveProperty = DependencyProperty.Register(
    nameof(Interactive),
    typeof(bool),
    typeof(SliceControl),
    new PropertyMetadata(true, OnInteractiveChanged)
);

        private static void OnInteractiveChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
    => ((SliceControl)d).UpdateHitTestState();

        public bool HoverTransition
        {
            get { return (bool)GetValue(HoverTransitionProperty); }
            set { SetValue(HoverTransitionProperty, value); }
        }
        public static readonly DependencyProperty HoverTransitionProperty = DependencyProperty.Register(
            nameof(HoverTransition),
            typeof(bool),
            typeof(SliceControl),
            new PropertyMetadata(true)
        );

        public ImageSource Source
        {
            get { return (ImageSource)GetValue(SourceProperty); }
            set { SetValue(SourceProperty, value); }
        }
        public static readonly DependencyProperty SourceProperty = DependencyProperty.Register(
            "Source",
            typeof(ImageSource),
            typeof(SliceControl),
            new PropertyMetadata(null, OnAnyPropertyChanged)
        );

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
                new PropertyMetadata(1, OnAnyPropertyChanged)
            );

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
                new PropertyMetadata(0.0, OnAnyPropertyChanged)
            );

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
                new PropertyMetadata(SpriteStackDirection.Vertical, OnAnyPropertyChanged)
            );

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
                new PropertyMetadata(0, OnAnyPropertyChanged)
            );

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
                new PropertyMetadata(0, OnAnyPropertyChanged)
            );

        public int HoverIndex
        {
            get { return (int)GetValue(HoverIndexProperty); }
            set { SetValue(HoverIndexProperty, value); }
        }
        public static readonly DependencyProperty HoverIndexProperty = DependencyProperty.Register(
            "HoverIndex",
            typeof(int),
            typeof(SliceControl),
            new PropertyMetadata(0, OnAnyPropertyChanged)
        );

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
                new PropertyMetadata(0, OnAnyPropertyChanged)
            );

        public bool IsAnimation
        {
            get { return (bool)GetValue(IsAnimationProperty); }
            set { SetValue(IsAnimationProperty, value); }
        }
        public static readonly DependencyProperty IsAnimationProperty = DependencyProperty.Register(
            nameof(IsAnimation),
            typeof(bool),
            typeof(SliceControl),
            new PropertyMetadata(false, OnAnimationPropertyChanged)
        );

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
                new PropertyMetadata(30.0, OnAnimationPropertyChanged)
            );

        public string Text
        {
            get { return (string)GetValue(TextProperty); }
            set { SetValue(TextProperty, value); }
        }
        public static readonly DependencyProperty TextProperty = DependencyProperty.Register(
            nameof(Text),
            typeof(string),
            typeof(SliceControl),
            new PropertyMetadata(string.Empty, OnTextChanged)
        );

        public FontFamily TextFont
        {
            get { return (FontFamily)GetValue(TextFontProperty); }
            set { SetValue(TextFontProperty, value); }
        }
        public static readonly DependencyProperty TextFontProperty = DependencyProperty.Register(
            nameof(TextFont),
            typeof(FontFamily),
            typeof(SliceControl),
            new PropertyMetadata(SystemFonts.MessageFontFamily, OnTextChanged)
        );

        public FontWeight TextWeight
        {
            get { return (FontWeight)GetValue(TextWeightProperty); }
            set { SetValue(TextWeightProperty, value); }
        }
        public static readonly DependencyProperty TextWeightProperty = DependencyProperty.Register(
            nameof(TextWeight),
            typeof(FontWeight),
            typeof(SliceControl),
            new PropertyMetadata(FontWeights.Normal, OnTextChanged)
        );

        public double LeftWidth
        {
            get { return (double)GetValue(LeftWidthProperty); }
            set { SetValue(LeftWidthProperty, value); }
        }
        public static readonly DependencyProperty LeftWidthProperty = DependencyProperty.Register(
            nameof(LeftWidth),
            typeof(double),
            typeof(SliceControl),
            new PropertyMetadata(32.0, OnAnyPropertyChanged)
        );

        public double RightWidth
        {
            get { return (double)GetValue(RightWidthProperty); }
            set { SetValue(RightWidthProperty, value); }
        }
        public static readonly DependencyProperty RightWidthProperty = DependencyProperty.Register(
            nameof(RightWidth),
            typeof(double),
            typeof(SliceControl),
            new PropertyMetadata(32.0, OnAnyPropertyChanged)
        );

        public double TopHeight
        {
            get { return (double)GetValue(TopHeightProperty); }
            set { SetValue(TopHeightProperty, value); }
        }
        public static readonly DependencyProperty TopHeightProperty = DependencyProperty.Register(
            nameof(TopHeight),
            typeof(double),
            typeof(SliceControl),
            new PropertyMetadata(32.0, OnAnyPropertyChanged)
        );

        public double BottomHeight
        {
            get { return (double)GetValue(BottomHeightProperty); }
            set { SetValue(BottomHeightProperty, value); }
        }
        public static readonly DependencyProperty BottomHeightProperty =
            DependencyProperty.Register(
                nameof(BottomHeight),
                typeof(double),
                typeof(SliceControl),
                new PropertyMetadata(32.0, OnAnyPropertyChanged)
            );

        public FontStyle TextStyle
        {
            get { return (FontStyle)GetValue(TextStyleProperty); }
            set { SetValue(TextStyleProperty, value); }
        }
        public static readonly DependencyProperty TextStyleProperty = DependencyProperty.Register(
            nameof(TextStyle),
            typeof(FontStyle),
            typeof(SliceControl),
            new PropertyMetadata(FontStyles.Normal, OnTextChanged)
        );

        public double TextSize
        {
            get { return (double)GetValue(TextSizeProperty); }
            set { SetValue(TextSizeProperty, value); }
        }
        public static readonly DependencyProperty TextSizeProperty = DependencyProperty.Register(
            nameof(TextSize),
            typeof(double),
            typeof(SliceControl),
            new PropertyMetadata(12.0, OnTextChanged)
        );

        public Brush TextColor
        {
            get { return (Brush)GetValue(TextColorProperty); }
            set { SetValue(TextColorProperty, value); }
        }
        public static readonly DependencyProperty TextColorProperty = DependencyProperty.Register(
            nameof(TextColor),
            typeof(Brush),
            typeof(SliceControl),
            new PropertyMetadata(Brushes.Black, OnTextChanged)
        );

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
                new PropertyMetadata(HorizontalAlignment.Left, OnTextChanged)
            );

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
                new PropertyMetadata(VerticalAlignment.Center, OnTextChanged)
            );

        public int TextLeftMargin
        {
            get { return (int)GetValue(TextLeftMarginProperty); }
            set { SetValue(TextLeftMarginProperty, value); }
        }
        public static readonly DependencyProperty TextLeftMarginProperty =
            DependencyProperty.Register(
                nameof(TextLeftMargin),
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(0, OnTextChanged)
            );

        public int TextRightMargin
        {
            get { return (int)GetValue(TextRightMarginProperty); }
            set { SetValue(TextRightMarginProperty, value); }
        }
        public static readonly DependencyProperty TextRightMarginProperty =
            DependencyProperty.Register(
                nameof(TextRightMargin),
                typeof(int),
                typeof(SliceControl),
                new PropertyMetadata(8, OnTextChanged)
            );

        public int SliceMode
        {
            get { return (int)GetValue(SliceModeProperty); }
            set { SetValue(SliceModeProperty, value); }
        }
        public static readonly DependencyProperty SliceModeProperty = DependencyProperty.Register(
            nameof(SliceMode),
            typeof(int),
            typeof(SliceControl),
            new PropertyMetadata(1, OnAnyPropertyChanged)
        );

        #endregion

        #region Methods

        private void SetStateInternal(ButtonVisualState state)
        {
            if (_visualState == ButtonVisualState.Disabled && state != ButtonVisualState.Disabled && !IsEnabled)
                return;

            if (IsRadioButton && _visualState == ButtonVisualState.Pressed && state != ButtonVisualState.Disabled)
                return;

            ButtonVisualState effectiveState = _fadeStoryboard != null ? _fadeTargetState : _visualState;

            if (effectiveState == state) return;

            bool shouldFade =
    HoverTransition
    && !IsAnimation
    && HoverIndex != DefaultIndex
    && (
        state == ButtonVisualState.Hover
        || (state == ButtonVisualState.Default && _visualState == ButtonVisualState.Hover)
    );

            if (shouldFade)
                BeginFadeTransition(state);
            else
            {
                AbortFade();
                SetState(state);
            }
        }

        private void BeginFadeTransition(ButtonVisualState targetState)
        {
            double currentOpacity = OverlayMiddle.Opacity;
            bool wasReversing = _fadeStoryboard != null;

            var sb = _fadeStoryboard;
            _fadeStoryboard = null;
            sb?.Stop();

            _fadeTargetState = targetState;

            if (_overlayLeftBrush == null) _overlayLeftBrush = MakeBrush();
            if (_overlayMidBrush == null) _overlayMidBrush = MakeBrush();
            if (_overlayRightBrush == null) _overlayRightBrush = MakeBrush();

            // Paint the OLD state onto the overlay (was: targetState)
            PaintOverlay(_visualState);
            SyncOverlayLayout();

            // Snap the base to the target state immediately
            SetState(targetState);

            // When reversing mid-animation, pick up from wherever the overlay currently is
            double fromOpacity = wasReversing ? currentOpacity : 1.0;
            double toOpacity = 0.0;

            double fraction = Math.Abs(toOpacity - fromOpacity);
            var duration = TimeSpan.FromMilliseconds(150 * fraction);

            var animation = new DoubleAnimation
            {
                From = fromOpacity,
                To = toOpacity,
                Duration = new Duration(duration),
                EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut },
                FillBehavior = FillBehavior.Stop
            };

            var newSb = new Storyboard();
            _fadeStoryboard = newSb;

            foreach (var rect in new[] { OverlayLeft, OverlayMiddle, OverlayRight })
            {
                if (rect.Visibility != Visibility.Visible) continue;
                var anim = animation.Clone();
                Storyboard.SetTarget(anim, rect);
                Storyboard.SetTargetProperty(anim, new PropertyPath(UIElement.OpacityProperty));
                newSb.Children.Add(anim);
            }

            newSb.Completed += (s, e) =>
            {
                if (_fadeStoryboard != newSb) return;
                OverlayLeft.Opacity = OverlayMiddle.Opacity = OverlayRight.Opacity = 0;
                _fadeStoryboard = null;
                // No SetState call needed here — base was already set above
            };

            newSb.Begin();
        }

        private void AbortFade()
        {
            if (_fadeStoryboard == null)
                return;
            _fadeStoryboard.Stop();
            _fadeStoryboard = null;
            OverlayLeft.Opacity = OverlayMiddle.Opacity = OverlayRight.Opacity = 0;
        }

        private void PaintOverlay(ButtonVisualState targetState)
        {
            var bmp = Source as BitmapSource;
            if (bmp == null)
                return;

            // spoof
            var saved = _visualState;
            _visualState = targetState;
            var stateBox = GetStateViewbox();
            _visualState = saved;

            if (SliceMode == 0)
            {
                if (_overlayMidBrush == null) _overlayMidBrush = MakeBrush();
                ApplyBrush(_overlayMidBrush, OverlayMiddle, stateBox.X, stateBox.Y, stateBox.Width, stateBox.Height);
                return;
            }

            double leftW = LeftWidth;
            double rightW = RightWidth;
            double leftWRel = leftW / bmp.PixelWidth * stateBox.Width;
            double rightWRel = rightW / bmp.PixelWidth * stateBox.Width;
            double midWRel = Math.Max(0, stateBox.Width - leftWRel - rightWRel);

            ApplyBrush(
                _overlayLeftBrush,
                OverlayLeft,
                stateBox.X,
                stateBox.Y,
                leftWRel,
                stateBox.Height
            );
            ApplyBrush(
                _overlayMidBrush,
                OverlayMiddle,
                stateBox.X + leftWRel,
                stateBox.Y,
                midWRel,
                stateBox.Height
            );
            ApplyBrush(
                _overlayRightBrush,
                OverlayRight,
                stateBox.X + leftWRel + midWRel,
                stateBox.Y,
                rightWRel,
                stateBox.Height
            );
        }

        private void SyncOverlayLayout()
        {                
            OverlayMiddle.Width = MiddleSlice.ActualWidth;
            OverlayMiddle.Height = MiddleSlice.ActualHeight;
            OverlayMiddle.Visibility = MiddleSlice.Visibility;

            if (SliceMode > 0)
            {

                OverlayLeft.Width = LeftSlice.ActualWidth;
                OverlayLeft.Height = LeftSlice.ActualHeight;
                OverlayRight.Width = RightSlice.ActualWidth;
                OverlayRight.Height = RightSlice.ActualHeight;
                OverlayLeft.Visibility = LeftSlice.Visibility;
                OverlayRight.Visibility = RightSlice.Visibility;
            }     
        }

        public void UpdateHitTestState()
        {
            IsHitTestVisible =
                IsEnabled
                && Interactive
                && !(IsRadioButton && _visualState == ButtonVisualState.Pressed);
        }

        public void SetState(ButtonVisualState state)
        {
            _visualState = state;
            UpdateHitTestState();
            UpdateSlices();
            UpdateTextOffset();
        }

        public ButtonVisualState GetState()
        {
            return _visualState;
        }

        private void UpdateTextOffset()
        {
            if (OverlayText == null)
                return;
            OverlayText.Margin = new Thickness(
                TextLeftMargin,
                _visualState == ButtonVisualState.Pressed ? PressedTextOffsetY : 0.0,
                TextRightMargin,
                0
            );
        }

        private static void OnAnimationPropertyChanged(
            DependencyObject d,
            DependencyPropertyChangedEventArgs e
        ) => ((SliceControl)d).UpdateAnimation();

        private void UpdateAnimation()
        {
            _animatingControls.Remove(this);

            if (IsEnabled && IsAnimation && AnimationFps > 0)
            {
                _currentAnimationFrame = 0;
                _frameAccumulator = 0;
                _animatingControls.Add(this);

                if (!_sharedAnimationTimer.IsEnabled)
                    _sharedAnimationTimer.Start();
            }
            else if (_animatingControls.Count == 0)
            {
                _sharedAnimationTimer?.Stop();
            }

            UpdateSlices();
        }

        private static void OnAnyPropertyChanged(
            DependencyObject d,
            DependencyPropertyChangedEventArgs e
        ) => ((SliceControl)d).UpdateSlices();

        private static void OnTextChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var control = (SliceControl)d;
            control.UpdateText();
            control.UpdateTextOffset();
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
        }

        private static ImageBrush MakeBrush()
        {
            return new ImageBrush
            {
                Stretch = Stretch.Fill,
                ViewboxUnits = BrushMappingMode.RelativeToBoundingBox
            };
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
            if (bmp == null || ElementCount <= 0)
                return new Rect(0, 0, 1, 1);

            int index = GetCurrentIndex();
            if (index < 0)
                index = 0;
            if (index >= ElementCount)
                index = ElementCount - 1;

            if (StackDirection == SpriteStackDirection.Vertical)
            {
                double spriteHeightPx = GetElementHeight();
                double yPx = index * (spriteHeightPx + SpriteSpacing);
                return new Rect(0, yPx / bmp.PixelHeight, 1, spriteHeightPx / bmp.PixelHeight);
            }
            else
            {
                double spriteWidthPx =
                    (bmp.PixelWidth - (ElementCount - 1) * SpriteSpacing) / ElementCount;
                double xPx = index * (spriteWidthPx + SpriteSpacing);
                return new Rect(xPx / bmp.PixelWidth, 0, spriteWidthPx / bmp.PixelWidth, 1);
            }
        }

        private double GetElementHeight()
        {
            var bmp = Source as BitmapSource;
            if (bmp == null || ElementCount <= 0)
                return ActualHeight;

            return StackDirection == SpriteStackDirection.Vertical
              ? (bmp.PixelHeight - (ElementCount - 1) * SpriteSpacing) / ElementCount
              : bmp.PixelHeight;
        }

        private void UpdateSlices()
        {
            var bmp = Source as BitmapSource;
            if (bmp == null)
                return;

            if (_middleBrush == null)
                _middleBrush = MakeBrush();

            if (SliceMode == 0)
            {
                SetNineSliceVisibility(false);
                MiddleSlice.Visibility = Visibility.Visible;
                LeftSlice.Visibility = RightSlice.Visibility = Visibility.Collapsed;

                MiddleSlice.Width = double.IsNaN(Width) ? bmp.PixelWidth : Width;
                MiddleSlice.Height = GetElementHeight();

                _middleBrush.ImageSource = Source;
                _middleBrush.Viewbox = GetStateViewbox();
                MiddleSlice.Fill = _middleBrush;
                return;
            }

            else
            {
                if (_leftBrush == null)
                    _leftBrush = MakeBrush();
                if (_rightBrush == null)
                    _rightBrush = MakeBrush();
            }

            var stateBox = GetStateViewbox();
            double leftW = LeftWidth;
            double rightW = RightWidth;
            double midW = Math.Max(0, Width - leftW - rightW);
            double elemH = GetElementHeight();

            double leftWRel = leftW / bmp.PixelWidth * stateBox.Width;
            double rightWRel = rightW / bmp.PixelWidth * stateBox.Width;
            double midWRel = Math.Max(0, stateBox.Width - leftWRel - rightWRel);

            if (SliceMode == 2)
            {
                if (_topLeftBrush == null)
                    _topLeftBrush = MakeBrush();
                if (_topMidBrush == null)
                    _topMidBrush = MakeBrush();
                if (_topRightBrush == null)
                    _topRightBrush = MakeBrush();
                if (_botLeftBrush == null)
                    _botLeftBrush = MakeBrush();
                if (_botMidBrush == null)
                    _botMidBrush = MakeBrush();
                if (_botRightBrush == null)
                    _botRightBrush = MakeBrush();

                double topH = TopHeight;
                double botH = BottomHeight;
                double midH = Math.Max(0, Height - topH - botH);
                double topHRel = topH / bmp.PixelHeight * stateBox.Height;
                double botHRel = botH / bmp.PixelHeight * stateBox.Height;
                double midHRel = Math.Max(0, stateBox.Height - topHRel - botHRel);

                double x0 = stateBox.X;
                double x1 = stateBox.X + leftWRel;
                double x2 = stateBox.X + leftWRel + midWRel;

                double y0 = stateBox.Y;
                double y1 = stateBox.Y + topHRel;
                double y2 = stateBox.Y + topHRel + midHRel;

                SetNineSliceVisibility(true);
                LeftSlice.Visibility =
                    MiddleSlice.Visibility =
                    RightSlice.Visibility =
                        Visibility.Visible;

                TopLeftSlice.Width = BotLeftSlice.Width = LeftSlice.Width = leftW;
                TopRightSlice.Width = BotRightSlice.Width = RightSlice.Width = rightW;
                TopMidSlice.Width = BotMidSlice.Width = MiddleSlice.Width = midW;

                TopLeftSlice.Height = TopMidSlice.Height = TopRightSlice.Height = topH;
                BotLeftSlice.Height = BotMidSlice.Height = BotRightSlice.Height = botH;
                LeftSlice.Height = MiddleSlice.Height = RightSlice.Height = midH;

                ApplyBrush(_topLeftBrush, TopLeftSlice, x0, y0, leftWRel, topHRel);
                ApplyBrush(_topMidBrush, TopMidSlice, x1, y0, midWRel, topHRel);
                ApplyBrush(_topRightBrush, TopRightSlice, x2, y0, rightWRel, topHRel);

                ApplyBrush(_leftBrush, LeftSlice, x0, y1, leftWRel, midHRel);
                ApplyBrush(_middleBrush, MiddleSlice, x1, y1, midWRel, midHRel);
                ApplyBrush(_rightBrush, RightSlice, x2, y1, rightWRel, midHRel);

                ApplyBrush(_botLeftBrush, BotLeftSlice, x0, y2, leftWRel, botHRel);
                ApplyBrush(_botMidBrush, BotMidSlice, x1, y2, midWRel, botHRel);
                ApplyBrush(_botRightBrush, BotRightSlice, x2, y2, rightWRel, botHRel);
            }

            else
            {
                SetNineSliceVisibility(false);

                LeftSlice.Width = leftW;
                MiddleSlice.Width = midW;
                RightSlice.Width = rightW;
                LeftSlice.Height = MiddleSlice.Height = RightSlice.Height = elemH;
                LeftSlice.Visibility =
                    MiddleSlice.Visibility =
                    RightSlice.Visibility =
                        Visibility.Visible;

                ApplyBrush(
                    _leftBrush,
                    LeftSlice,
                    stateBox.X,
                    stateBox.Y,
                    leftWRel,
                    stateBox.Height
                );
                ApplyBrush(
                    _middleBrush,
                    MiddleSlice,
                    stateBox.X + leftWRel,
                    stateBox.Y,
                    midWRel,
                    stateBox.Height
                );
                ApplyBrush(
                    _rightBrush,
                    RightSlice,
                    stateBox.X + leftWRel + midWRel,
                    stateBox.Y,
                    rightWRel,
                    stateBox.Height
                );
            }
        }

        private void ApplyBrush(
            ImageBrush brush,
            Rectangle rect,
            double x,
            double y,
            double w,
            double h
        )
        {
            brush.ImageSource = Source;
            brush.Viewbox = new Rect(x, y, Math.Max(0, w), Math.Max(0, h));
            rect.Fill = brush;
        }

        private void SetNineSliceVisibility(bool visible)
        {
            var v = visible ? Visibility.Visible : Visibility.Collapsed;
            TopLeftSlice.Visibility = TopMidSlice.Visibility = TopRightSlice.Visibility = v;
            BotLeftSlice.Visibility = BotMidSlice.Visibility = BotRightSlice.Visibility = v;
        }
        #endregion
    }
}
