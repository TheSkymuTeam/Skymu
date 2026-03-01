using MiddleMan;
using Skymu.Skyaeris;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace Skymu.Views
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
                if (Main.Identifier == message.Sender.Identifier)
                {
                    Debug.WriteLine("Notification: message is from me, suppress");
                    return;
                }

                // 2. window not active → allow notification
                if (!Main.IsWindowActive)
                {
                    Debug.WriteLine("Notification: window is inactive, show");
                }
                else
                {
                    // window IS active

                    if (Main.SelectedConversation is not null && Main.SelectedConversation.Identifier == e.SentInChannelID)
                    {
                        Debug.WriteLine("Notification: message is from the active chat, suppress");
                        return;
                    }
                }
                InitializeComponent();

                if (Properties.Settings.Default.AccurateNotifications)
                {
                    string packUri = "pack://application:,,,/" + Properties.Settings.Default.SkypeEra + "/Assets/Light/Notifications/bubble-orange.png";
                    bubble.Source = new BitmapImage(new Uri(packUri, UriKind.Absolute));
                }

                StatusIcon.DefaultIndex = Main.GetIntFromStatus(e.Status);
                TitleText.Text = message.Sender.DisplayName;

                TextBlock tb = MessageTools.FormTextblock("\"" + message.Text + "\"");

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
                this.Left = workingArea.Right - this.Width - 5;

                // Calculate the bottom position based on existing notifications
                double bottomOffset = 1;
                foreach (var notification in _activeNotifications)
                {
                    bottomOffset += notification.ActualHeight + 1;
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

                    double bottomOffset = 1;
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