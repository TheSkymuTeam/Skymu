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

using Skymu.Shaders;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Avalonia;
using Avalonia.Animation;
using Avalonia.Animation.Easings;
using Avalonia.Controls;
using Avalonia.Controls.Shapes;
using Avalonia.Input;
using System.Windows.Input;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Styling;
using Avalonia.Threading;

namespace Skymu
{
	public enum SpriteStackDirection
	{
		Vertical,
		Horizontal,
	}

	public enum ButtonVisualState
	{
		Default,
		Hover,
		Pressed,
		Disabled,
	}

	public partial class SliceControl : UserControl
	{
		#region Constructor
		private IBrush _background;
		private ButtonVisualState _visualState = ButtonVisualState.Default;
		private static DispatcherTimer _sharedAnimationTimer;
		private static HashSet<SliceControl> _animatingControls = new HashSet<SliceControl>();
		private int _currentAnimationFrame = 0;
		private double _frameAccumulator = 0;
		private CancellationTokenSource _fadeCts;
		private ButtonVisualState _fadeTargetState;
		private Rectangle[] _overlayRects;

		private ImageBrush _leftBrush;
		private ImageBrush _middleBrush;
		private ImageBrush _rightBrush;

		private ImageBrush _topLeftBrush;
		private ImageBrush _topMidBrush;
		private ImageBrush _topRightBrush;

		private ImageBrush _botLeftBrush;
		private ImageBrush _botMidBrush;
		private ImageBrush _botRightBrush;

		private ImageBrush _overlayLeftBrush; // overlay currently only supported in 3 slice mode, cos there aren't any 9 slice controls that need it
		private ImageBrush _overlayMidBrush;
		private ImageBrush _overlayRightBrush;

		private const double PressedDefaultOffsetY = 1.0;
		private bool holding_down = false;

