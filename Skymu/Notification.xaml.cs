using MiddleMan;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace Skymu
{
    public partial class Notification : Window
    {
        private static List<Notification> _activeNotifications = new List<Notification>();
        private static readonly object _lock = new object();

        public Notification(NotificationEventArgs e, int durationSeconds = 5)
        {
            if (!Properties.Settings.Default.EnableNotifications) return;
            if (e.Item is Message message)
            {
                if (MainWindow.Identifier == message.Sender.Identifier)
                {
                    Debug.WriteLine("Notification: message is from me, suppress");
                    return;
                }

                // 2. window not active → allow notification
                if (!MainWindow.IsWindowActive)
                {
                    Debug.WriteLine("Notification: window is inactive, show");
                }
                else
                {
                    // window IS active

                    // 3. selected contact exists and is a GROUP chat, and message is from that channel
                    if (MainWindow.SelectedContact is not null)
                    {

                        if (!(MainWindow.SelectedContact is User) &&
                            MainWindow.SelectedContact.Identifier == e.SentInChannelID)
                        {
                            Debug.WriteLine("Notification: message is from the active group chat, suppress");
                            return;
                        }

                        // 4. selected contact exists and is a DM, and message is from that user
                        if (MainWindow.SelectedContact is User &&
                            message?.Sender.Identifier == MainWindow.SelectedContact.Identifier)
                        {
                            Debug.WriteLine("Notification: message is from the active direct message, suppress");
                            return;
                        }
                    }
                }
                InitializeComponent();

                if (Properties.Settings.Default.AccurateNotifications)
                {
                    string packUri = "pack://application:,,,/Resources/light/notifications/bubble-orange.png";
                    bubble.Source = new BitmapImage(new Uri(packUri, UriKind.Absolute));
                }

                StatusIcon.DefaultIndex = MainWindow.GetIntFromStatus(e.Status);
                TitleText.Text = message.Sender.DisplayName;
                TextBlock tb = MessageTools.FormTextblock(message.Text);
                tb.MaxHeight = 30;
                tb.TextTrimming = TextTrimming.CharacterEllipsis;
                tb.TextWrapping = TextWrapping.Wrap;
                tb.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#666666");
                tb.FontSize = 11;
                Message.Content = tb;

                var timer = new DispatcherTimer
                {
                    Interval = TimeSpan.FromSeconds(durationSeconds)
                };

                timer.Tick += (s, e) =>
                {
                    timer.Stop();

                    var fadeOut = new DoubleAnimation
                    {
                        From = this.Opacity,
                        To = 0,
                        Duration = TimeSpan.FromMilliseconds(250),
                        EasingFunction = new QuadraticEase
                        {
                            EasingMode = EasingMode.EaseOut
                        }
                    };

                    fadeOut.Completed += (_, __) => this.Close();

                    this.BeginAnimation(Window.OpacityProperty, fadeOut);
                };

                timer.Start();


                this.Loaded += (s, e) =>
                {
                    PositionNotification();
                };

                this.Closed += (s, e) =>
                {
                    RemoveNotification(this);
                };

                Taskbar.Flash(Application.Current.MainWindow);
                this.Show();
                Sounds.Play("message-recieved");
            }
        }

        private void PositionNotification()
        {
            lock (_lock)
            {
                var workingArea = SystemParameters.WorkArea;
                this.Left = workingArea.Right - this.Width - 10;

                // Calculate the bottom position based on existing notifications
                double bottomOffset = 10;
                foreach (var notification in _activeNotifications)
                {
                    bottomOffset += notification.ActualHeight + 10;
                }

                this.Top = workingArea.Bottom - this.Height - bottomOffset;

                _activeNotifications.Add(this);
            }
        }



        private static void RemoveNotification(Notification notification)
        {
            lock (_lock)
            {
                int index = _activeNotifications.IndexOf(notification);
                if (index < 0) return;

                _activeNotifications.RemoveAt(index);

                // Animate repositioning of notifications below the removed one
                for (int i = index; i < _activeNotifications.Count; i++)
                {
                    var notif = _activeNotifications[i];
                    var workingArea = SystemParameters.WorkArea;

                    double bottomOffset = 10;
                    for (int j = 0; j < i; j++)
                    {
                        bottomOffset += _activeNotifications[j].ActualHeight + 10;
                    }

                    double newTop = workingArea.Bottom - notif.Height - bottomOffset;

                    // Smooth animation
                    var animation = new DoubleAnimation
                    {
                        From = notif.Top,
                        To = newTop,
                        Duration = TimeSpan.FromMilliseconds(200),
                        EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseOut }
                    };

                    notif.BeginAnimation(Window.TopProperty, animation);
                }
            }
        }
    }
}