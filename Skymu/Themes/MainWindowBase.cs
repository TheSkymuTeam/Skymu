/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Controls.Templates;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Styling;
using Avalonia.Threading;
using Avalonia.VisualTree;
using Skymu.Converters;
using Skymu.Emoticons;
using Skymu.Enumerations;
using Skymu.Formatting;
using Skymu.Forms;
using Skymu.Forms.Pages;
using Skymu.Helpers;
using Skymu.Infrastructure;
using Skymu.Native.Windows;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.ViewModels;
using Skymu.WebServices;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.Theming
{
    public abstract partial class MainWindowBase : Window, IMainWindowHolder
    {
        #region Parts
        private T Part<T>(string name) where T : class => (T)NameScope.GetNameScope(this)?.Find(name);

        private global::Skymu.SliceControl btnContacts => Part<global::Skymu.SliceControl>(nameof(btnContacts));
        private global::Skymu.SliceControl btnRecents => Part<global::Skymu.SliceControl>(nameof(btnRecents));
        private global::Skymu.SliceControl btnServers => Part<global::Skymu.SliceControl>(nameof(btnServers));
        private global::Skymu.SliceControl CallButton => Part<global::Skymu.SliceControl>(nameof(CallButton));
        private global::Skymu.SliceControl CallDropdown => Part<global::Skymu.SliceControl>(nameof(CallDropdown));
        private global::Skymu.SliceControl VideoCallButton => Part<global::Skymu.SliceControl>(nameof(VideoCallButton));
        private global::Skymu.SliceControl SendMsgButton => Part<global::Skymu.SliceControl>(nameof(SendMsgButton));
        private global::Skymu.SliceControl WifiButton => Part<global::Skymu.SliceControl>(nameof(WifiButton));
        private global::Skymu.SliceControl PseudoSearchBox => Part<global::Skymu.SliceControl>(nameof(PseudoSearchBox));
        private global::Skymu.SliceControl StatusIcon => Part<global::Skymu.SliceControl>(nameof(StatusIcon));
        private global::Skymu.SliceControl close => Part<global::Skymu.SliceControl>(nameof(close));
        private global::Skymu.SliceControl minimize => Part<global::Skymu.SliceControl>(nameof(minimize));
        private global::Skymu.SliceControl maximize => Part<global::Skymu.SliceControl>(nameof(maximize));
        private global::Skymu.SliceControl split => Part<global::Skymu.SliceControl>(nameof(split));
        private global::Avalonia.Controls.Grid ChatArea => Part<global::Avalonia.Controls.Grid>(nameof(ChatArea));
        private global::Avalonia.Controls.Grid ContentArea => Part<global::Avalonia.Controls.Grid>(nameof(ContentArea));
        private global::Avalonia.Controls.Grid WindowArea => Part<global::Avalonia.Controls.Grid>(nameof(WindowArea));
        private global::Avalonia.Controls.Grid FrameArea => Part<global::Avalonia.Controls.Grid>(nameof(FrameArea));
        private global::Avalonia.Controls.Grid TitleBar => Part<global::Avalonia.Controls.Grid>(nameof(TitleBar));
        private global::Avalonia.Controls.RowDefinition ChatButtonRow => Part<global::Avalonia.Controls.RowDefinition>(nameof(ChatButtonRow));
        private global::Avalonia.Controls.RowDefinition ChatTopBarRow => Part<global::Avalonia.Controls.RowDefinition>(nameof(ChatTopBarRow));
        private global::Avalonia.Controls.RowDefinition ChatTopbarSplitterRow => Part<global::Avalonia.Controls.RowDefinition>(nameof(ChatTopbarSplitterRow));
        private global::Avalonia.Controls.RowDefinition MessageWindowRow => Part<global::Avalonia.Controls.RowDefinition>(nameof(MessageWindowRow));
        private global::Avalonia.Controls.RowDefinition TopbarWindowRow => Part<global::Avalonia.Controls.RowDefinition>(nameof(TopbarWindowRow));
        private global::Avalonia.Controls.ColumnDefinition ContactsColumn => Part<global::Avalonia.Controls.ColumnDefinition>(nameof(ContactsColumn));
        private global::Avalonia.Controls.ColumnDefinition RecentsColumn => Part<global::Avalonia.Controls.ColumnDefinition>(nameof(RecentsColumn));
        private global::Avalonia.Controls.ColumnDefinition ServersColumn => Part<global::Avalonia.Controls.ColumnDefinition>(nameof(ServersColumn));
        private global::Avalonia.Controls.ColumnDefinition SidebarColumn => Part<global::Avalonia.Controls.ColumnDefinition>(nameof(SidebarColumn));
        private global::Avalonia.Controls.ColumnDefinition SkypeSplitterColumn => Part<global::Avalonia.Controls.ColumnDefinition>(nameof(SkypeSplitterColumn));
        private global::Avalonia.Controls.ContentControl ChatProfileArea => Part<global::Avalonia.Controls.ContentControl>(nameof(ChatProfileArea));
        private global::Avalonia.Controls.ContentControl FillMessagePanelHost => Part<global::Avalonia.Controls.ContentControl>(nameof(FillMessagePanelHost));
        private global::Avalonia.Controls.ContentControl FillWindowHost => Part<global::Avalonia.Controls.ContentControl>(nameof(FillWindowHost));
        private global::Avalonia.Controls.Shapes.Rectangle ChatTopBarSplitter => Part<global::Avalonia.Controls.Shapes.Rectangle>(nameof(ChatTopBarSplitter));
        private global::Avalonia.Controls.Shapes.Rectangle ContentBgTop => Part<global::Avalonia.Controls.Shapes.Rectangle>(nameof(ContentBgTop));
        private global::Avalonia.Controls.Shapes.Rectangle ContentBgBottom => Part<global::Avalonia.Controls.Shapes.Rectangle>(nameof(ContentBgBottom));
        private global::Avalonia.Controls.Shapes.Rectangle MainMenuBarDivider => Part<global::Avalonia.Controls.Shapes.Rectangle>(nameof(MainMenuBarDivider));
        private global::Avalonia.Controls.ListBox ConversationItemsList => Part<global::Avalonia.Controls.ListBox>(nameof(ConversationItemsList));
        private global::Avalonia.Controls.ListBox ConversationList => Part<global::Avalonia.Controls.ListBox>(nameof(ConversationList));
        private global::Avalonia.Controls.TreeView ServersList => Part<global::Avalonia.Controls.TreeView>(nameof(ServersList));
        private global::Avalonia.Controls.Primitives.Popup EmojiFlyout => Part<global::Avalonia.Controls.Primitives.Popup>(nameof(EmojiFlyout));
        private global::Avalonia.Controls.WrapPanel EmojiWrapPanel => Part<global::Avalonia.Controls.WrapPanel>(nameof(EmojiWrapPanel));
        private global::Avalonia.Controls.StackPanel MenuBarArea => Part<global::Avalonia.Controls.StackPanel>(nameof(MenuBarArea));
        private global::Avalonia.Controls.StackPanel StatusArea => Part<global::Avalonia.Controls.StackPanel>(nameof(StatusArea));
        private global::Avalonia.Controls.StackPanel TypingIndicator => Part<global::Avalonia.Controls.StackPanel>(nameof(TypingIndicator));
        private global::Avalonia.Controls.Menu MainMenuBar => Part<global::Avalonia.Controls.Menu>(nameof(MainMenuBar));
        private global::Avalonia.Controls.MenuItem MenubarStatusHolder => Part<global::Avalonia.Controls.MenuItem>(nameof(MenubarStatusHolder));
        private global::Avalonia.Controls.MenuItem ExtrasMenu => Part<global::Avalonia.Controls.MenuItem>(nameof(ExtrasMenu));
        private global::Avalonia.Controls.MenuItem GetExtrasMenuItem => Part<global::Avalonia.Controls.MenuItem>(nameof(GetExtrasMenuItem));
        private global::Avalonia.Controls.TextBox MessageTextBox => Part<global::Avalonia.Controls.TextBox>(nameof(MessageTextBox));
        private global::Avalonia.Controls.Border MessageWindow => Part<global::Avalonia.Controls.Border>(nameof(MessageWindow));
        private global::Avalonia.Controls.TextBox SearchBox => Part<global::Avalonia.Controls.TextBox>(nameof(SearchBox));
        private global::Avalonia.Controls.Image Spinner => Part<global::Avalonia.Controls.Image>(nameof(Spinner));
        private global::Avalonia.Controls.Image TitleBarIcon => Part<global::Avalonia.Controls.Image>(nameof(TitleBarIcon));
        private global::Avalonia.Controls.TextBlock TitleMain => Part<global::Avalonia.Controls.TextBlock>(nameof(TitleMain));
        private global::Avalonia.Controls.TextBlock TitleShadow => Part<global::Avalonia.Controls.TextBlock>(nameof(TitleShadow));
        private global::Avalonia.Controls.TextBlock TitleShadow2 => Part<global::Avalonia.Controls.TextBlock>(nameof(TitleShadow2));
        private global::Avalonia.Controls.TextBlock TitleShadow3 => Part<global::Avalonia.Controls.TextBlock>(nameof(TitleShadow3));
        private global::Avalonia.Controls.TextBlock TypingIndicatorText => Part<global::Avalonia.Controls.TextBlock>(nameof(TypingIndicatorText));
        private global::Avalonia.Controls.Control ProfileGrid => Part<global::Avalonia.Controls.Control>(nameof(ProfileGrid));
        #endregion

        #region Variables

        // ViewModel
        protected MainViewModel vmodel;

        // Other file-level variables
        private Enumerations.WindowChrome _currentFrame = Settings.WindowChrome;
        private Thickness OriginalWindowAreaMargin;
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp = false;
        private Bitmap img_maximize,
            img_restore,
            img_split,
            img_join;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        private IDataTemplate _defaultConversationTemplate;
        private readonly List<Control> _chromeClickable = new List<Control>();
        private bool IsLoadingConversation => vmodel?.IsLoadingConversation ?? false;
        protected WindowType current_window = WindowType.Chat;
        private string PlaceholderTextMTB = string.Empty;
        public event EventHandler Ready;
        private MenuBarController _mmbController;

        protected enum WindowType
        {
            Home,
            Chat,
        }

        public static readonly StyledProperty<string> WindowTitleProperty =
            AvaloniaProperty.Register<MainWindowBase, string>("WindowTitle");

        static MainWindowBase()
        {
            WindowTitleProperty.Changed.AddClassHandler<MainWindowBase>(
                (d, e) =>
                {
                    d.Title = (string)e.NewValue;
                }
            );
        }

        public string WindowTitle
        {
            get { return (string)GetValue(WindowTitleProperty); }
            set { SetValue(WindowTitleProperty, value); }
        }

        private readonly Bitmap sendBtnSmall = ImageHelper.Load(
            "Universal/Main/msg-send-button.png"
        );
        private readonly Bitmap sendBtnFull = ImageHelper.Load(
            "Universal/Main/msg-send-button-full.png"
        );

        protected Metadata SelectedContact;

        #endregion



        protected abstract void ShowHomeView();
        protected abstract void ShowChatView();
        protected abstract void ShowOwnName(string name);
        protected abstract void ShowLogin(bool switchuser);

        protected virtual void ShowCreditText(string text) { }
        protected virtual Task GenerateHome() => Task.CompletedTask;
        protected virtual void OnUserCountUpdated(string text) { }
        protected virtual void OnServersUnsupported() { }
        protected virtual void OnConversationSelecting() { }

        #region Home and Chat window switching

        private void SetCallDropdownVisibility(bool visible)
        {
            if (CallDropdown != null)
                CallDropdown.IsVisible = visible;
        }

        protected void SetWindow(WindowType type, bool force = false)
        {
            CallButton.UpdateLayout();
            if (vmodel.SelectedConversation is Group)
            {
                VideoCallButton.IsVisible = true;
                CallButton.IsVisible = true;
                SetCallDropdownVisibility(true);
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALLGROUP"];
            }
            else if (vmodel.SelectedConversation is ServerChannel s)
            {
                VideoCallButton.IsVisible = false;
                if (s.ChannelType == ChannelType.Voice)
                {
                    CallButton.IsVisible = true;
                    SetCallDropdownVisibility(true);
                    CallButton.Text = "Join voice channel";
                }
                else
                {
                    CallButton.IsVisible = false;
                    SetCallDropdownVisibility(false);
                }
            }
            else
            {
                VideoCallButton.IsVisible = true;
                CallButton.IsVisible = true;
                SetCallDropdownVisibility(true);
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALL"];
            }

            if (type == current_window && !force)
                return;

            current_window = type;
            switch (type)
            {
                case WindowType.Home:
                    ClearConversation();
                    ShowHomeView();

                    MessageWindowRow.Height = new GridLength(0);
                    ConversationList.SelectedItem = null;
                    SelectedContact = null;
                    ClearTreeSelection(ServersList);

                    MessageWindowRow.Height = new GridLength(0);

                    ChatTopBarSplitter.IsVisible = false;
                    ChatTopbarSplitterRow.MaxHeight = 0;
                    TWR_ORIGINAL_HEIGHT = TopbarWindowRow.Height.Value;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    TopbarWindowRow.MaxHeight = Double.PositiveInfinity;
                    break;

                case WindowType.Chat:
                    ShowChatView();

                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);

                    ChatTopBarSplitter.IsVisible = true;
                    ChatTopbarSplitterRow.MaxHeight = CTR_ORIGINAL_MAXHEIGHT;
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    TopbarWindowRow.MaxHeight = screen == null ? TWR_ORIGINAL_MAXHEIGHT : ChatArea.Height * 0.7;
                    if (location != null)
                        SetCallPageLocation(location);
                    break;
            }
        }

        #endregion

        #region Custom window logic

        private bool IsSkinned => TitleBar != null;

        protected virtual string AeroTitleFont => "Segoe UI";

        private IBrush GetBrush(string key)
        {
            Application.Current.TryGetResource(key, ActualThemeVariant, out var resource);
            return (IBrush)resource;
        }

        protected override void OnPropertyChanged(AvaloniaPropertyChangedEventArgs change)
        {
            base.OnPropertyChanged(change);
            if (change.Property == WindowStateProperty)
                Window_StateChanged(this, EventArgs.Empty);
        }

        public void InitializeWindowFrame()
        {
            if (_currentFrame != Enumerations.WindowChrome.Native) // using Skype's custom border
            {
                if (!Skymu.Native.Windows.DwmHelper.IsDwmEnabled() && _currentFrame == Enumerations.WindowChrome.SkypeAero) _currentFrame = Enumerations.WindowChrome.SkypeXP; // if no DWM, don't use broken Aero frame
                OriginalWindowAreaMargin = WindowArea.Margin; // for maximization stuff
                //chrome.UseAeroCaptionButtons = false;
                ExtendClientAreaToDecorationsHint = true;
                ExtendClientAreaChromeHints = Avalonia.Platform.ExtendClientAreaChromeHints.NoChrome;
                ExtendClientAreaTitleBarHeightHint = -1; // WindowChrome configuration ensures that system frame is not drawn
                TitleBar.PointerPressed += TitleBar_PointerPressed;
                SetClickable(TitleBarIcon, close, minimize, maximize, split);
                TitleMain.IsVisible = true;
                if (
                    _currentFrame == Enumerations.WindowChrome.SkypeAero
                    || _currentFrame == Enumerations.WindowChrome.SkypeAeroCustom
                ) // switch configuration from Skype Basic to Aero
                {
                    Thickness AeroThickness = new Thickness(8, 30, 8, 8);
                    OriginalWindowAreaMargin = AeroThickness;
                    // Set up the window background and margin
                    WindowArea.Margin = AeroThickness;
                    TitleBar.Background = Brushes.Transparent;
                    if (_currentFrame == Enumerations.WindowChrome.SkypeAero)
                    {
                        this.Background = Brushes.Transparent;
                    }
                    else if (_currentFrame == Enumerations.WindowChrome.SkypeAeroCustom) // TODO: finish this
                    {
                        var img = ImageHelper.Load(
                            "Universal/Window Frame/Aero/aero-background.png"
                        );
                        this.Background = new ImageBrush
                        {
                            Source = img,
                            Stretch = Stretch.None,
                            TileMode = TileMode.None,
                            DestinationRect = new RelativeRect(0, 0, img.Size.Width, img.Size.Height, RelativeUnit.Absolute),
                        };
                    }

                    // Titlebar font styling
                    TitleMain.FontFamily = new FontFamily(AeroTitleFont);
                    TitleMain.FontWeight = FontWeight.Normal;
                    TitleMain.FontSize = 12;
                    TitleMain.Foreground = Brushes.Black;

                    // Titlebar drop shadow (Imitates the Aero glow effect)
                    TitleMain.Effect = new DropShadowEffect
                    {
                        OffsetX = 0,
                        OffsetY = 0,
                        Color = Colors.White,
                        Opacity = 1,
                        BlurRadius = 20,
                    };

                    ControlTheme aeroStyle = (ControlTheme)this.FindResource("TitlebarTextStyleAero");
                    TitleMain.Theme = aeroStyle;
                    TitleShadow.Theme = aeroStyle;
                    TitleShadow2.Theme = aeroStyle;
                    TitleShadow3.Theme = aeroStyle;
                    TitleBarIcon.Margin = new Thickness(8, 5, 0, 0);
                }

                img_maximize = GenerateTitlebarButtonImage("maximize", _currentFrame);
                img_restore = GenerateTitlebarButtonImage("restore", _currentFrame);
                img_split = GenerateTitlebarButtonImage("split", _currentFrame);
                img_join = GenerateTitlebarButtonImage("join", _currentFrame);

                close.Source = GenerateTitlebarButtonImage("close", _currentFrame);
                maximize.Source = img_maximize;
                minimize.Source = GenerateTitlebarButtonImage("minimize", _currentFrame);
                split.Source = img_split;
            }
            else // using system native border
            {
                SystemDecorations = SystemDecorations.Full;
                TitleBar.IsVisible = false;
                WindowArea.Margin = new Thickness(0);
            }
        }

        private DropShadowEffect CreateDropShadow(string color)
        {
            Application.Current.TryGetResource(color, ActualThemeVariant, out var resource);
            return new DropShadowEffect()
            {
                Color = (Color)resource,
                BlurRadius = 15,
                OffsetX = 0,
                OffsetY = 0,
                Opacity = 1,
            };
        }

        private void SetClickable(params IInputElement[] buttons)
        {
            foreach (var b in buttons)
                if (b is Control c)
                    _chromeClickable.Add(c);
        }

        private void TitleBar_PointerPressed(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;

            if (e.Source is Visual source)
                foreach (var c in _chromeClickable)
                    if (ReferenceEquals(c, source) || c.IsVisualAncestorOf(source))
                        return;

            if (e.ClickCount == 2)
                WindowState = WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
            else
                BeginMoveDrag(e);
        }

        private void HandleWindowStateChanged()
        {
            if (OriginalWindowAreaMargin.Top != 0)
            {
                if (WindowState == WindowState.Maximized)
                {
                    maximize.Source = img_restore;
                    FrameArea.Margin = new Thickness(0, 5, 0, 0);
                    Thickness ReducedWinAreaMargin = new Thickness(
    OriginalWindowAreaMargin.Left,
    OriginalWindowAreaMargin.Top - 4,
    OriginalWindowAreaMargin.Right,
    OriginalWindowAreaMargin.Bottom);
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
            if (button != null && _currentFrame != Enumerations.WindowChrome.SkypeXP)
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
            if (vmodel.IsWindowActive)
            {
                if (button != null)
                {
                    button.Effect = null;
                }
            }
            else if (!vmodel.IsWindowActive)
            {
                button.Effect = null;
            }
        }

        private void FillSolid()
        {
            ContentBgTop.Fill = GetBrush("Background");
            ContentBgBottom.Fill = GetBrush("Background");
            MainMenuBar.Background = GetBrush("Background");
            MainMenuBarDivider.Fill = GetBrush("Card.Border");
            MenuBarArea.Background = GetBrush("Background");
            if (_currentFrame == Enumerations.WindowChrome.SkypeXP)
            {
                TitleBar.Background = GetBrush("Background");
                this.Background = GetBrush("Background");
            }
        }

        private void HandleWindowActivated()
        {
            if (vmodel != null)
                vmodel.IsWindowActive = true;

            if (!IsSkinned)
                return;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = GetBrush("Active.Window");
            ContentBgBottom.Fill = GetBrush("Active.Background");
            MainMenuBar.Background = GetBrush("Active.Menubar");
            MainMenuBarDivider.Fill = GetBrush("Active.Background");

            if (_currentFrame == Enumerations.WindowChrome.SkypeXP)
            {
                TitleBar.Background = GetBrush("Active.Titlebar");
                this.Background = GetBrush("Active.Background");
            }
        }

        private void HandleWindowDeactivated()
        {
            if (vmodel != null)
                vmodel.IsWindowActive = false;

            if (!IsSkinned)
                return;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 3;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = GetBrush("Inactive.Window");
            ContentBgBottom.Fill = GetBrush("Inactive.Background");
            MainMenuBar.Background = GetBrush("Inactive.Menubar");
            MainMenuBarDivider.Fill = GetBrush("Inactive.Background");

            if (_currentFrame == Enumerations.WindowChrome.SkypeXP)
            {
                TitleBar.Background = GetBrush("Inactive.Titlebar");
                this.Background = GetBrush("Inactive.Background");
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

        #region Initialization and closing

        protected virtual void InitializeMenuBar()
        {
            if (_currentFrame == Enumerations.WindowChrome.Native)
            {
                MenuBarArea.IsVisible = false;
                // For now, native window frame = native menu bar.
                BuildMenuBarController();
            }
        }

        protected void BuildMenuBarController()
        {
            _mmbController = new MenuBarController(this);
            _mmbController.ActionRequested += (s2, action) =>
            {
                switch (action)
                {
                    case MenuBarController.Action.Home: SetWindow(WindowType.Home); break;
                    case MenuBarController.Action.Contacts: _ = SelectTab(btnContacts); break;
                    case MenuBarController.Action.Servers: _ = SelectTab(btnServers); break;
                    case MenuBarController.Action.Recents: _ = SelectTab(btnRecents); break;
                    case MenuBarController.Action.Call: CallButtonClick(null, null); break;
                    case MenuBarController.Action.AddContact: AddContact_Click(null, null); break;
                }
            };
            _mmbController.Build();
            if (!(Universal.Plugin is IExtras ep) || ep.ExtraConfigurations.Count == 0)
                _mmbController.DisableExtras();
            else
            {
                var mitems = new (string, EventHandler)[ep.ExtraConfigurations.Count];
                int i = 0;
                foreach (var extra in ep.ExtraConfigurations)
                {
                    mitems[i] = (extra.title, (ss, ee) => extra.onRun());
                    i++;
                }
                _mmbController.RedoExtras(mitems);
            }
        }

        protected void InitializeMainWindow()
        {
            noCloseEvent = false;

            AvaloniaHelpers.AHelpers.SetMainWindow(this);

            vmodel = new MainViewModel();
            this.DataContext = vmodel;

            vmodel.Ready += async (s, e) =>
            {
                ShowOwnName(Universal.CurrentUser.DisplayName);
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(
                    Universal.CurrentUser.ConnectionStatus
                );
                if (ProfileGrid != null)
                    ProfileGrid.DataContext = Universal.CurrentUser;
                ConfigureCompactRecentsList();
                await GenerateHome();
                WindowTitle = Settings.BrandingName + "™ - " + Universal.CurrentUser.Username;
                this.Title = WindowTitle;
                if (Settings.CheckSpeedOnStartup)
                    vmodel.RunSpeedTestCommand.Execute(null);
                Universal.CurrentUser.PropertyChanged += (ss, ee) =>
                {
                    if (ee.PropertyName == nameof(User.ConnectionStatus))
                        Dispatcher.UIThread.Invoke(() => StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(Universal.CurrentUser.ConnectionStatus));
                };
                if (ExtrasMenu != null && Universal.Plugin is IExtras iep)
                {
                    iep.ExtraConfigurations.CollectionChanged += (ss, ee) => RefreshExtras();
                    RefreshExtras();
                }
                Main_SizeChanged(null, null);
                Ready?.Invoke(this, EventArgs.Empty);
            };

            vmodel.UserCountUpdated += text =>
            {
                Dispatcher.UIThread.Invoke(() => OnUserCountUpdated(text));
            };

            vmodel.SignOutRequested += (s, e) =>
            {
                ShowLogin(e.switchuser);
                noCloseEvent = true;
                Close();
            };

            vmodel.ConversationItemChanged += (s, e) =>
            {
                if (!IsLoadingConversation && !_userScrolledUp)
                    _conversationScrollViewer?.ScrollToEnd();
            };

            vmodel.CompactRecentsRefreshRequested += (s, e) =>
            {
                if (ConversationList.IsVisible == true
                && ConversationList.ItemTemplate
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
                Dispatcher.UIThread.Invoke(() => WifiButton.Source = ImageHelper.Load(uri));
            };

            vmodel.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(MainViewModel.TypingText))
                    Dispatcher.UIThread.Invoke(() => TypingIndicatorText.Text = vmodel.TypingText);
                else if (e.PropertyName == nameof(MainViewModel.IsTypingVisible))
                    Dispatcher.UIThread.Invoke(() =>
                        TypingIndicator.IsVisible = vmodel.IsTypingVisible
                            ? true
                            : false
                    );
            };

            if (IsSkinned)
                InitializeWindowFrame();

            SharedServices.GenerateGlobalAvatars();

            EmojiFlyout.Opened += (s, e) => SetEmojiPickerAnimation(true);
            EmojiFlyout.Closed += (s, e) => SetEmojiPickerAnimation(false);

            MessageTextBox.AddHandler(KeyDownEvent, MessageTextBox_PreviewKeyDown, RoutingStrategies.Tunnel);

            this.PointerReleased += MouseRelease;
            this.SizeChanged += Main_SizeChanged;
            buttonToColumn = new Dictionary<SliceControl, ColumnDefinition>
            {
                { btnContacts, ContactsColumn },
                { btnServers, ServersColumn },
                { btnRecents, RecentsColumn },
            };
            _defaultConversationTemplate = ConversationList.ItemTemplate;
            _ = SelectTab(btnRecents);
            SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            if (!Universal.Plugin.SupportsServers)
            {
                btnServers.IsVisible = false;
                ServersColumn.Width = new GridLength(0);
                OnServersUnsupported();
            }

            vmodel.SubscribeTypingIndicator();

            CTR_ORIGINAL_MAXHEIGHT = ChatTopBarRow.MaxHeight;
            TWR_ORIGINAL_MAXHEIGHT = TopbarWindowRow.MaxHeight;
            SetWindow(WindowType.Home);
            UpdateMessageSendButtonState();

            Settings.Default.PropertyChanged += RefreshCreds;
            Universal.Lang.PropertyChanged += RefreshCreds;
            RefreshCreds();

            Opened += (s, e) =>
            {
                InitializeMenuBar();

                if (Settings.SaveWindowPosition && Settings.Width >= 0.0)
                {
                    this.Position = new PixelPoint((int)Settings.X, (int)Settings.Y);
                    this.Width = Settings.Width;
                    this.Height = Settings.Height;
                    this.WindowState = Settings.Maximized ? WindowState.Maximized : this.WindowState;
                    SidebarColumn.Width = new GridLength(Settings.ConvListWidth);
                }
                OnSidebarResized();
            };
        }

        #endregion

        protected virtual void OnTabSelecting(SliceControl tab_to_select) { }
        protected virtual void OnTabSelected(SliceControl tab_to_select) { }
        protected virtual bool ResizesTabColumns => true;
        protected virtual void OnSidebarResized() { }

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
                DateHeaderTemplate = (IDataTemplate)this.FindResource("DateHeaderTemplate"),
                CompactDirectMessageTemplate = (IDataTemplate)this.FindResource(
                    "CompactDirectMessageTemplate"
                ),
                CompactGroupTemplate = (IDataTemplate)this.FindResource("CompactGroupTemplate"),
            };
            ConversationList.ItemTemplate = selector;
            ConversationList.ItemsSource = grouped;
        }

        protected async Task SelectTab(SliceControl tab_to_select)
        {
            OnTabSelecting(tab_to_select);
            if (tab_to_select.Name == "btnServers")
            {
                ConversationList.IsVisible = false;
                ServersList.IsVisible = true;
            }
            else
            {
                ConversationList.IsVisible = true;
                ServersList.IsVisible = false;
                ConversationList.ItemsSource = null;
            }

            GridLength dynamic = new GridLength(1, GridUnitType.Star);
            GridLength small = new GridLength(32);

            tab_to_select.SetState(ButtonVisualState.Pressed);
            if (ResizesTabColumns && Universal.Plugin.SupportsServers)
                buttonToColumn[tab_to_select].Width = dynamic;
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
            {
                if (tab == tab_to_select)
                    continue;
                tab.SetState(ButtonVisualState.Default);
                if (ResizesTabColumns && Universal.Plugin.SupportsServers)
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
                    ConversationList.ItemTemplate = _defaultConversationTemplate;
                    ConversationList.ItemsSource = vmodel.ContactList;
                    break;
                case "btnRecents":
                    ConfigureCompactRecentsList();
                    break;
            }
            OnTabSelected(tab_to_select);
            if (
                tab_to_select.Name != "btnServers"
                && SelectedContact is Metadata SelectedMetadata
            )
            {
                foreach (object item in ConversationList.Items)
                {
                    if (
                        item is Conversation
                        && ((Metadata)item).Identifier == (SelectedMetadata).Identifier
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
        private Control capturedElement = null;

        protected void SkypeSplitter_PointerMoved(object sender, PointerEventArgs e)
        {
            if (SkypeSplitterIsDragging)
            {
                Point current = e.GetPosition(this);
                var delta = current - dragStart;
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
                OnSidebarResized();
            }
        }

        protected void SkypeSplitter_Press(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;
            MouseRelease(null, null); // Release previous element first. Potentially avoids weird behavior on touch screen, etc.
            SkypeSplitterIsDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as Control;

            if (capturedElement != null)
            {
                e.Pointer.Capture(capturedElement);
                e.Handled = true;
            }
        }

        protected void ChatTopBarSplitter_PointerMoved(object sender, PointerEventArgs e)
        {
            if (ChatTopBarSplitterIsDragging)
            {
                Point current = e.GetPosition(this);
                var delta = current - dragStart;
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

        protected void ChatTopBarSplitter_Press(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;
            MouseRelease(null, null);
            ChatTopBarSplitterIsDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as Control;

            if (capturedElement != null)
            {
                e.Pointer.Capture(capturedElement);
                e.Handled = true;
            }
        }

        private void MouseRelease(object sender, PointerReleasedEventArgs e)
        {
            if (e != null && e.InitialPressMouseButton != MouseButton.Left)
                return;

            if (SkypeSplitterIsDragging || ChatTopBarSplitterIsDragging)
            {
                SkypeSplitterIsDragging = false;
                ChatTopBarSplitterIsDragging = false;

                if (capturedElement != null && e != null && e.Pointer.Captured == capturedElement)
                {
                    e.Pointer.Capture(null);
                }
                capturedElement = null;
                if (e != null)
                    e.Handled = true;
            }
        }

        #endregion

        #region Event handlers

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.Bounds.Width / 2;
            if (screen != null && location.ChatToggle)
                TopbarWindowRow.MaxHeight = ChatArea.Bounds.Height * 0.7;
            UpdateMessageSendButtonState();
        }

        protected virtual void UpdateMessageSendButtonState()
        {
            // TODO: Don't rely on this. Rely on chat width. Also use Width, not ActualWidth. Maybe this is why the thing is laggy?
            MessageWindow.UpdateLayout();
            if (MessageWindow.Bounds.Width <= 720 && MessageWindow.Bounds.Width != 0)
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

        protected async void ServerListItem_Clicked(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            var item = (TreeViewItem)sender;
            var data = item.DataContext;

            SelectedContact = null;

            await HandleServerItemSelection(data);
        }

        protected void ConversationList_ItemClicked(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            var selected = ((ListBox)sender).SelectedItem;
            if (selected is Metadata selectedMetadata)
                SelectedContact = selectedMetadata;
            if (selected is DateHeaderItem)
            {
                ((ListBox)sender).SelectedItem = null;
                return;
            }
            HandleConversationSelection(selected);
        }

        protected void Chat_Close(object sender, PointerEventArgs e)
        {
            SetWindow(WindowType.Home);
        }

        protected void StatusArea_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            OpenStatusMenu(StatusArea);
        }

        protected async void SidebarTab_BtnDown(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            await SelectTab(sender as SliceControl);
        }

        protected void TitleButton_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            HandleWindowButtonClick(sender as SliceControl);
        }

        protected void TitleButton_PointerExited(object sender, PointerEventArgs e)
        {
            HandleWindowButtonLeave(sender as SliceControl);
        }

        protected void TitleButton_PointerEntered(object sender, PointerEventArgs e)
        {
            HandleWindowButtonEnter(sender as SliceControl);
        }

        protected void Window_StateChanged(object sender, EventArgs e)
        {
            HandleWindowStateChanged();
        }

        protected void Window_Activated(object sender, EventArgs e)
        {
            HandleWindowActivated();
        }

        protected void Window_Deactivated(object sender, EventArgs e)
        {
            HandleWindowDeactivated();
        }

        protected async void TitleBarIcon_PointerPressed(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;
            await EasterEgg(Egg.SkypeMemeVideo);
        }

        protected void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            HandleStatusItemClick(sender as MenuItem, StatusIcon);
        }

        protected void Main_Closing(object sender, WindowClosingEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        protected override void OnClosed(EventArgs e)
        {
            SavePositioning(this, SidebarColumn);
        }

        protected void OnClose(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        protected void OnContacts(object sender, RoutedEventArgs e)
        {
            _ = SelectTab(btnContacts);
        }

        protected void OnRecent(object sender, RoutedEventArgs e)
        {
            _ = SelectTab(btnRecents);
        }

        protected void OnHome(object sender, RoutedEventArgs e) => SetWindow(WindowType.Home);

        protected void OnOptions(object sender, RoutedEventArgs e)
        {
            new Options().Show();
        }

        protected void OnAbout(object sender, RoutedEventArgs e)
        {
            new About().Show();
        }

        protected void OnPrivacyPolicy(object sender, RoutedEventArgs e)
        {
            Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY);
        }

        protected void OnCheckUpdates(object sender, RoutedEventArgs e)
        {
            new Updater(true);
        }

        protected void OnCall(object sender, RoutedEventArgs e) => CallButtonClick(null, null);

        protected void OnAddContact(object sender, RoutedEventArgs e) => AddContact_Click(null, null);

        protected void OnSignOut(object sender, RoutedEventArgs e) => InitiateSignOut();

        protected void OnAccountManager(object sender, RoutedEventArgs e) => Forms.Pages.AccountManager.Open();

        protected void OnSwitchUser(object sender, RoutedEventArgs e) => InitiateSignOut(true);

        protected async void OnStatus(object sender, RoutedEventArgs e)
        {
            await SetStatusFromMenuItems(sender, MenubarStatusHolder.Items);
        }

        protected void MakeGroup_Click(object sender, PointerEventArgs e) { }

        protected virtual void AddContact_Click(object sender, PointerEventArgs e)
        {
            vmodel.ShowAddContactWindow();
        }

        protected async void OnMsgSendClickButton(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            await SendMessage();
        }

        protected async void WifiButton_Click(object sender, PointerEventArgs e)
        {
            await vmodel.RunSpeedTest();
        }

        protected void ConversationItemsList_Loaded(object sender, RoutedEventArgs e)
        {
            HandleConversationItems();
        }

        protected void SearchBox_Focused(object sender, GotFocusEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);
            RemovePlaceholder(SearchBox);
        }

        protected virtual void SearchBox_Unfocused(object sender, RoutedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);
            SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
        }

        protected void MessageTextBox_Focused(object sender, GotFocusEventArgs e)
        {
            RemovePlaceholder(MessageTextBox);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = CheckIfMessageSendable(MessageTextBox);
        }

        protected void MessageTextBox_Unfocused(object sender, RoutedEventArgs e)
        {
            CheckIfMTBUnfocused(true);
        }

        protected async void MessageTextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Enter)
                return;
            if (e.KeyModifiers.HasFlag(KeyModifiers.Shift))
                return;

            e.Handled = true;
            await SendMessage();
        }

        protected void WindowArea_PointerPressed(object sender, PointerPressedEventArgs e)
        {
            FocusManager?.ClearFocus();
        }

        protected void MessageTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (SendMsgButton != null) SendMsgButton.IsEnabled = CheckIfMessageSendable(MessageTextBox);
            if (HasAnyContent(MessageTextBox))
                vmodel.lastTypingActivity = DateTime.UtcNow;
        }

        protected virtual void CallPhones_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            vmodel.ShowCallPhones();
        }

        protected async void AddButtonClick(object sender, PointerEventArgs e)
        {
            await vmodel.SendFile();
        }

        protected void CallButtonClick(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            InitiateCall(vmodel.SelectedConversation);
        }

        protected void EmojiButton_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            EmojiFlyout.IsOpen = true;
        }

        #endregion

        #region Ported from SharedServices.cs

        private const string TAG_PLACEHOLDER = "PLACEHOLDER";

        internal void SetPlaceholder(TextBox tb, string text, bool force = false)
        {
            if (!force && tb.Tag as string == TAG_PLACEHOLDER)
                return;

            if (!force && !string.IsNullOrEmpty(tb.Text))
                return;

            tb.Tag = TAG_PLACEHOLDER;
            tb.Text = text;
            tb.Foreground = GetBrush("Text.LowContrast");
        }

        private void RemovePlaceholder(TextBox tb)
        {
            if (tb.Tag as string == TAG_PLACEHOLDER)
            {
                tb.Text = string.Empty;
                tb.Foreground = Brushes.Black;
                tb.Tag = null;
            }
        }

        private bool HasAnyContent(TextBox tb)
        {
            if (tb == null)
                return false;

            if (tb.Tag as string == TAG_PLACEHOLDER)
                return false;

            return !string.IsNullOrWhiteSpace(tb.Text);
        }

        private bool CheckIfMessageSendable(TextBox mtb)
        {
            if (mtb is null || mtb.Tag as string == TAG_PLACEHOLDER)
            {
                return false;
            }
            return HasAnyContent(mtb);
        }

        private string ExtractText(TextBox mtb)
        {
            if (mtb.Tag as string == TAG_PLACEHOLDER)
                return string.Empty;

            return mtb.Text ?? string.Empty;
        }

        private Bitmap GenerateTitlebarButtonImage(string name, Enumerations.WindowChrome chrome)
        {
            string framedir = "Aero";
            if (chrome == Enumerations.WindowChrome.SkypeXP) framedir = "Basic";

            return ImageHelper.Load(
                $"Universal/Window Frame/{framedir}/{name}/combined.png"
            );
        }

        private async void HandleStatusItemClick(MenuItem item, SliceControl statusIcon)
        {
            string name = item.Name.Substring(3);
            var currentStatus = MainViewModel.GetStatusFromInt(statusIcon.DefaultIndex);

            if (name == "dnd")
                Universal.ActiveViewModel.InformDND();

            PresenceStatus status = Universal.ActiveViewModel.GetConnectionStatusFromName(name);
            if (status == PresenceStatus.Unknown) return;

            statusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
            Tray.SetStatus(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                statusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(currentStatus);
                Tray.SetStatus(currentStatus);
            }
        }

        private void OpenStatusMenu(StackPanel statusArea)
        {
            var menu = (ContextMenu)statusArea.Resources["StatusMenu"];
            menu.Placement = PlacementMode.Bottom;
            menu.Open(statusArea);
        }

        private void ClearTreeSelection(TreeView tree)
        {
            if (tree.SelectedItem == null)
                return;

            TreeViewItem container = GetContainerFromItem(tree, tree.SelectedItem);
            if (container != null)
                container.IsSelected = false;
        }

        private void SavePositioning(Window window, ColumnDefinition sidebar)
        {
            if (!Settings.SaveWindowPosition) return;

            Settings.ConvListWidth = sidebar.ActualWidth;
            Settings.X = window.Position.X;
            Settings.Y = window.Position.Y;
            Settings.Height = window.Height;
            Settings.Width = window.Width;
            Settings.Maximized = window.WindowState == WindowState.Maximized;
        }

        private enum Egg
        {
            SkypeMemeVideo
        }

        private async Task EasterEgg(Egg egg)
        {
            switch (egg)
            {
                case Egg.SkypeMemeVideo:
                    // changed this because just clicking AND it being hand cursor... no bro .... so now u hold 2 seconds - TODO: make it show the actual menu, I fuckin knewww it was like that bro
                    await SoundManager.PlayAsync("BUSY");
                    string url;
                    Random _random = new Random(); // what is this bro // for the easter egg to decide what video to show
                    if (_random.Next(0, 100) < 12) // oh hello im le underscore yeah I change everything and it totally makes sense guys
                        url = Universal.EASTER_CHANTE_SKYPE; // one of the uploads called him ksi bruh are we dead ass ... french ksi wtf......
                    else
                        url = Universal.EASTER_SKYPE_SOUNDS_REMIX;
                    Universal.OpenURL(url);
                    break;
            }
        }

        private string GetCreditText()
        {
            string subtext = Universal.Lang["sACCOUNT_PANEL_NR_OF_SUBSCRIPTIONS"];
            switch (Settings.CredsSubCount)
            {
                case 0:
                    subtext = Universal.Lang["sACCOUNT_PANEL_NO_SUBSCRIPTION"];
                    break;
                case 1:
                    subtext = Universal.Lang["sACCOUNT_PANEL_ONE_SUBSCRIPTION"];
                    break;
            }
            return Settings.CredsText + " - " + subtext.Replace("%d", Settings.CredsSubCount.ToString());
        }

        private readonly PresenceStatus[] _indexToStatus = new PresenceStatus[]
{
            PresenceStatus.Online,
            PresenceStatus.Away,
            PresenceStatus.DoNotDisturb,
            PresenceStatus.Invisible
};

        private async Task SetStatusFromMenuItems(object sender, ItemCollection items)
        {
            int i = 0;
            foreach (var item in items)
            {
                if (!(item is MenuItem mitem) || ((MenuItem)sender).Header != mitem.Header)
                {
                    if (item is MenuItem mitemm)
                        Debug.WriteLine(mitemm?.Header);
                    i++;
                    continue;
                }
                await Universal.Plugin.SetConnectionStatus(_indexToStatus[i]);
                return;
            }
            Universal.ShowMessage(
                "Couldn't find the MenuItem that equals to sender from MenuStatusHolder.Items",
                "Failed to set connection status",
                SkinnedWindow.IconType.Error
            );
        }

        private TreeViewItem GetContainerFromItem(ItemsControl parent, object item)
        {
            if (parent == null)
                return null;

            TreeViewItem container =
                parent.ContainerFromItem(item) as TreeViewItem;

            if (container != null)
                return container;

            foreach (object child in parent.Items)
            {
                TreeViewItem parentContainer =
                    parent.ContainerFromItem(child) as TreeViewItem;

                TreeViewItem result = GetContainerFromItem(parentContainer, item);
                if (result != null)
                    return result;
            }

            return null;
        }

        private List<object> GetExtras(MenuItem GetExtrasMenuItem)
        {
            List<object> items = new List<object>();
            var ep = Universal.Plugin as IExtras;
            if (ep.ExtraConfigurations.Count == 0)
            {
                items.Add(GetExtrasMenuItem);
                return items;
            }
            foreach (var extra in ep.ExtraConfigurations)
            {
                var item = new MenuItem()
                {
                    Header = extra.title
                };
                ToolTip.SetTip(item, extra.description);
                item.Click += (_, __) => extra.onRun();
                items.Add(item);
            }
            items.Add(new Separator());
            items.Add(GetExtrasMenuItem);
            return items;

        }

        #endregion

        #region Message sending

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message == null)
                return;

            string message_body = message ?? ExtractText(MessageTextBox);

            MessageTextBox.Text = string.Empty;
            CheckIfMTBUnfocused();

            await vmodel.SendMessage(message_body);
        }

        private void CheckIfMTBUnfocused(bool force = false)
        {
            if (!MessageTextBox.IsFocused || force)
            {
                if (!HasAnyContent(MessageTextBox))
                {
                    SetPlaceholder(MessageTextBox, PlaceholderTextMTB);
                }
                if (SendMsgButton != null) SendMsgButton.IsEnabled = CheckIfMessageSendable(MessageTextBox);
            }
        }

        #endregion

        #region Calls

        private ContentControl frame;
        private CallScreen screen;
        private CallScreen.LocationChangeEventArgs location;
        protected CallScreen.LocationChangeEventArgs initial_location =
            new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);

        protected virtual CallScreen.LocationChangeEventArgs GetInitialCallLocation()
        {
            return new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);
        }

        protected async void InitiateCall(Conversation conversation, bool is_answering_call = false)
        {
            if (!vmodel.CheckCallEligibility(conversation))
                return;

            CallScreen.LocationChangeEventArgs initial_location = GetInitialCallLocation();

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
            TopbarWindowRow.MaxHeight = ChatArea.Bounds.Height * 0.7;
            TopbarWindowRow.Height = new GridLength(ChatArea.Bounds.Height * 0.7); // TODO: Retain this across reboots and sessions
            ChatButtonRow.Height = new GridLength(0);

            screen = new CallScreen(conversation, initial_location, is_answering_call);
            screen.HangUpRequested += OnHangUp;
            screen.LocationChangeRequested += OnLocationChanged;
            frame = new ContentControl();
            frame.Content = screen;
            SetCallPageLocation(initial_location);

            await screen.StartCall(false);
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
                Settings.HideLeftHandSide = this.location.SidebarToggle ? false : true;
                Settings.Save();
                SetCallPageLocation(new CallScreen.LocationChangeEventArgs(true, true), false); // quickly reset stuff
                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;
                ChatProfileArea.IsVisible = true;
                FillMessagePanelHost.IsVisible = false;
                TopbarWindowRow.MinHeight = TWR_ORIGINAL_MINHEIGHT;
                TopbarWindowRow.MaxHeight = TWR_ORIGINAL_MAXHEIGHT_CALLS;
                TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                ChatButtonRow.Height = new GridLength(CBR_ORIGINAL_HEIGHT);
                if (screen != null)
                {
                    screen.HangUpRequested -= OnHangUp;
                    screen.LocationChangeRequested -= OnLocationChanged;
                    screen.IsVisible = false;
                    frame.IsVisible = false;
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
                ChatProfileArea.IsVisible = false;
                // Show ContentArea here, as it is visible in all cases except with both sidebar and chat hidden
                ContentArea.IsVisible = true;
                // Same for this, but with chat hidden only now
                ChatTopBarSplitter.IsVisible = false;
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
                        TWR_HEIGHT_CALLS_CHAT = ChatArea.Bounds.Height * 0.7;
                    TopbarWindowRow.Height = new GridLength(TWR_HEIGHT_CALLS_CHAT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    TopbarWindowRow.MaxHeight = ChatArea.Bounds.Height * 0.7;
                    ChatTopBarSplitter.IsVisible = true;
                    ChatTopbarSplitterRow.MaxHeight = int.MaxValue;
                }
                // Show everything
                if (location.SidebarToggle && location.ChatToggle)
                {
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    FillMessagePanelHost.IsVisible = true;
                    FillMessagePanelHost.Content = frame;
                    return;
                }
                // Show nothing
                if (!location.SidebarToggle && !location.ChatToggle)
                {
                    ContentArea.IsVisible = false;
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
                FillMessagePanelHost.IsVisible = true;
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
            OnConversationSelecting();
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format(
                "sCHAT_TYPE_HERE_DIALOG",
                vmodel.SelectedConversation?.DisplayName
            );
            SetPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = CheckIfMessageSendable(MessageTextBox);
            Spinner.IsVisible = true;

            await vmodel.SetConversation();

            if (vmodel.SelectedConversation == null)
                return;

            ConversationItemsList.ItemsSource = vmodel.ActiveConversation;
            Spinner.IsVisible = false;
            _conversationScrollViewer?.ScrollToEnd();
            UpdateMessageSendButtonState();
        }

        private void HandleConversationItems()
        {
            if (_conversationScrollViewer != null)
                _conversationScrollViewer.ScrollChanged -= ConversationScrollChanged;

            _conversationScrollViewer =
                ConversationItemsList.GetVisualDescendants().OfType<ScrollViewer>().FirstOrDefault();
            _conversationScrollViewer.ScrollChanged += ConversationScrollChanged;
        }

        private void ConversationScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            if (e.ExtentDelta.Y == 0)
                _userScrolledUp =
                    _conversationScrollViewer.Offset.Y
                    < _conversationScrollViewer.Extent.Height - _conversationScrollViewer.Viewport.Height - 10;
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
                    Cursor = new Cursor(StandardCursorType.Hand),
                };
                ToolTip.SetTip(border, SharedServices.ConvertHexKeyToUnicode(emojiKey));
                try
                {
                    var sliceControl = Formatter.MakeEmoji(emojiFilename);
                    sliceControl.Tag = emojiFilename;
                    border.Child = sliceControl;
                    border.PointerReleased += EmojiBox_Click;
                    border.PointerEntered += (s, ev) =>
                        ((Border)s).Background = new SolidColorBrush(
                            Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF)
                        );
                    border.PointerExited += (s, ev) => ((Border)s).Background = Brushes.Transparent;
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

        private void EmojiBox_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            var border = sender as Border;
            if (!(border?.Child is SliceControl sliceControlInside)) return;

            EmojiFlyout.IsOpen = false;
            RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var emojiKey = EmojiDictionary
                .Map.FirstOrDefault(kvp => kvp.Value == emojiFilename)
                .Key;
            if (string.IsNullOrEmpty(emojiKey)) return;

            int start = Math.Min(MessageTextBox.SelectionStart, MessageTextBox.SelectionEnd);
            int length = Math.Abs(MessageTextBox.SelectionEnd - MessageTextBox.SelectionStart);
            string text = MessageTextBox.Text ?? string.Empty;
            string insert = SharedServices.ConvertHexKeyToUnicode(emojiKey) + " ";

            MessageTextBox.Text = text.Remove(start, length).Insert(start, insert);
            MessageTextBox.CaretIndex = start + insert.Length;
            MessageTextBox.Focus();
            if (SendMsgButton != null) SendMsgButton.IsEnabled = CheckIfMessageSendable(MessageTextBox);
        }

        #endregion

        private void InitiateSignOut(bool switchuser = false) => vmodel.InitiateSignOut(switchuser);

        private void RefreshExtras()
        {
            ExtrasMenu.ItemsSource = null;
            ExtrasMenu.Items.Clear();
            ExtrasMenu.ItemsSource = GetExtras(GetExtrasMenuItem);
        }

        private void RefreshCreds(object sender = null, PropertyChangedEventArgs e = null)
        {
            ShowCreditText(GetCreditText());
        }
    }
}