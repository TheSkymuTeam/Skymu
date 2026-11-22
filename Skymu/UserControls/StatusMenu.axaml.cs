using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using Skymu.Crossplatform;
using Skymu.ViewModels;
using Yggdrasil.Enumerations;

namespace Skymu.Controls;

public partial class StatusMenu : ContextMenu
{
    public StatusMenu()
    {
        InitializeComponent();
    }

    private async void StatusMenuItemClick(object sender, RoutedEventArgs e)
    {
        string name = ((MenuItem)sender).Name.Substring(3);
        if (name == "dnd")
            Universal.ActiveViewModel.InformDND();

        PresenceStatus status = Universal.ActiveViewModel.GetConnectionStatusFromName(name);
        if (status == PresenceStatus.Unknown) return;

        await Universal.Plugin.SetConnectionStatus(status);
    }
}