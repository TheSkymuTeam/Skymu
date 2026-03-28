using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Skymu.Helpers;

namespace Skymu.Skyaeris
{
    public partial class CallScreen : Page
    {
        private BitmapImage pill;
        private BitmapImage rectangle;
        public CallScreen()
        {
            InitializeComponent();
            rectangle = FrozenImage.Generate("pack://application:,,,/Skymu;component/Skyaeris/Assets/Universal/Call Screen/rectangle.png");
            pill = FrozenImage.Generate("pack://application:,,,/Skymu;component/Skyaeris/Assets/Universal/Call Screen/pill.png");
        }

        private void SliceControl_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Resized(object sender, RoutedEventArgs e)
        {
            if (this.ActualWidth >= 1025.0) // pill
            {
                ActionBar.Margin = new Thickness(0, 0, 0, 16);
                ActionBar.HorizontalAlignment = HorizontalAlignment.Center;
                ActionBarContainer.Source = pill;
                ActionBarContainer.SliceMode = 1;
                ActionBarContainer.ClearValue(HeightProperty);
            }
            else // rectangle
            {
                ActionBar.Margin = new Thickness(0);
                ActionBar.HorizontalAlignment = HorizontalAlignment.Stretch;
                ActionBarContainer.Source = rectangle;
                ActionBarContainer.SliceMode = 2;
                ActionBarContainer.Height = 88;
            }
        }
    }
}
