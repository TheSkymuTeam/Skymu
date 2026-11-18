using System.Linq;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Threading;
using Avalonia.VisualTree;

using Yggdrasil.Models;

namespace Skymu.Skype7
{
    public partial class GroupProfileWindow : Window
    {
        public GroupProfileWindow(Group group)
        {
            InitializeComponent();
            TitleText.Text = group.DisplayName;
            int count = group.Members?.Length ?? 0;
            CountText.Text = count + (count == 1 ? " participant" : " participants");
            AdminText.Text = group.Members?.FirstOrDefault()?.DisplayName ?? "";
        }

        private void WorkInProgress_Click(object sender, RoutedEventArgs e)
        {
            Universal.ShowMessage("This part of the group profile is still being built.", "Group profile");
        }

        private void WorkInProgress_Click(object sender, PointerReleasedEventArgs e)
        {
            Universal.ShowMessage("This part of the group profile is still being built.", "Group profile");
        }
    }
}
