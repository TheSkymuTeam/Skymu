/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Converters;
using Skymu.Enumerations;
using Skymu.Emoticons;
using Skymu.Formatting;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.ViewModels;
using Skymu.Forms;
using Skymu.Forms.Pages;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Shell;
using Skymu.Windows;
using Skymu.Sounds;
using System.Windows.Threading;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Skymu.Skype5
{
    public partial class Main : Window, IMainWindowHolder
    {
        #region Variables

        // ViewModel
        private MainViewModel vmodel;

        // Other file-level variables
        private readonly WindowFrame _currentFrame = Settings.WindowFrame;
        private Thickness OriginalWindowAreaMargin;
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp = false;
        private BitmapImage img_maximize,
            img_restore,
            img_split,
            img_join;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        internal static bool IsWindowActive = false;
        private bool is_loading_conversation => vmodel?.IsLoadingConversation ?? false;
        private WindowType current_window = WindowType.Chat;
        private string PlaceholderTextMTB = string.Empty;
        public event EventHandler Ready;

        private enum WindowType
        {
            Home,
            Chat,
        }

        public static readonly DependencyProperty WindowTitleProperty = DependencyProperty.Register(
            "WindowTitle",
            typeof(string),
            typeof(Main),
            new PropertyMetadata(
                null,
                (d, e) =>
                {
                    ((Main)d).Title = (string)e.NewValue;
                }
            )
        );

        public string WindowTitle
        {
            get { return (string)GetValue(WindowTitleProperty); }
            set { SetValue(WindowTitleProperty, value); }
        }

        private readonly BitmapImage sendBtnSmall = ImageHelper.FreezeLoad(
            "Universal/Chat/msg-send-button.png"
        );
        private readonly BitmapImage sendBtnFull = ImageHelper.FreezeLoad(
            "Universal/Chat/msg-send-button-full.png"
        );

        private readonly BitmapImage contactsBtnImage = ConversionHelpers.AssetPathGenerator(
            "Sidebar/contacts.png",
            false
        );
        private readonly BitmapImage recentsBtnImage = ConversionHelpers.AssetPathGenerator(
            "Sidebar/recents.png",
            false
        );
        private readonly BitmapImage contactsBtnImageEmpty = ConversionHelpers.AssetPathGenerator(
            "Sidebar/contacts-empty.png",
            false
        );
        private readonly BitmapImage recentsBtnImageEmpty = ConversionHelpers.AssetPathGenerator(
            "Sidebar/recents-empty.png",
            false
        );

        private Metadata SelectedContact;

        #endregion

        #region BitmapImage generators
        private BitmapImage GenerateTitlebarButtonImage(string name)
        {
            string framedir = "Aero";
            if (_currentFrame == WindowFrame.SkypeBasic) framedir = "Basic";

            return ImageHelper.FreezeLoad(
                $"Universal/Window Frame/{framedir}/{name}/combined.png"
            );
        }

        private BitmapImage GenerateAvatarImage(string avatar)
        {
            return ImageHelper.FreezeLoad(Settings.ThemeRoot + "/Profile Pictures/" + avatar + ".png");
        }

        #endregion

        #region Home and Chat window switching

        private void SetWindow(WindowType type, bool force = false)
        {
            if (vmodel.SelectedConversation is Group)
            {
                VideoCallButton.Visibility = Visibility.Collapsed;
                CallButton.IsEnabled = false;
                CallDropdown.IsEnabled = false;
                CallButton.Visibility = Visibility.Visible;
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALLGROUP"];
            }
            else if (vmodel.SelectedConversation is ServerChannel)
            {
                VideoCallButton.Visibility = Visibility.Collapsed;
                CallButton.Visibility = Visibility.Collapsed;
                CallDropdown.Visibility = Visibility.Collapsed;
            }
            else
            {
                VideoCallButton.Visibility = Visibility.Visible;
                CallButton.Visibility = Visibility.Visible;
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.IsEnabled = true;
                CallDropdown.IsEnabled = true;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALL"];
            }

            if (type == current_window && !force)
                return;

            current_window = type;
            switch (type)
            {
                case WindowType.Home:
                    ClearConversation();
                    ToggleStatusBoxSelection(true);

                    HomeTopbar.Visibility = Visibility.Visible;
                    ChatTopbar.Visibility = Visibility.Collapsed;
                    ChatProfileArea.Visibility = Visibility.Collapsed;
                    MessageWindow.Visibility = Visibility.Collapsed;

                    MessageWindowRow.Height = new GridLength(0);
                    if (Settings.EnableSkypeHome)
                        browser.Visibility = Visibility.Visible;
                    else
                        HomeUnavailable.Visibility = Visibility.Visible;
                    MainPageButton.SetState(ButtonVisualState.Pressed);
                    ConversationList.SelectedItem = null;
                    SelectedContact = null;
                    ClearTreeSelection(ServersList);

                    MessageWindowRow.Height = new GridLength(0);

                    ChatTopBarSplitter.Visibility = Visibility.Collapsed;
                    ChatTopbarSplitterRow.MaxHeight = 0;
                    TWR_ORIGINAL_HEIGHT = TopbarWindowRow.Height.Value;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    TopbarWindowRow.MaxHeight = Double.PositiveInfinity;
                    break;

                case WindowType.Chat:
                    ToggleStatusBoxSelection(false);
                    StatusBox.SetState(ButtonVisualState.Default);
                    HomeTopbar.Visibility = Visibility.Collapsed;
                    ChatTopbar.Visibility = Visibility.Visible;
                    ChatProfileArea.Visibility = Visibility.Visible;
                    MessageWindow.Visibility = Visibility.Visible;
                    browser.Visibility = Visibility.Collapsed;
                    HomeUnavailable.Visibility = Visibility.Collapsed;

                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);

                    ChatTopBarSplitter.Visibility = Visibility.Visible;
                    ChatTopbarSplitterRow.MaxHeight = CTR_ORIGINAL_MAXHEIGHT;
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    TopbarWindowRow.MaxHeight = screen == null ? TWR_ORIGINAL_MAXHEIGHT : ChatArea.ActualHeight * 0.7;
                    if (location != null)
                        SetCallPageLocation(location);
                    break;
            }
        }

        private void ClearTreeSelection(TreeView tree)
        {
            if (tree.SelectedItem == null)
                return;

            TreeViewItem container = GetContainerFromItem(tree, tree.SelectedItem);
            if (container != null)
                container.IsSelected = false;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            StatusBox.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
            StatusBox.TextColor = selected
                ? Brushes.White
                : (SolidColorBrush)Application.Current.Resources["Text.HighContrast"];
            SBHomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        private TreeViewItem GetContainerFromItem(ItemsControl parent, object item)
        {
            if (parent == null)
                return null;

            TreeViewItem container =
                parent.ItemContainerGenerator.ContainerFromItem(item) as TreeViewItem;

            if (container != null)
                return container;

            foreach (object child in parent.Items)
            {
                TreeViewItem parentContainer =
                    parent.ItemContainerGenerator.ContainerFromItem(child) as TreeViewItem;

                TreeViewItem result = GetContainerFromItem(parentContainer, item);
                if (result != null)
                    return result;
            }

            return null;
        }

        #endregion

        #region Custom window logic

        public void InitializeWindowFrame()
        {
            if (_currentFrame != WindowFrame.Native) // using Skype's custom border
            {
                OriginalWindowAreaMargin = WindowArea.Margin; // for maximization stuff
                WindowChrome chrome = new WindowChrome();
                //chrome.UseAeroCaptionButtons = false;
                WindowChrome.SetWindowChrome(this, chrome); // WindowChrome configuration ensures that system frame is not drawn
                SetClickable(TitleBarIcon, close, minimize, maximize, split);
                TitleMain.Visibility = Visibility.Visible;
                if (
                    _currentFrame == WindowFrame.SkypeAero
                    || _currentFrame == WindowFrame.SkypeAeroCustom
                ) // switch configuration from Skype Basic to Aero
                {
                    Thickness AeroThickness = new Thickness(8, 30, 8, 8);
                    OriginalWindowAreaMargin = AeroThickness;
                    chrome.GlassFrameThickness = AeroThickness;
                    // Set up the window background and margin
                    WindowArea.Margin = AeroThickness;
                    TitleBar.Background = Brushes.Transparent;
                    if (_currentFrame == WindowFrame.SkypeAero)
                    {
                        this.Background = Brushes.Transparent;
                    }
                    else if (_currentFrame == WindowFrame.SkypeAeroCustom) // TODO: finish this
                    {
                        var img = ImageHelper.FreezeLoad(
                            "Universal/Window Frame/Aero/aero-background.png"
                        );
                        this.Background = new ImageBrush
                        {
                            ImageSource = img,
                            Stretch = Stretch.None,
                            TileMode = TileMode.None,
                            ViewportUnits = BrushMappingMode.Absolute,
                            Viewport = new Rect(0, 0, img.Width, img.Height),
                        };
                    }

                    // Titlebar font styling
                    TitleMain.FontFamily = new FontFamily("Segoe UI");
                    TitleMain.FontWeight = FontWeights.Normal;
                    TitleMain.FontSize = 12;
                    TitleMain.Foreground = Brushes.Black;

                    // Titlebar drop shadow (Imitates the Aero glow effect)
                    TitleMain.Effect = new DropShadowEffect
                    {
                        ShadowDepth = 0,
                        Direction = 330,
                        Color = Colors.White,
                        Opacity = 1,
                        BlurRadius = 20,
                    };

                    Style aeroStyle = (Style)FindResource("TitlebarTextStyleAero");
                    TitleMain.Style = aeroStyle;
                    TitleShadow.Style = aeroStyle;
                    TitleShadow2.Style = aeroStyle;
                    TitleShadow3.Style = aeroStyle;
                    TitleBarIcon.Margin = new Thickness(8, 5, 0, 0);
                }

                img_maximize = GenerateTitlebarButtonImage("maximize");
                img_restore = GenerateTitlebarButtonImage("restore");
                img_split = GenerateTitlebarButtonImage("split");
                img_join = GenerateTitlebarButtonImage("join");

                close.Source = GenerateTitlebarButtonImage("close");
                maximize.Source = img_maximize;
                minimize.Source = GenerateTitlebarButtonImage("minimize");
                split.Source = img_split;
            }
            else // using system native border
            {
                WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0);
            }
        }

        private DropShadowEffect CreateDropShadow(string color)
        {
            return new DropShadowEffect()
            {
                Color = (Color)Application.Current.Resources[color],
                BlurRadius = 15,
                ShadowDepth = 0,
                Opacity = 1,
            };
        }

        private void SetClickable(params IInputElement[] buttons)
        {
            foreach (var b in buttons)
                WindowChrome.SetIsHitTestVisibleInChrome(b, true);
        }

        private void HandleWindowStateChanged()
        {
            if (OriginalWindowAreaMargin.Top != 0)
            {
                if (WindowState == WindowState.Maximized)
                {
                    maximize.Source = img_restore;
                    FrameArea.Margin = new Thickness(0, 5, 0, 0);
                    Thickness ReducedWinAreaMargin = OriginalWindowAreaMargin;
                    ReducedWinAreaMargin.Top -= 4;
                    WindowArea.Margin = ReducedWinAreaMargin;
                }
                else
                {
                    maximize.Source = img_maximize;
                    FrameArea.Margin = new Thickness(0);
                    WindowArea.Margin = OriginalWindowAreaMargin;
                }
            }
        }

        private void HandleWindowButtonEnter(SliceControl button)
        {
            if (button != null && _currentFrame != WindowFrame.SkypeBasic)
            {
                if (button.Name == "close")
                {
                    button.Effect = CreateDropShadow("WindowFrame.Button.Close.Glow");
                }
                else
                {
                    button.Effect = CreateDropShadow("WindowFrame.Button.Generic.Glow");
                }
            }
        }

        private void HandleWindowButtonLeave(SliceControl button)
        {
            if (IsWindowActive)
            {
                if (button != null)
                {
                    button.Effect = null;
                }
            }
            else if (!IsWindowActive)
            {
                button.Effect = null;
            }
        }

        private void FillSolid()
        {
            ContentBgTop.Fill = (Brush)Application.Current.Resources["Background"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Background"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Card.Border"];
            MenuBarArea.Background = (Brush)Application.Current.Resources["Background"];
            if (_currentFrame == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Background"];
                this.Background = (Brush)Application.Current.Resources["Background"];
            }
        }

        private void HandleWindowActivated()
        {
            IsWindowActive = true;
            if (vmodel != null)
                vmodel.IsWindowActive = true;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Active.Window"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Active.Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Active.Menubar"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Active.Background"];

            if (_currentFrame == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Active.Titlebar"];
                this.Background = (Brush)Application.Current.Resources["Active.Background"];
            }
        }

        private void HandleWindowDeactivated()
        {
            IsWindowActive = false;
            if (vmodel != null)
                vmodel.IsWindowActive = false;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 3;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Inactive.Window"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Inactive.Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Inactive.Menubar"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Inactive.Background"];

            if (_currentFrame == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Inactive.Titlebar"];
                this.Background = (Brush)Application.Current.Resources["Inactive.Background"];
            }
        }

        private void HandleWindowButtonClick(SliceControl button)
        {
            if (button != null)
            {
                switch (button.Name)
                {
                    case "close":
                        Close();
                        break;
                    case "split":
                        Universal.NotImplemented("Split Window");
                        break;
                    case "minimize":
                        WindowState = WindowState.Minimized;
                        break;
                    case "maximize":
                        if (WindowState == WindowState.Normal)
                            WindowState = WindowState.Maximized;
                        else
                            WindowState = WindowState.Normal;
                        break;
                }
            }
        }

        #endregion

        #region Sidebar tab selection and population
        internal async Task InitSidebar() => await vmodel.InitSidebar();

        public Task BeginLoading() => vmodel.InitSidebar();

        private async void HandleConversationSelection(object selected_item)
        {
            if (selected_item == null)
                return;

            ChatArea.DataContext = selected_item;
            vmodel.SelectedConversation = (Conversation)selected_item;
            await SetConversation();
        }

        private async Task HandleServerItemSelection(object value)
        {
            if (value is CategoryHeaderItem)
                return;

            ChatArea.DataContext = value;

            if (value is ServerChannel channel)
            {
                vmodel.SelectedConversation = channel;
                await SetConversation();
            }
        }

        private void ConfigureCompactRecentsList()
        {
            var grouped = CompactRecentsHelper.GroupByDate(vmodel.ConversationList);
            var selector = new CompactRecentsTemplateSelector
            {
                DateHeaderTemplate = (DataTemplate)FindResource("DateHeaderTemplate"),
                CompactDirectMessageTemplate = (DataTemplate)FindResource(
                    "CompactDirectMessageTemplate"
                ),
                CompactGroupTemplate = (DataTemplate)FindResource("CompactGroupTemplate"),
            };
            ConversationList.ItemTemplateSelector = selector;
            ConversationList.ItemsSource = grouped;
        }

        private async Task SelectTab(SliceControl tab_to_select)
        {
            if (tab_to_select.Name == "btnServers")
            {
                ConversationList.Visibility = Visibility.Collapsed;
                ServersList.Visibility = Visibility.Visible;
            }
            else
            {
                ConversationList.Visibility = Visibility.Visible;
                ServersList.Visibility = Visibility.Collapsed;
                ConversationList.ItemsSource = null;
            }

            GridLength dynamic = new GridLength(1, GridUnitType.Star);
            GridLength small = new GridLength(32);

            tab_to_select.SetState(ButtonVisualState.Pressed);
            if (Universal.Plugin.SupportsServers)
                buttonToColumn[tab_to_select].Width = dynamic;
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
            {
                if (tab == tab_to_select)
                    continue;
                tab.SetState(ButtonVisualState.Default);
                if (Universal.Plugin.SupportsServers)
                    buttonToColumn[tab].Width =
                    Settings.DynamicSidebarTabs && Universal.Plugin.SupportsServers
                        ? small
                        : dynamic;
            }

            //SetWindow(WindowType.Home); Okay - this was here before, but why? Isn't this inaccurate?

            switch (tab_to_select.Name)
            {
                case "btnServers":
                    ServersList.ItemsSource = await vmodel.GetServerList();
                    break;
                case "btnContacts":
                    ConversationList.ItemTemplateSelector = null;
                    ConversationList.ItemsSource = vmodel.ContactList;
                    break;
                case "btnRecents":
                    ConfigureCompactRecentsList();
                    break;
            }
            if (
                tab_to_select.Name != "btnServers"
                && SelectedContact != null
                && SelectedContact is Metadata
            )
            {
                foreach (object item in ConversationList.Items)
                {
                    if (
                        item is Conversation
                        && ((Metadata)item).Identifier == ((Metadata)SelectedContact).Identifier
                    )
                    {
                        ConversationList.SelectedItem = item;
                    }
                }
            }
        }

        #endregion

        #region Resizing stuff

        private double CTR_ORIGINAL_MAXHEIGHT;
        private double CBR_ORIGINAL_HEIGHT;

        private double TWR_ORIGINAL_HEIGHT;
        private double TWR_ORIGINAL_MINHEIGHT;
        private double TWR_ORIGINAL_MAXHEIGHT;
        private double TWR_HEIGHT_CALLS_CHAT;
        private double TWR_ORIGINAL_MAXHEIGHT_CALLS;

        private double SIDEBAR_ORIGINAL_WIDTH; // dynamic
        private double SIDEBAR_ORIGINAL_MINWIDTH;
        private GridLength SIDEBAR_SPLITTER_ORIGINAL_WIDTH;

        private bool SkypeSplitterIsDragging = false;
        private bool ChatTopBarSplitterIsDragging = false;
        private Point dragStart;
        private UIElement capturedElement = null;

        private void SkypeSplitter_MouseMove(object sender, MouseEventArgs e)
        {
            if (SkypeSplitterIsDragging)
            {
                Point current = e.GetPosition(this);
                Vector delta = current - dragStart;
                ColumnDefinition sidebarCol = ContentArea.ColumnDefinitions[0];
                double max = sidebarCol.MaxWidth;
                double min = sidebarCol.MinWidth;

                double newWidth = sidebarCol.Width.Value + delta.X;

                if (newWidth < min)
                    newWidth = min;
                if (newWidth > max)
                    newWidth = max;

                sidebarCol.Width = new GridLength(newWidth);
                dragStart = current;

                Sidebar_SizeChanged_Refresh();
            }
        }

        private void SkypeSplitter_Press(object sender, MouseButtonEventArgs e)
        {
            MouseRelease(null, null); // Release previous element first. Potentially avoids weird behavior on touch screen, etc.
            SkypeSplitterIsDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as UIElement;

            if (capturedElement != null)
            {
                capturedElement.CaptureMouse();
                e.Handled = true;
            }
        }

        private void ChatTopBarSplitter_MouseMove(object sender, MouseEventArgs e)
        {
            if (ChatTopBarSplitterIsDragging)
            {
                Point current = e.GetPosition(this);
                Vector delta = current - dragStart;
                RowDefinition row = ChatArea.RowDefinitions[1];
                double max = row.MaxHeight;
                double min = row.MinHeight;

                double newHeight = row.Height.Value + delta.Y;

                if (newHeight < min)
                    newHeight = min;
                if (newHeight > max)
                    newHeight = max;

                row.Height = new GridLength(newHeight);
                dragStart = current;

                TWR_ORIGINAL_HEIGHT = newHeight;
            }
        }

        private void ChatTopBarSplitter_Press(object sender, MouseButtonEventArgs e)
        {
            MouseRelease(null, null);
            ChatTopBarSplitterIsDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as UIElement;

            if (capturedElement != null)
            {
                capturedElement.CaptureMouse();
                e.Handled = true;
            }
        }

        private void MouseRelease(object sender, MouseButtonEventArgs e)
        {
            if (SkypeSplitterIsDragging || ChatTopBarSplitterIsDragging)
            {
                SkypeSplitterIsDragging = false;
                ChatTopBarSplitterIsDragging = false;

                if (capturedElement != null && capturedElement.IsMouseCaptured)
                {
                    capturedElement.ReleaseMouseCapture();
                }
                capturedElement = null;
                if (e != null)
                    e.Handled = true;
            }
        }

        private void Sidebar_SizeChanged_Refresh()
        {
            if (btnServers.Visibility == Visibility.Collapsed)
            {
                if (SidebarColumn.Width.Value <= 185)
                {
                    btnContacts.Source = contactsBtnImageEmpty;
                    btnRecents.Source = recentsBtnImageEmpty;
                    btnContacts.TextLeftMargin = 5;
                    btnRecents.TextLeftMargin = 5;
                    SidebarTabs.ColumnDefinitions[0].Width = GridLength.Auto;
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Left;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Center;
                }
                else
                {
                    btnContacts.Source = contactsBtnImage;
                    btnRecents.Source = recentsBtnImage;
                    btnContacts.TextLeftMargin = 30;
                    btnRecents.TextLeftMargin = 30;
                    SidebarTabs.ColumnDefinitions[0].Width = new GridLength(1, GridUnitType.Star);
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Stretch;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Left;
                }
            }
            if (SidebarColumn.Width.Value < 195)
            {
                MakeGroupButton.OverlayText.Visibility = Visibility.Collapsed;
                MakeGroupButton.TextLeftMargin = 0;
            }
            else
            {
                MakeGroupButton.OverlayText.Visibility = Visibility.Visible;
                MakeGroupButton.TextLeftMargin = 41;
            }
            if (SidebarColumn.Width.Value < 245)
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_SHORT"];
            else
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_LONG"];
        }

        #endregion

        #region User count API

        private bool CanSetStatus()
        {
            int index = StatusIcon.DefaultIndex;
            if (index == 5 || index == 2 || index == 3 || index == 19)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        #endregion

        #region Event handlers

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.ActualWidth / 2;
            if (screen != null && location.ChatToggle)
                TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
            UpdateMessageSendButtonState();
        }

        private void UpdateMessageSendButtonState()
        {
            // TODO: Don't rely on this. Rely on chat width. Also use Width, not ActualWidth. Maybe this is why the thing is laggy?
            MessageWindow.UpdateLayout();
            if (MessageWindow.ActualWidth <= 720 && MessageWindow.ActualWidth != 0)
            {
                SendMsgButton.Text = "";
                SendMsgButton.Source = sendBtnSmall;
            }
            else
            {
                SendMsgButton.Text = Universal.Lang["sZAPBUTTON_SENDMESSAGE"];
                SendMsgButton.Source = sendBtnFull;
            }
        }

        private async void ServerListItem_Clicked(object sender, MouseButtonEventArgs e)
        {
            var item = (TreeViewItem)sender;
            var data = item.DataContext;

            SelectedContact = null;

            await HandleServerItemSelection(data);
        }

        private void ConversationList_ItemClicked(object sender, MouseButtonEventArgs e)
        {
            var selected = ((ListBox)sender).SelectedItem;
            if (selected != null && selected is Metadata)
                SelectedContact = (Metadata)selected;
            if (selected is DateHeaderItem)
            {
                ((ListBox)sender).SelectedItem = null;
                return;
            }
            HandleConversationSelection(selected);
        }

        private void Chat_Close(object sender, MouseButtonEventArgs e)
        {
            SetWindow(WindowType.Home);
        }

        private void StatusArea_Click(object sender, MouseButtonEventArgs e)
        {
            OpenStatusMenu();
        }

        private async void SidebarTab_BtnDown(object sender, MouseButtonEventArgs e)
        {
            await SelectTab(sender as SliceControl);
        }

        private void TitleButton_Click(object sender, MouseButtonEventArgs e)
        {
            HandleWindowButtonClick(sender as SliceControl);
        }

        private void TitleButton_MouseLeave(object sender, MouseEventArgs e)
        {
            HandleWindowButtonLeave(sender as SliceControl);
        }

        private void TitleButton_MouseEnter(object sender, MouseEventArgs e)
        {
            HandleWindowButtonEnter(sender as SliceControl);
        }

        private void Window_StateChanged(object sender, EventArgs e)
        {
            HandleWindowStateChanged();
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            HandleWindowActivated();
        }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            HandleWindowDeactivated();
        }

        private async void TitleBarIcon_MouseDown(object sender, MouseButtonEventArgs e) 
        {
            await vmodel.EasterEgg(MainViewModel.Egg.SkypeMemeVideo);
        }

        private void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            HandleStatusItemClick(sender as MenuItem);
        }

        private void Main_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        protected override void OnClosed(EventArgs e)
        {
            vmodel.SavePositioning(this, SidebarColumn);
        }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        private void OnContacts(object sender, RoutedEventArgs e)
        {
            _ = SelectTab(btnContacts);
        }

        private void OnRecent(object sender, RoutedEventArgs e)
        {
            _ = SelectTab(btnRecents);
        }

        private void OnHome(object sender, RoutedEventArgs e) => SetWindow(WindowType.Home);

        private void OnOptions(object sender, RoutedEventArgs e)
        {
            new Options().Show();
        }

        private void OnAbout(object sender, RoutedEventArgs e)
        {
            new About().Show();
        }

        private void OnPrivacyPolicy(object sender, RoutedEventArgs e)
        {
            Universal.OpenUrl(Universal.SKYMU_WEBSITE_PRIVACY);
        }

        private void OnCheckUpdates(object sender, RoutedEventArgs e)
        {
            new Updater(true);
        }

        private void OnCall(object sender, RoutedEventArgs e) => CallButtonClick(null, null);

        private void OnAddContact(object sender, RoutedEventArgs e) => AddContact_Click(null, null);

        private void OnSignOut(object sender, RoutedEventArgs e) => InitiateSignOut();

        private void OnSwitchUser(object sender, RoutedEventArgs e) => InitiateSignOut(true);

        private async void OnStatus(object sender, RoutedEventArgs e)
        {
            await vmodel.SetStatusFromMenuItems(sender, MenubarStatusHolder.Items);
        }

        private void MakeGroup_Click(object sender, MouseButtonEventArgs e) { }

        private void AddContact_Click(object sender, MouseButtonEventArgs e)
        {
            vmodel.ShowAddContactWindow();
        }

        private async void OnMsgSendClickButton(object sender, MouseButtonEventArgs e)
        {
            await SendMessage();
        }

        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            await vmodel.RunSpeedTest();
        }

        private void ConversationItemsList_Loaded(object sender, RoutedEventArgs e)
        {
            HandleConversationItems();
        }

        private void SearchBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);
            MainViewModel.RemovePlaceholder(SearchBox);
        }

        private void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);
            MainViewModel.SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
        }

        private void MessageTextBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            MainViewModel.RemovePlaceholder(MessageTextBox);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = MainViewModel.CheckIfMessageSendable(MessageTextBox);
        }

        private void MessageTextBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            CheckIfMTBUnfocused(true);
        }

        private async void MessageTextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Enter)
                return;
            if (Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
                return;

            e.Handled = true;
            await SendMessage();
        }

        private void WindowArea_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Keyboard.ClearFocus();
        }

        private void MessageTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (SendMsgButton != null) SendMsgButton.IsEnabled = MainViewModel.CheckIfMessageSendable(MessageTextBox);
            if (MainViewModel.HasAnyContent(MessageTextBox))
                vmodel.lastTypingActivity = DateTime.UtcNow;
        }

        private void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            vmodel.ShowCallPhones();
        }

        private async void AddButtonClick(object sender, MouseButtonEventArgs e)
        {
            await vmodel.SendFile();
        }

        private void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            StartCall();
        }

        private void EmojiButton_Click(object sender, MouseButtonEventArgs e)
        {
            EmojiFlyout.IsOpen = true;
        }

        #endregion

        #region Message sending

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message == null)
                return;

            string message_body = message ?? MainViewModel.ExtractText(MessageTextBox);

            MessageTextBox.Document.Blocks.Clear();
            MessageTextBox.Document.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
            CheckIfMTBUnfocused();

            await vmodel.SendMessage(message_body);
        }

        private void CheckIfMTBUnfocused(bool force = false)
        {
            if (!MessageTextBox.IsKeyboardFocused || force)
            {
                if (!MainViewModel.HasAnyContent(MessageTextBox))
                {
                    MainViewModel.SetPlaceholder(MessageTextBox, PlaceholderTextMTB);
                }
                if (SendMsgButton != null) SendMsgButton.IsEnabled = MainViewModel.CheckIfMessageSendable(MessageTextBox);
            }
        }

        #endregion

        #region Calls

        private Frame frame;
        private CallScreen screen;
        private CallScreen.LocationChangeEventArgs location;
        private CallScreen.LocationChangeEventArgs initial_location =
            new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);

        private async void StartCall(User partner = null)
        {
            bool answer_call = true;
            if (Universal.CallPlugin == null)
                return;

            if (partner == null)
            {
                var dm = vmodel.SelectedConversation as DirectMessage;
                if (dm == null)
                    return; // group calls not supported yet
                partner = dm.Partner;
                answer_call = false;
            }
            CallScreen.LocationChangeEventArgs initial_location =
                new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);

            if (TWR_ORIGINAL_HEIGHT == default)
                TWR_ORIGINAL_HEIGHT = TopbarWindowRow.Height.Value;
            if (SIDEBAR_SPLITTER_ORIGINAL_WIDTH == default)
                SIDEBAR_SPLITTER_ORIGINAL_WIDTH = SkypeSplitterColumn.Width;
            if (SIDEBAR_ORIGINAL_MINWIDTH == default)
                SIDEBAR_ORIGINAL_MINWIDTH = SidebarColumn.MinWidth;
            if (TWR_ORIGINAL_MINHEIGHT == default)
                TWR_ORIGINAL_MINHEIGHT = TopbarWindowRow.MinHeight;
            if (TWR_ORIGINAL_MAXHEIGHT_CALLS == default)
                TWR_ORIGINAL_MAXHEIGHT_CALLS = TopbarWindowRow.MaxHeight;
            if (CBR_ORIGINAL_HEIGHT == default)
                CBR_ORIGINAL_HEIGHT = ChatButtonRow.Height.Value;
            SIDEBAR_ORIGINAL_WIDTH = SidebarColumn.Width.Value;
            TopbarWindowRow.MinHeight = 250;
            TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
            TopbarWindowRow.Height = new GridLength(ChatArea.ActualHeight * 0.7); // TODO: Retain this across reboots and sessions
            ChatButtonRow.Height = new GridLength(0);

            screen = new CallScreen(partner, initial_location, answer_call);
            screen.HangUpRequested += OnHangUp;
            screen.LocationChangeRequested += OnLocationChanged;
            frame = new Frame();
            frame.Navigate(screen);
            SetCallPageLocation(initial_location);

            await screen.StartCall(vmodel.SelectedConversation, false);
        }

        private void OnLocationChanged(object sender, CallScreen.LocationChangeEventArgs e)
        {
            SetCallPageLocation(e);
        }

        private void OnHangUp(object sender, EventArgs e)
        {
            SetCallPageLocation(null);
        }

        private void SetCallPageLocation(CallScreen.LocationChangeEventArgs location, bool storeChatStatus = true)
        {
            if (frame != null)
            {
                frame.HorizontalContentAlignment = HorizontalAlignment.Stretch;
                frame.VerticalContentAlignment = VerticalAlignment.Stretch;
                frame.HorizontalAlignment = HorizontalAlignment.Stretch;
                frame.VerticalAlignment = VerticalAlignment.Stretch;
            }

            if (location == null)
            {
                Settings.HideLeftHandSide = !this.location.SidebarToggle;
                Settings.Save();
                SetCallPageLocation(new CallScreen.LocationChangeEventArgs(true, true), false); // quickly reset stuff
                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;
                ChatProfileArea.Visibility = Visibility.Visible;
                FillMessagePanelHost.Visibility = Visibility.Collapsed;
                TopbarWindowRow.MinHeight = TWR_ORIGINAL_MINHEIGHT;
                TopbarWindowRow.MaxHeight = TWR_ORIGINAL_MAXHEIGHT_CALLS;
                TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                ChatButtonRow.Height = new GridLength(CBR_ORIGINAL_HEIGHT);
                if (screen != null)
                {
                    screen.HangUpRequested -= OnHangUp;
                    screen.LocationChangeRequested -= OnLocationChanged;
                    screen.Visibility = Visibility.Collapsed;
                    frame.Visibility = Visibility.Collapsed;
                    screen = null;
                    frame.Content = null;
                    frame = null;
                }
                this.location = null;
                SetWindow(WindowType.Chat, true);
            }
            else
            {
                this.location = location;
                // Disable it here (bugfix)
                ChatProfileArea.Visibility = Visibility.Collapsed;
                // Show ContentArea here, as it is visible in all cases except with both sidebar and chat hidden
                ContentArea.Visibility = Visibility.Visible;
                // Same for this, but with chat hidden only now
                ChatTopBarSplitter.Visibility = Visibility.Collapsed;
                ChatTopbarSplitterRow.MaxHeight = 0;

                if (storeChatStatus)
                    initial_location.ChatToggle = location.ChatToggle;

                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;

                // Show sidebar
                if (location.SidebarToggle)
                {
                    SidebarColumn.Width = new GridLength(SIDEBAR_ORIGINAL_WIDTH);
                    SidebarColumn.MinWidth = SIDEBAR_ORIGINAL_MINWIDTH;
                    SkypeSplitterColumn.Width = SIDEBAR_SPLITTER_ORIGINAL_WIDTH;
                }
                // Show chat
                if (location.ChatToggle)
                {
                    if (TWR_HEIGHT_CALLS_CHAT == default)
                        TWR_HEIGHT_CALLS_CHAT = ChatArea.ActualHeight * 0.7;
                    TopbarWindowRow.Height = new GridLength(TWR_HEIGHT_CALLS_CHAT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
                    ChatTopBarSplitter.Visibility = Visibility.Visible;
                    ChatTopbarSplitterRow.MaxHeight = int.MaxValue;
                }
                // Show everything
                if (location.SidebarToggle && location.ChatToggle)
                {
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    FillMessagePanelHost.Visibility = Visibility.Visible;
                    FillMessagePanelHost.Content = frame;
                    return;
                }
                // Show nothing
                if (!location.SidebarToggle && !location.ChatToggle)
                {
                    ContentArea.Visibility = Visibility.Collapsed;
                    FillWindowHost.Content = frame;
                    return;
                }
                // Hide sidebar
                if (!location.SidebarToggle)
                {
                    SIDEBAR_ORIGINAL_WIDTH = SidebarColumn.Width.Value;
                    SidebarColumn.Width = new GridLength(0);
                    SidebarColumn.MinWidth = 0;
                    SkypeSplitterColumn.Width = new GridLength(0);
                }
                // Hide chat
                else if (!location.ChatToggle)
                {
                    TWR_HEIGHT_CALLS_CHAT = TopbarWindowRow.ActualHeight;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    TopbarWindowRow.MaxHeight = Double.PositiveInfinity;
                }
                // We fill the message panel in sidebar or chat shown cases
                FillMessagePanelHost.Visibility = Visibility.Visible;
                FillMessagePanelHost.Content = frame;
            }
        }

        #endregion

        #region Conversation

        private void ClearConversation()
        {
            Universal.Plugin.TypingUsersList.Clear();
            ConversationItemsList.ItemsSource = null;
            vmodel.ClearActiveConversation();
        }

        private async Task SetConversation()
        {
            _userScrolledUp = false;
            ClearConversation();
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format(
                "sCHAT_TYPE_HERE_DIALOG",
                vmodel.SelectedConversation?.DisplayName
            );
            MainViewModel.SetPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = MainViewModel.CheckIfMessageSendable(MessageTextBox);
            throbber.Visibility = Visibility.Visible;

            await vmodel.SetConversation();

            if (vmodel.SelectedConversation == null)
                return;

            ConversationItemsList.ItemsSource = vmodel.ActiveConversation;
            throbber.Visibility = Visibility.Collapsed;
            _conversationScrollViewer?.ScrollToEnd();
            UpdateMessageSendButtonState();
        }

        private void HandleConversationItems()
        {
            ConversationItemsList.ApplyTemplate();
            if (_conversationScrollViewer != null)
                _conversationScrollViewer.ScrollChanged -= ConversationScrollChanged;

            _conversationScrollViewer =
                ConversationItemsList.Template.FindName("ScrollViewer", ConversationItemsList)
                as ScrollViewer;
            _conversationScrollViewer.ScrollChanged += ConversationScrollChanged;
        }

        private void ConversationScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            if (e.ExtentHeightChange == 0)
                _userScrolledUp =
                    _conversationScrollViewer.VerticalOffset
                    < _conversationScrollViewer.ScrollableHeight - 10;
        }

        #endregion

        #region Emoji picker

        private void InitializeEmojiPicker()
        {
            foreach (var (emojiKey, emojiFilename) in vmodel.GetUniqueEmojiList())
            {
                var border = new Border
                {
                    Width = 28,
                    Height = 28,
                    Margin = new Thickness(1),
                    Background = Brushes.Transparent,
                    Cursor = Cursors.Hand,
                    ToolTip = MainViewModel.ConvertHexKeyToUnicode(emojiKey),
                };
                try
                {
                    var sliceControl = Formatter.MakeEmoji(emojiFilename);
                    sliceControl.Tag = emojiFilename;
                    border.Child = sliceControl;
                    border.MouseLeftButtonUp += EmojiBox_Click;
                    border.MouseEnter += (s, ev) =>
                        ((Border)s).Background = new SolidColorBrush(
                            Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF)
                        );
                    border.MouseLeave += (s, ev) => ((Border)s).Background = Brushes.Transparent;
                    EmojiWrapPanel.Children.Add(border);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[EMOJI] Failed to load emoji: {emojiFilename} - {ex.Message}");
                }
            }
        }

        private void SetEmojiPickerAnimation(bool animate)
        {
            foreach (var child in EmojiWrapPanel.Children)
            {
                if (child is Border border && border.Child is SliceControl sc)
                {
                    sc.IsAnimation = animate;
                }
            }
        }

        private void EmojiBox_Click(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            var sliceControlInside = border?.Child as SliceControl;
            if (sliceControlInside == null)
                return;

            EmojiFlyout.IsOpen = false;
            MainViewModel.RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var sliceControl = Formatter.MakeEmoji(emojiFilename);

            if (!MessageTextBox.Selection.IsEmpty)
                MessageTextBox.Selection.Text = string.Empty;

            TextPointer caret = MessageTextBox.CaretPosition;
            if (!caret.IsAtInsertionPosition)
                caret = caret.GetInsertionPosition(LogicalDirection.Forward);

            var container = new InlineUIContainer(sliceControl, caret)
            {
                BaselineAlignment = BaselineAlignment.Center,
                Tag = emojiFilename,
            };
            var spaceRun = new Run(" ");
            container.SiblingInlines.InsertAfter(container, spaceRun);
            MessageTextBox.CaretPosition = spaceRun.ElementEnd;
            MessageTextBox.Focus();
            if (SendMsgButton != null) SendMsgButton.IsEnabled = MainViewModel.CheckIfMessageSendable(MessageTextBox);
        }

        #endregion

        #region Initialization and closing

        public Main()
        {
            noCloseEvent = false;

            InitializeComponent();
            Application.Current.MainWindow = this;

            vmodel = new MainViewModel();
            this.DataContext = vmodel;

            vmodel.Ready += (s, e) =>
            {
                StatusBox.Text = Universal.CurrentUser.DisplayName;
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(
                    Universal.CurrentUser.ConnectionStatus
                );
                ConfigureCompactRecentsList();
                if (Settings.EnableSkypeHome)
                    SkypeHome.Generate(
                        browser,
                        Universal.CurrentUser,
                        vmodel.ContactList.ToList()
                    );
                WindowTitle = Settings.BrandingName + "™ - " + Universal.CurrentUser.Username;
                this.Title = WindowTitle;
                if (Settings.AutoSpeedTest)
                    vmodel.RunSpeedTestCommand.Execute(null);
                Universal.CurrentUser.PropertyChanged += (ss, ee) =>
                {
                    if (ee.PropertyName == nameof(User.ConnectionStatus))
                        Dispatcher.Invoke(() => StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(Universal.CurrentUser.ConnectionStatus));
                };
                if (Universal.Plugin is IExtras iep)
                {
                    iep.ExtraConfigurations.CollectionChanged += (ss, ee) => RefreshExtras();
                    RefreshExtras();
                }
                Main_SizeChanged(null, null);
                Ready?.Invoke(this, EventArgs.Empty);
            };

            vmodel.UserCountUpdated += text =>
            {
                Dispatcher.Invoke(() => GlobalUserCount.Text = text);
            };

            vmodel.SignOutRequested += (s, e) =>
            {
                new Login(e.switchuser).Show();
                noCloseEvent = true;
                Close();
            };

            vmodel.ConversationItemChanged += (s, e) =>
            {
                if (!is_loading_conversation && !_userScrolledUp)
                    _conversationScrollViewer?.ScrollToEnd();
            };

            vmodel.CompactRecentsRefreshRequested += (s, e) =>
            {
                if (ConversationList.Visibility == Visibility.Visible
                && ConversationList.ItemTemplateSelector
                    is CompactRecentsTemplateSelector
            )
                {
                    ConfigureCompactRecentsList();
                }
            };

            vmodel.ConversationChanged += async (s, e) =>
            {
                if (!(s is Conversation sc)) return;
                DirectMessage sdm = null;
                if (sc is DirectMessage)
                    sdm = sc as DirectMessage;
                bool found = false;
                foreach (var item in ConversationList.Items)
                    if (item is Conversation c && c.Identifier == sc.Identifier)
                    { ConversationList.SelectedItem = item as Conversation; found = true; break; }
                if (!found)
                {
                    if (ConversationList.ItemsSource == vmodel.ContactList)
                        await SelectTab(btnRecents);
                    else
                        await SelectTab(btnContacts);
                    foreach (var item in ConversationList.Items)
                        if (item is Conversation c && c.Identifier == sc.Identifier)
                        { ConversationList.SelectedItem = item as Conversation; break; }
                }
                _ = SetConversation();
            };

            vmodel.SpeedTestIconUpdated += uri =>
            {
                Dispatcher.Invoke(() => WifiButton.Source = ImageHelper.FreezeLoad(uri));
            };

            vmodel.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(MainViewModel.TypingText))
                    Dispatcher.Invoke(() => TypingIndicatorText.Text = vmodel.TypingText);
                else if (e.PropertyName == nameof(MainViewModel.IsTypingVisible))
                    Dispatcher.Invoke(() =>
                        TypingIndicator.Visibility = vmodel.IsTypingVisible
                            ? Visibility.Visible
                            : Visibility.Collapsed
                    );
            };

            InitializeWindowFrame();

            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");
            Universal.UnknownAvatar = GenerateAvatarImage("unknown");

            EmojiFlyout.Opened += (s, e) => SetEmojiPickerAnimation(true);
            EmojiFlyout.Closed += (s, e) => SetEmojiPickerAnimation(false);

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += Main_SizeChanged;
            buttonToColumn = new Dictionary<SliceControl, ColumnDefinition>
            {
                { btnContacts, ContactsColumn },
                { btnServers, ServersColumn },
                { btnRecents, RecentsColumn },
            };
            _ = SelectTab(btnRecents);
            MainViewModel.SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            if (!Universal.Plugin.SupportsServers)
            {
                btnServers.Visibility = Visibility.Collapsed;
                ServersColumn.Width = new GridLength(0);
            }

            vmodel.SubscribeTypingIndicator();

            CTR_ORIGINAL_MAXHEIGHT = ChatTopBarRow.MaxHeight;
            TWR_ORIGINAL_MAXHEIGHT = TopbarWindowRow.MaxHeight;
            SetWindow(WindowType.Home);
            UpdateMessageSendButtonState();
            // seanFinx Crazy Hack
            AddContactButton.OverlayText.TextTrimming = TextTrimming.None;
            MakeGroupButton.OverlayText.TextTrimming = TextTrimming.None;

            Settings.Default.PropertyChanged += RefreshCreds;
            Universal.Lang.PropertyChanged += RefreshCreds;
            RefreshCreds();


            //HomeUnavailable.Navigate(new Forms.HomeUnavailable());

            SourceInitialized += (s, e) =>
            {
                if (Settings.SaveWindowPosition && Settings.Width >= 0.0)
                {
                    this.Top = Settings.Y;
                    this.Left = Settings.X;
                    this.Width = Settings.Width;
                    this.Height = Settings.Height;
                    this.WindowState = Settings.Maximized ? WindowState.Maximized : this.WindowState;
                    SidebarColumn.Width = new GridLength(Settings.ConvListWidth);
                }
                Sidebar_SizeChanged_Refresh();
            };

            if (Universal.CallPlugin != null)
            {
                Universal.CallPlugin.IncomingCallTube += (sender, e) =>
                {
                    Application.Current.Dispatcher.Invoke(() =>
                    {
                        IncomingCall ic = new IncomingCall(e);
                        EventHandler handler = null;
                        handler = (s, args) =>
                        {
                            ic.Answered -= handler;
                            StartCall(e.Caller);
                        };
                        ic.Answered += handler;
                        ic.Show();
                    });
                };
            }

            this.AllowsTransparency = false;
        }

        private void InitiateSignOut(bool switchuser = false) => vmodel.InitiateSignOut(switchuser);

        #endregion

        #region Status change menu

        private void OpenStatusMenu()
        {
            var menu = (ContextMenu)StatusArea.Resources["StatusMenu"];
            menu.PlacementTarget = StatusArea;
            menu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;
            menu.IsOpen = true;
        }

        private void OnFeedbackClick(object sender, MouseButtonEventArgs e)
        {
            Universal.OpenUrl(Universal.DISCORD_SERVER_INVITE);
        }

        private async void HandleStatusItemClick(MenuItem item)
        {
            string name = item.Name.Substring(3);
            var currentStatus = MainViewModel.GetStatusFromInt(StatusIcon.DefaultIndex);

            if (name == "dnd")
                vmodel.InformDND();

            PresenceStatus status = vmodel.GetConnectionStatusFromName(name);
            if (status == PresenceStatus.Unknown) return;

            StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
            Tray.SetStatus(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(currentStatus);
                Tray.SetStatus(currentStatus);
            }
        }

        #endregion

        private void RefreshExtras()
        {
            var ep = Universal.Plugin as IExtras;
            ExtrasMenu.Items.Clear();
            if (ep.ExtraConfigurations.Count == 0)
            {
                ExtrasMenu.Items.Add(GetExtrasMenuItem);
                return;
            }
            ExtrasMenu.IsEnabled = true;
            foreach (var extra in ep.ExtraConfigurations)
            {
                var item = new MenuItem()
                {
                    Header = extra.title,
                    ToolTip = extra.description
                };
                item.Click += (_, __) => extra.onRun();
                ExtrasMenu.Items.Add(item);
            }
            ExtrasMenu.Items.Add(new Separator());
            ExtrasMenu.Items.Add(GetExtrasMenuItem);
        }

        private void RefreshCreds(object sender = null, PropertyChangedEventArgs e = null)
        {
            SkypeCreditBox.Text = vmodel.GetCreditText();
        }
    }
}