        public SliceControl()
		{
			InitializeComponent();
			Universal.ThemeChanged += OnThemeChanged;
			_background = Background;
			_overlayRects = new[] { OverlayLeft, OverlayMiddle, OverlayRight };

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

							if (control.SliceMode == 0)
								control._middleBrush.SourceRect = new RelativeRect(control.GetStateViewbox(), RelativeUnit.Relative);
							else
								control.UpdateSlices();
						}
					}
				};
			}

			// Mouse events
			PointerEntered += (s, e) =>
			{
				if (!IsEnabled)
					return;
				SetStateInternal(ButtonVisualState.Hover);
			};

			PointerExited += (s, e) =>
			{
				if (!IsEnabled)
					return;
				SetStateInternal(ButtonVisualState.Default);
			};

			PointerPressed += (s, e) =>
			{
				if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
					return;

                if (!IsEnabled)
					return;

				if (IsRadioButton && _visualState == ButtonVisualState.Pressed)
					return;

				holding_down = true;

				SetStateInternal(ButtonVisualState.Pressed);
			};

			PointerReleased += (s, e) =>
			{
				if (e.InitialPressMouseButton != MouseButton.Left)
					return;

                if (!IsEnabled)
					return;

				holding_down = false;

				var newState =
					(IsPointerOver && HoverIndex != -1)
						? ButtonVisualState.Hover
						: ButtonVisualState.Default;

				if (IsRadioButton && _visualState == ButtonVisualState.Pressed)
					return;
				SetStateInternal(newState);

				if (Command != null)
				{
					object parameter = CommandParameter;

					if (Command.CanExecute(parameter))
					{
						Command.Execute(parameter);
					}
				}
			};

			PropertyChanged += (s, e) =>
			{
				if (e.Property != IsEnabledProperty)
					return;

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

			Loaded += (s, e) =>
			{
				UpdateHitTestState();
				UpdateTextOffset();
				UpdateIconOffset();
				SetStateInternal(IsEnabled ? ButtonStateOnInit : ButtonVisualState.Disabled);
				_animatingControls.Remove(this);
				UpdateAnimation();
			};

			PropertyChanged += (s, e) =>
			{
				if (e.Property != IsVisibleProperty)
					return;

				if (e.GetNewValue<bool>())
				{
					UpdateAnimation();
				}
				else
				{
					_animatingControls.Remove(this);
					if (_animatingControls.Count == 0)
					{
						_sharedAnimationTimer?.Stop();
					}
				}
			};

			Unloaded += (s, e) =>
			{
				_animatingControls.Remove(this);
				if (_animatingControls.Count == 0)
					_sharedAnimationTimer?.Stop();
				Universal.ThemeChanged -= OnThemeChanged;
			};

		}

		private void OnThemeChanged()
		{
			UpdateSlices();
		}

		#endregion

		#region Properties

		public IBrush BackgroundHover
		{
			get { return (IBrush)GetValue(BackgroundHoverProperty); }
			set { SetValue(BackgroundHoverProperty, value); }
		}
		public static readonly StyledProperty<IBrush> BackgroundHoverProperty =
			AvaloniaProperty.Register<SliceControl, IBrush>(nameof(BackgroundHover));

		public IBrush BackgroundPressed
		{
			get { return (IBrush)GetValue(BackgroundPressedProperty); }
			set { SetValue(BackgroundPressedProperty, value); }
		}
		public static readonly StyledProperty<IBrush> BackgroundPressedProperty =
			AvaloniaProperty.Register<SliceControl, IBrush>(nameof(BackgroundPressed));

		public IBrush TextColorPressed
		{
			get { return (IBrush)GetValue(TextColorPressedProperty); }
			set { SetValue(TextColorPressedProperty, value); }
		}
		public static readonly StyledProperty<IBrush> TextColorPressedProperty =
			AvaloniaProperty.Register<SliceControl, IBrush>(nameof(TextColorPressed));

		public int ElementSpan
		{
			get { return (int)GetValue(ElementSpanProperty); }
			set { SetValue(ElementSpanProperty, value); }
		}
		public static readonly StyledProperty<int> ElementSpanProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(ElementSpan), 1);

		public ButtonVisualState ButtonStateOnInit
		{
			get { return (ButtonVisualState)GetValue(ButtonStateOnInitProperty); }
			set { SetValue(ButtonStateOnInitProperty, value); }
		}
		public static readonly StyledProperty<ButtonVisualState> ButtonStateOnInitProperty =
			AvaloniaProperty.Register<SliceControl, ButtonVisualState>(
				nameof(ButtonStateOnInit),
				ButtonVisualState.Default
			);

		public static readonly StyledProperty<ICommand> CommandProperty =
			AvaloniaProperty.Register<SliceControl, ICommand>("Command");

		public ICommand Command
		{
			get { return (ICommand)GetValue(CommandProperty); }
			set { SetValue(CommandProperty, value); }
		}

		public static readonly StyledProperty<object> CommandParameterProperty =
			AvaloniaProperty.Register<SliceControl, object>("CommandParameter");

		public object CommandParameter
		{
			get { return GetValue(CommandParameterProperty); }
			set { SetValue(CommandParameterProperty, value); }
		}

		public bool IsRadioButton
		{
			get { return (bool)GetValue(IsRadioButtonProperty); }
			set { SetValue(IsRadioButtonProperty, value); }
		}
		public static readonly StyledProperty<bool> IsRadioButtonProperty =
			AvaloniaProperty.Register<SliceControl, bool>(nameof(IsRadioButton), false);

		public bool Interactive
		{
			get { return (bool)GetValue(InteractiveProperty); }
			set { SetValue(InteractiveProperty, value); }
		}

		public static readonly StyledProperty<bool> InteractiveProperty =
			AvaloniaProperty.Register<SliceControl, bool>(nameof(Interactive), true);

		private static void OnInteractiveChanged(
			AvaloniaObject d,
			AvaloniaPropertyChangedEventArgs e
		) => ((SliceControl)d).UpdateHitTestState();

		public bool HoverTransition
		{
			get { return (bool)GetValue(HoverTransitionProperty); }
			set { SetValue(HoverTransitionProperty, value); }
		}
		public static readonly StyledProperty<bool> HoverTransitionProperty =
			AvaloniaProperty.Register<SliceControl, bool>(nameof(HoverTransition), true);

		public IImage IconSource
		{
			get { return (IImage)GetValue(IconSourceProperty); }
			set { SetValue(IconSourceProperty, value); }
		}
		public static readonly StyledProperty<IImage> IconSourceProperty =
			AvaloniaProperty.Register<SliceControl, IImage>(nameof(IconSource));

		public double IconWidth
		{
			get { return (double)GetValue(IconWidthProperty); }
			set { SetValue(IconWidthProperty, value); }
		}
		public static readonly StyledProperty<double> IconWidthProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(IconWidth), double.NaN);

		public double IconHeight
		{
			get { return (double)GetValue(IconHeightProperty); }
			set { SetValue(IconHeightProperty, value); }
		}
		public static readonly StyledProperty<double> IconHeightProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(IconHeight), double.NaN);

		public int IconLeftMargin
		{
			get { return (int)GetValue(IconLeftMarginProperty); }
			set { SetValue(IconLeftMarginProperty, value); }
		}
		public static readonly StyledProperty<int> IconLeftMarginProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(IconLeftMargin), 0);

		public int IconRightMargin
		{
			get { return (int)GetValue(IconRightMarginProperty); }
			set { SetValue(IconRightMarginProperty, value); }
		}
		public static readonly StyledProperty<int> IconRightMarginProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(IconRightMargin), 0);

		public bool Themeable
		{
			get { return (bool)GetValue(ThemeableProperty); }
			set { SetValue(ThemeableProperty, value); }
		}
		public static readonly StyledProperty<bool> ThemeableProperty =
			AvaloniaProperty.Register<SliceControl, bool>(nameof(Themeable), false);

		public Bitmap Source
		{
			get { return (Bitmap)GetValue(SourceProperty); }
			set { SetValue(SourceProperty, value); }
		}
		public static readonly StyledProperty<Bitmap> SourceProperty =
			AvaloniaProperty.Register<SliceControl, Bitmap>("Source");

		private static void OnSourceChanged(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
		{
			if (d is SliceControl control)
			{
				control.UpdateAnimation();
			}
		}

		public int ElementCount
		{
			get { return (int)GetValue(ElementCountProperty); }
			set { SetValue(ElementCountProperty, value); }
		}
		public static readonly StyledProperty<int> ElementCountProperty =
			AvaloniaProperty.Register<SliceControl, int>("ElementCount", 1);

		public double SpriteSpacing
		{
			get { return (double)GetValue(SpriteSpacingProperty); }
			set { SetValue(SpriteSpacingProperty, value); }
		}
		public static readonly StyledProperty<double> SpriteSpacingProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(SpriteSpacing), 0.0);

		public SpriteStackDirection StackDirection
		{
			get { return (SpriteStackDirection)GetValue(StackDirectionProperty); }
			set { SetValue(StackDirectionProperty, value); }
		}
		public static readonly StyledProperty<SpriteStackDirection> StackDirectionProperty =
			AvaloniaProperty.Register<SliceControl, SpriteStackDirection>(
				"StackDirection",
				SpriteStackDirection.Vertical
			);

		public int DefaultIndex
		{
			get { return (int)GetValue(DefaultIndexProperty); }
			set { SetValue(DefaultIndexProperty, value); }
		}
		public static readonly StyledProperty<int> DefaultIndexProperty =
			AvaloniaProperty.Register<SliceControl, int>("DefaultIndex", 0);

		public int DisabledIndex
		{
			get { return (int)GetValue(DisabledIndexProperty); }
			set { SetValue(DisabledIndexProperty, value); }
		}
		public static readonly StyledProperty<int> DisabledIndexProperty =
			AvaloniaProperty.Register<SliceControl, int>("DisabledIndex", 0);

		public int HoverIndex
		{
			get { return (int)GetValue(HoverIndexProperty); }
			set { SetValue(HoverIndexProperty, value); }
		}
		public static readonly StyledProperty<int> HoverIndexProperty =
			AvaloniaProperty.Register<SliceControl, int>("HoverIndex", 0);

		public int PressedIndex
		{
			get { return (int)GetValue(PressedIndexProperty); }
			set { SetValue(PressedIndexProperty, value); }
		}
		public static readonly StyledProperty<int> PressedIndexProperty =
			AvaloniaProperty.Register<SliceControl, int>("PressedIndex", 0);

		public bool IsAnimation
		{
			get { return (bool)GetValue(IsAnimationProperty); }
			set { SetValue(IsAnimationProperty, value); }
		}
		public static readonly StyledProperty<bool> IsAnimationProperty =
			AvaloniaProperty.Register<SliceControl, bool>(nameof(IsAnimation), false);

		public double AnimationFps
		{
			get { return (double)GetValue(AnimationFpsProperty); }
			set { SetValue(AnimationFpsProperty, value); }
		}
		public static readonly StyledProperty<double> AnimationFpsProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(AnimationFps), 30.0);

		public string Text
		{
			get { return (string)GetValue(TextProperty); }
			set { SetValue(TextProperty, value); }
		}
		public static readonly StyledProperty<string> TextProperty =
			AvaloniaProperty.Register<SliceControl, string>(nameof(Text), string.Empty);

		public FontFamily TextFont
		{
			get { return (FontFamily)GetValue(TextFontProperty); }
			set { SetValue(TextFontProperty, value); }
		}
		public static readonly StyledProperty<FontFamily> TextFontProperty =
			AvaloniaProperty.Register<SliceControl, FontFamily>(nameof(TextFont), FontFamily.Default);

		public FontWeight TextWeight
		{
			get { return (FontWeight)GetValue(TextWeightProperty); }
			set { SetValue(TextWeightProperty, value); }
		}
		public static readonly StyledProperty<FontWeight> TextWeightProperty =
			AvaloniaProperty.Register<SliceControl, FontWeight>(nameof(TextWeight), FontWeight.Normal);

		public double LeftWidth
		{
			get { return (double)GetValue(LeftWidthProperty); }
			set { SetValue(LeftWidthProperty, value); }
		}
		public static readonly StyledProperty<double> LeftWidthProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(LeftWidth), 32.0);

		public double RightWidth
		{
			get { return (double)GetValue(RightWidthProperty); }
			set { SetValue(RightWidthProperty, value); }
		}
		public static readonly StyledProperty<double> RightWidthProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(RightWidth), 32.0);

		public double TopHeight
		{
			get { return (double)GetValue(TopHeightProperty); }
			set { SetValue(TopHeightProperty, value); }
		}
		public static readonly StyledProperty<double> TopHeightProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(TopHeight), 32.0);

		public double BottomHeight
		{
			get { return (double)GetValue(BottomHeightProperty); }
			set { SetValue(BottomHeightProperty, value); }
		}
		public static readonly StyledProperty<double> BottomHeightProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(BottomHeight), 32.0);

		public FontStyle TextStyle
		{
			get { return (FontStyle)GetValue(TextStyleProperty); }
			set { SetValue(TextStyleProperty, value); }
		}
		public static readonly StyledProperty<FontStyle> TextStyleProperty =
			AvaloniaProperty.Register<SliceControl, FontStyle>(nameof(TextStyle), FontStyle.Normal);

		public double TextSize
		{
			get { return (double)GetValue(TextSizeProperty); }
			set { SetValue(TextSizeProperty, value); }
		}
		public static readonly StyledProperty<double> TextSizeProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(TextSize), 12.0);

		public IBrush TextColor
		{
			get { return (IBrush)GetValue(TextColorProperty); }
			set { SetValue(TextColorProperty, value); }
		}
		public static readonly StyledProperty<IBrush> TextColorProperty =
			AvaloniaProperty.Register<SliceControl, IBrush>(nameof(TextColor), Brushes.Black);

		public HorizontalAlignment TextHorizontalAlignment
		{
			get { return (HorizontalAlignment)GetValue(TextHorizontalAlignmentProperty); }
			set { SetValue(TextHorizontalAlignmentProperty, value); }
		}
		public static readonly StyledProperty<HorizontalAlignment> TextHorizontalAlignmentProperty =
			AvaloniaProperty.Register<SliceControl, HorizontalAlignment>(
				nameof(TextHorizontalAlignment),
				HorizontalAlignment.Left
			);

		public VerticalAlignment TextVerticalAlignment
		{
			get { return (VerticalAlignment)GetValue(TextVerticalAlignmentProperty); }
			set { SetValue(TextVerticalAlignmentProperty, value); }
		}
		public static readonly StyledProperty<VerticalAlignment> TextVerticalAlignmentProperty =
			AvaloniaProperty.Register<SliceControl, VerticalAlignment>(
				nameof(TextVerticalAlignment),
				VerticalAlignment.Center
			);

		public int TextLeftMargin
		{
			get { return (int)GetValue(TextLeftMarginProperty); }
			set { SetValue(TextLeftMarginProperty, value); }
		}
		public static readonly StyledProperty<int> TextLeftMarginProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(TextLeftMargin), 0);

		public int TextRightMargin
		{
			get { return (int)GetValue(TextRightMarginProperty); }
			set { SetValue(TextRightMarginProperty, value); }
		}
		public static readonly StyledProperty<int> TextRightMarginProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(TextRightMargin), 8);

		public double PressedOffsetY
		{
			get { return (double)GetValue(PressedOffsetYProperty); }
			set { SetValue(PressedOffsetYProperty, value); }
		}
		public static readonly StyledProperty<double> PressedOffsetYProperty =
			AvaloniaProperty.Register<SliceControl, double>(nameof(PressedOffsetY), 1.0);

		public int SliceMode
		{
			get { return (int)GetValue(SliceModeProperty); }
			set { SetValue(SliceModeProperty, value); }
		}
		public static readonly StyledProperty<int> SliceModeProperty =
			AvaloniaProperty.Register<SliceControl, int>(nameof(SliceMode), 1);

		static SliceControl()
		{
			BackgroundHoverProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			BackgroundPressedProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			TextColorPressedProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			ElementSpanProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			InteractiveProperty.Changed.AddClassHandler<SliceControl>(OnInteractiveChanged);
			IconSourceProperty.Changed.AddClassHandler<SliceControl>(OnIconChanged);
			IconWidthProperty.Changed.AddClassHandler<SliceControl>(OnIconChanged);
			IconHeightProperty.Changed.AddClassHandler<SliceControl>(OnIconChanged);
			IconLeftMarginProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			IconRightMarginProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			ThemeableProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			SourceProperty.Changed.AddClassHandler<SliceControl>(OnSourceChanged);
			ElementCountProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			SpriteSpacingProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			StackDirectionProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			DefaultIndexProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			DisabledIndexProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			HoverIndexProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			PressedIndexProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			IsAnimationProperty.Changed.AddClassHandler<SliceControl>(OnAnimationPropertyChanged);
			AnimationFpsProperty.Changed.AddClassHandler<SliceControl>(OnAnimationPropertyChanged);
			TextProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextFontProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextWeightProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			LeftWidthProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			RightWidthProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			TopHeightProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			BottomHeightProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
			TextStyleProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextSizeProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextColorProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextHorizontalAlignmentProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextVerticalAlignmentProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextLeftMarginProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			TextRightMarginProperty.Changed.AddClassHandler<SliceControl>(OnTextChanged);
			PressedOffsetYProperty.Changed.AddClassHandler<SliceControl>(OnOffsetChanged);
			SliceModeProperty.Changed.AddClassHandler<SliceControl>(OnAnyPropertyChanged);
		}

		#endregion

		#region Methods

		private void SetStateInternal(ButtonVisualState state)
		{
			if (
				_visualState == ButtonVisualState.Disabled
				&& state != ButtonVisualState.Disabled
				&& !IsEnabled
			)
				return;

			if (
				IsRadioButton
				&& _visualState == ButtonVisualState.Pressed
				&& state != ButtonVisualState.Pressed
				&& state != ButtonVisualState.Disabled
				&& !holding_down
			)
				return;

			ButtonVisualState effectiveState =
				_fadeCts != null ? _fadeTargetState : _visualState;

			if (effectiveState == state)
				return;

			bool shouldFade =
				HoverTransition
				&& !IsAnimation
				&& HoverIndex != DefaultIndex
				&& (
					state == ButtonVisualState.Hover
					|| (
						state == ButtonVisualState.Default
						&& _visualState == ButtonVisualState.Hover
					)
				);

			if (shouldFade)
				BeginFadeTransition(state);
			else
			{
				AbortFade();
				SetState(state);
			}
		}

		private async void BeginFadeTransition(ButtonVisualState targetState)
		{
			double currentOpacity = OverlayMiddle.Opacity;
			bool wasReversing = _fadeCts != null;

			var oldCts = _fadeCts;
			_fadeCts = null;
			oldCts?.Cancel();

			_fadeTargetState = targetState;

			if (_overlayLeftBrush == null)
				_overlayLeftBrush = MakeBrush();
			if (_overlayMidBrush == null)
				_overlayMidBrush = MakeBrush();
			if (_overlayRightBrush == null)
				_overlayRightBrush = MakeBrush();

			PaintOverlay(_visualState);
			SyncOverlayLayout();

			SetState(targetState);

			double fromOpacity = wasReversing ? currentOpacity : 1.0;
			double toOpacity = 0.0;

			double fraction = Math.Abs(toOpacity - fromOpacity);
			var duration = TimeSpan.FromMilliseconds(150 * fraction);

			var animation = new Animation
			{
				Duration = duration,
				Easing = new CubicEaseOut(),
				FillMode = FillMode.None,
				Children =
				{
					new KeyFrame
					{
						Cue = new Cue(0.0),
						Setters = { new Setter(OpacityProperty, fromOpacity) },
					},
					new KeyFrame
					{
						Cue = new Cue(1.0),
						Setters = { new Setter(OpacityProperty, toOpacity) },
					},
				},
			};

			var newCts = new CancellationTokenSource();
			_fadeCts = newCts;

			var tasks = new List<Task>();
			foreach (var rect in _overlayRects)
			{
				if (!rect.IsVisible)
					continue;
				tasks.Add(animation.RunAsync(rect, newCts.Token));
			}

			try
			{
				await Task.WhenAll(tasks);
			}
			catch (OperationCanceledException)
			{
				return;
			}

			if (_fadeCts != newCts)
				return;
			OverlayLeft.Opacity = OverlayMiddle.Opacity = OverlayRight.Opacity = 0;
			_fadeCts = null;
		}

		private void AbortFade()
		{
			if (_fadeCts == null)
				return;
			_fadeCts.Cancel();
			_fadeCts = null;
			OverlayLeft.Opacity = OverlayMiddle.Opacity = OverlayRight.Opacity = 0;
		}

		private void PaintOverlay(ButtonVisualState targetState)
		{
			var bmp = Source as Bitmap;
			if (bmp == null)
				return;

			// spoof
			var saved = _visualState;
			_visualState = targetState;
			var stateBox = GetStateViewbox();
			_visualState = saved;

			if (SliceMode == 0)
			{
				if (_overlayMidBrush == null)
					_overlayMidBrush = MakeBrush();
				ApplyBrush(
					_overlayMidBrush,
					OverlayMiddle,
					stateBox.X,
					stateBox.Y,
					stateBox.Width,
					stateBox.Height
				);
				return;
			}

			double leftW = LeftWidth;
			double rightW = RightWidth;
			double leftWRel = leftW / bmp.PixelSize.Width * stateBox.Width;
			double rightWRel = rightW / bmp.PixelSize.Width * stateBox.Width;
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
			OverlayMiddle.Width = MiddleSlice.Bounds.Width;
			OverlayMiddle.Height = MiddleSlice.Bounds.Height;
			OverlayMiddle.IsVisible = MiddleSlice.IsVisible;

			if (SliceMode > 0)
			{
				OverlayLeft.Width = LeftSlice.Bounds.Width;
				OverlayLeft.Height = LeftSlice.Bounds.Height;
				OverlayRight.Width = RightSlice.Bounds.Width;
				OverlayRight.Height = RightSlice.Bounds.Height;
				OverlayLeft.IsVisible = LeftSlice.IsVisible;
				OverlayRight.IsVisible = RightSlice.IsVisible;
			}
		}

		public void UpdateHitTestState()
		{
			IsHitTestVisible = IsEnabled && Interactive;
			if (!IsEnabled)
				Opacity = 0.4;
			else
				Opacity = 1;
		}

		public void SetState(ButtonVisualState state)
		{
			_visualState = state;
			UpdateHitTestState();
			UpdateSlices();
			UpdateTextOffset();
			UpdateIconOffset();
			UpdateBackground();
			UpdateTextColor();
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
				_visualState == ButtonVisualState.Pressed ? PressedOffsetY : 0.0,
				TextRightMargin,
				0
			);
		}

		private void UpdateIconOffset()
		{
			if (OverlayImage == null)
				return;
			OverlayImage.Margin = new Thickness(
				IconLeftMargin,
				_visualState == ButtonVisualState.Pressed ? PressedOffsetY : 0.0,
				IconRightMargin,
				0
			);
		}

		private void UpdateBackground()
		{
			switch (_visualState)
			{
				case ButtonVisualState.Default:
					if (_background != null)
						Background = _background;
					break;
				case ButtonVisualState.Hover:
					if (BackgroundHover != null)
						Background = BackgroundHover;
					break;
				case ButtonVisualState.Pressed:
					if (BackgroundPressed != null)
						Background = BackgroundPressed;
					break;
					// TODO: Disabled
			}
		}

		private IBrush GetEffectiveTextColor()
		{
			if (_visualState == ButtonVisualState.Pressed && TextColorPressed != null)
				return TextColorPressed;
			return TextColor;
		}

		private void UpdateTextColor()
		{
			if (OverlayText != null)
				OverlayText.Foreground = GetEffectiveTextColor();
		}

		private static void OnAnimationPropertyChanged(
			AvaloniaObject d,
			AvaloniaPropertyChangedEventArgs e
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
			AvaloniaObject d,
			AvaloniaPropertyChangedEventArgs e
		) => ((SliceControl)d).UpdateSlices();

		private static void OnOffsetChanged(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
		{
			var control = (SliceControl)d;
			control.UpdateIconOffset();
			control.UpdateTextOffset();
		}

		private static void OnTextChanged(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
		{
			var control = (SliceControl)d;
			control.UpdateText();
			control.UpdateTextOffset();
		}

		private static void OnIconChanged(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
		{
			var control = (SliceControl)d;
			control.UpdateIconOffset();
		}

		private void UpdateText()
		{
			if (OverlayText == null)
				return;

			OverlayText.Text = Text;
			OverlayText.FontFamily = TextFont;
			OverlayText.FontSize = TextSize;
			OverlayText.Foreground = GetEffectiveTextColor();
			OverlayText.HorizontalAlignment = TextHorizontalAlignment;
			OverlayText.VerticalAlignment = TextVerticalAlignment;
			OverlayText.FontWeight = TextWeight;
			OverlayText.FontStyle = TextStyle;
		}

		private static ImageBrush MakeBrush()
		{
			return new ImageBrush { Stretch = Stretch.Fill };
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
			var bmp = Source as Bitmap;
			if (bmp == null || ElementCount <= 0)
				return new Rect(0, 0, 1, 1);

			int index = GetCurrentIndex();
			if (index < 0)
				index = 0;
			if (index >= ElementCount)
				index = ElementCount - 1;

			if (StackDirection == SpriteStackDirection.Vertical)
			{
				double singleHeightPx =
					(bmp.PixelSize.Height - (ElementCount - 1) * SpriteSpacing) / ElementCount;
				double spannedHeightPx =
					singleHeightPx * ElementSpan + SpriteSpacing * (ElementSpan - 1);
				double yPx = index * (singleHeightPx + SpriteSpacing);
				return new Rect(0, yPx / bmp.PixelSize.Height, 1, spannedHeightPx / bmp.PixelSize.Height);
			}
			else
			{
				double spriteWidthPx =
					(bmp.PixelSize.Width - (ElementCount - 1) * SpriteSpacing) / ElementCount;
				double xPx = index * (spriteWidthPx + SpriteSpacing);
				return new Rect(xPx / bmp.PixelSize.Width, 0, spriteWidthPx / bmp.PixelSize.Width, 1);
			}
		}

		private double GetElementHeight()
		{
			var bmp = Source as Bitmap;
			if (bmp == null || ElementCount <= 0)
				return Bounds.Height;

			double singleHeight =
				StackDirection == SpriteStackDirection.Vertical
					? (bmp.PixelSize.Height - (ElementCount - 1) * SpriteSpacing) / ElementCount
					: bmp.PixelSize.Height;

			int span = Math.Max(1, ElementSpan);
			return StackDirection == SpriteStackDirection.Vertical
				? singleHeight * span + SpriteSpacing * (span - 1)
				: singleHeight;
		}

		private void UpdateSlices()
		{
			var bmp = Source as Bitmap;
			if (bmp == null)
				return;

			if (_middleBrush == null)
				_middleBrush = MakeBrush();

			if (SliceMode == 0)
			{
				SetNineSliceVisibility(false);
				MiddleSlice.IsVisible = true;
				LeftSlice.IsVisible = RightSlice.IsVisible = false;

				MiddleSlice.Width = double.IsNaN(Width) ? bmp.PixelSize.Width : Width;
				MiddleSlice.Height = GetElementHeight();

				var zeroStateBox = GetStateViewbox();
				ApplyBrush(_middleBrush, MiddleSlice, zeroStateBox.X, zeroStateBox.Y, zeroStateBox.Width, zeroStateBox.Height);
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

			double leftWRel = leftW / bmp.PixelSize.Width * stateBox.Width;
			double rightWRel = rightW / bmp.PixelSize.Width * stateBox.Width;
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
				double elemHeightPx = GetElementHeight();
				double topHRel = topH / elemHeightPx * stateBox.Height;
				double botHRel = botH / elemHeightPx * stateBox.Height;
				double midHRel = Math.Max(0, stateBox.Height - topHRel - botHRel);

				double x0 = stateBox.X;
				double x1 = stateBox.X + leftWRel;
				double x2 = stateBox.X + leftWRel + midWRel;

				double y0 = stateBox.Y;
				double y1 = stateBox.Y + topHRel;
				double y2 = stateBox.Y + topHRel + midHRel;

				SetNineSliceVisibility(true);
				LeftSlice.IsVisible =
					MiddleSlice.IsVisible =
					RightSlice.IsVisible =
						true;

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
				LeftSlice.IsVisible =
					MiddleSlice.IsVisible =
					RightSlice.IsVisible =
						true;

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
			if (!ReferenceEquals(brush.Source, Source))
				brush.Source = Source;

			var newViewbox = new RelativeRect(x, y, Math.Max(0, w), Math.Max(0, h), RelativeUnit.Relative);
			if (brush.SourceRect != newViewbox)
				brush.SourceRect = newViewbox;

			if (!ReferenceEquals(rect.Fill, brush))
				rect.Fill = brush;

			if (Universal.IsDarkTheme && Themeable) rect.Effect = new DarkenShader();
			else rect.Effect = null;
		}

		private void SetNineSliceVisibility(bool visible)
		{
			TopLeftSlice.IsVisible = TopMidSlice.IsVisible = TopRightSlice.IsVisible = visible;
			BotLeftSlice.IsVisible = BotMidSlice.IsVisible = BotRightSlice.IsVisible = visible;
		}
		#endregion
	}
}
