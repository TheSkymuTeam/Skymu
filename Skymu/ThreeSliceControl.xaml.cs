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

using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

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

    public partial class ThreeSliceControl : UserControl
    {
        private ButtonVisualState _visualState = ButtonVisualState.Default;

        public ThreeSliceControl()
        {
            InitializeComponent();

            // Mouse state handling
            MouseEnter += OnMouseEnter;
            MouseLeave += OnMouseLeave;
            MouseLeftButtonDown += OnMouseDown;
            MouseLeftButtonUp += OnMouseUp;
            IsEnabledChanged += OnEnabledChanged;
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
                typeof(ThreeSliceControl),
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
                typeof(ThreeSliceControl),
                new PropertyMetadata(1, OnAnyPropertyChanged));

        public SpriteStackDirection StackDirection
        {
            get { return (SpriteStackDirection)GetValue(StackDirectionProperty); }
            set { SetValue(StackDirectionProperty, value); }
        }

        public static readonly DependencyProperty StackDirectionProperty =
            DependencyProperty.Register(
                "StackDirection",
                typeof(SpriteStackDirection),
                typeof(ThreeSliceControl),
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
                typeof(ThreeSliceControl),
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
                typeof(ThreeSliceControl),
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
                typeof(ThreeSliceControl),
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
                typeof(ThreeSliceControl),
                new PropertyMetadata(0, OnAnyPropertyChanged));

        public string Text
        {
            get { return OverlayText.Text; }
            set { OverlayText.Text = value; }
        }

        public bool Slice
        {
            get { return (bool)GetValue(SliceProperty); }
            set { SetValue(SliceProperty, value); }
        }

        public static readonly DependencyProperty SliceProperty =
            DependencyProperty.Register(
                nameof(Slice),
                typeof(bool),
                typeof(ThreeSliceControl),
                new PropertyMetadata(true, OnAnyPropertyChanged));

        private void OnMouseEnter(object sender, MouseEventArgs e) // set hover index to -1 if you don't want hover effect
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
            SetState(ButtonVisualState.Pressed);
        }

        private void OnMouseUp(object sender, MouseButtonEventArgs e)
        {
            if (IsMouseOver)
                SetState(ButtonVisualState.Hover);
            else
                SetState(ButtonVisualState.Default);
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
        }

        private static void OnAnyPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            ((ThreeSliceControl)d).UpdateSlices();
        }

        private int GetCurrentIndex()
        {
            if (_visualState == ButtonVisualState.Hover)
                return HoverIndex;

            if (_visualState == ButtonVisualState.Pressed)
                return PressedIndex;

            if (_visualState == ButtonVisualState.Disabled)
                return DisabledIndex;

            return DefaultIndex;
        }

        private Rect GetStateViewbox() // code works by changing the viewbox, not cropping the image
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
                double sliceHeight = 1.0 / ElementCount;
                double y = sliceHeight * index;
                return new Rect(0, y, 1, sliceHeight);
            }
            else
            {
                double sliceWidth = 1.0 / ElementCount;
                double x = sliceWidth * index;
                return new Rect(x, 0, sliceWidth, 1);
            }
        }

        private double GetElementHeight()
        {
            if (Source == null || ElementCount <= 0)
                return ActualHeight;

            BitmapSource bmp = Source as BitmapSource;
            if (bmp == null)
                return ActualHeight;

            if (StackDirection == SpriteStackDirection.Vertical)
                return bmp.PixelHeight / ElementCount;
            else
                return bmp.PixelHeight;
        }

        private void UpdateUnsliced(BitmapSource bmp)
        {
            double elementHeight = GetElementHeight();

            LeftSlice.Visibility = Visibility.Collapsed;
            RightSlice.Visibility = Visibility.Collapsed;

            MiddleSlice.Visibility = Visibility.Visible;
            MiddleSlice.Width = ActualWidth;
            MiddleSlice.Height = elementHeight;

            Rect stateBox = GetStateViewbox();
            MiddleSlice.Fill = CreateBrush(stateBox, new Rect(0, 0, 1, 1));
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

            // fixed widths for left/right slices (pixels)
            double leftWidth = 32;   // or whatever your slice should always be
            double rightWidth = 32;

            // middle fills remaining space
            double middleWidth = totalWidth - leftWidth - rightWidth;
            if (middleWidth < 0) middleWidth = 0; // safeguard for very small control

            LeftSlice.Width = leftWidth;
            MiddleSlice.Width = middleWidth;
            RightSlice.Width = rightWidth;

            LeftSlice.Height = elementHeight;
            MiddleSlice.Height = elementHeight;
            RightSlice.Height = elementHeight;

            // The brush viewboxes remain relative to the original image
            Rect stateBox = GetStateViewbox();
            LeftSlice.Fill = CreateBrush(stateBox, new Rect(0.0, 0, leftWidth / bmp.PixelWidth, 1));
            MiddleSlice.Fill = CreateBrush(stateBox, new Rect(leftWidth / bmp.PixelWidth, 0, 1.0 - (leftWidth + rightWidth) / bmp.PixelWidth, 1));
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
