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

namespace Skymu.Pontis
{
    public partial class CallScreen : Page
    {
        private BitmapImage pill, rectangle, logo_small, logo_big;
        private bool isPillMode;       
        private bool isLogoBig;

        public CallScreen()
        {
            InitializeComponent();

            const string prefix = "pack://application:,,,/Skymu;component/Pontis/Assets/Universal/";

            rectangle = FrozenImage.Generate(prefix + "Call Screen/rectangle.png");
            pill = FrozenImage.Generate(prefix + "Call Screen/pill.png");
            logo_small = FrozenImage.Generate(prefix + "Branding/logo-call-small.png");
            logo_big = FrozenImage.Generate(prefix + "Branding/logo-call-big.png");

            isPillMode = !(this.ActualWidth >= 1025.0);
            isLogoBig = !(this.ActualWidth >= 700 && this.ActualHeight >= 700);
            Resized(null, null);
        }

        private void Resized(object sender, RoutedEventArgs e)
        {
            bool newPillMode = this.ActualWidth >= 1025.0;
            if (newPillMode != isPillMode)
            {
                if (newPillMode) // pill
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

                isPillMode = newPillMode;
            }

            bool newLogoBig = this.ActualWidth >= 700 && this.ActualHeight >= 700;
            if (newLogoBig != isLogoBig)
            {
                if (newLogoBig) // big logo
                {
                    Logo.Width = 169;
                    Logo.Source = logo_big;
                }
                else // small logo
                {
                    Logo.Width = 52;
                    Logo.Source = logo_small;
                }

                isLogoBig = newLogoBig;
            }
        }
    }
}
