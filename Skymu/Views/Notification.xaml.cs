/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using MiddleMan;
using Skymu.Skyaeris;
using Skymu.ViewModels;

namespace Skymu.Views
{
    public partial class Notification : Window
    {
        private static Notification _activeNotification = null;
        private DispatcherTimer _closeTimer;
        private const int MaxMessages = 5;
        private const string SHARED_PHOTO = "shared a photo";
        private BitmapImage blue_background = null;

        public Notification(MessageRecievedEventArgs e, int durationSeconds = 5)
        {
            if (!Properties.Settings.Default.EnableNotifications || Universal.CurrentUser is null)
                return;

            // jim: self explanatory, if its on dnd PLEASE do not send notifications.

            if (Universal.CurrentUser?.ConnectionStatus == UserConnectionStatus.DoNotDisturb)
            {
                Debug.WriteLine("Notification: user is in Do Not Disturb mode, suppress");
                return;
            }

            if (_activeNotification != null && !_activeNotification.IsLoaded)
            {
                _activeNotification = null;
            }

            if (_activeNotification == null)
            {
                _activeNotification = new Notification();
                _activeNotification.InitializeComponent();

                if (Properties.Settings.Default.BlueNotifications)
                {
                    if (blue_background == null)
                    {
                        blue_background = Converters.Helpers.AssetPathGenerator(
                            "Notifications/bubble-blue.png",
                            false
                        );
                    }
                    _activeNotification.bubble.Source = blue_background;
                }

                Notification notif = _activeNotification;

                notif._closeTimer = new DispatcherTimer
                {
                    Interval = TimeSpan.FromSeconds(durationSeconds),
                };

                notif._closeTimer.Tick += (s, ev) =>
                {
                    if (notif.close.Visibility == Visibility.Visible)
                    {
                        notif._closeTimer.Stop();
                        notif._closeTimer.Start();
                        return;
                    }

                    notif._closeTimer.Stop();

                    var fadeOut = new DoubleAnimation
                    {
                        From = notif.Opacity,
                        To = 0,
                        Duration = TimeSpan.FromMilliseconds(250),
                        EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseOut },
                    };

                    fadeOut.Completed += (_, __) =>
                    {
                        notif.Close();

                        if (_activeNotification == notif)
                            _activeNotification = null;
                    };

                    notif.BeginAnimation(Window.OpacityProperty, fadeOut);
                };

                notif.Loaded += (s, ev) =>
                {
                    notif.PositionNotification();
                };

                notif.Closed += (s, ev) =>
                {
                    if (notif._closeTimer != null)
                        notif._closeTimer.Stop();

                    if (_activeNotification == notif)
                        _activeNotification = null;
                };

                _activeNotification.Show();
                Taskbar.Flash(Application.Current.MainWindow);
            }

            _activeNotification.AddMessage((Message)e.Item, e);

            if (_activeNotification != null && _activeNotification._closeTimer != null)
            {
                _activeNotification._closeTimer.Stop();
                _activeNotification._closeTimer.Interval = TimeSpan.FromSeconds(durationSeconds);
                _activeNotification._closeTimer.Start();
            }

            Sounds.Play("message-recieved");
        }

        private Notification() { }

        private void AddMessage(Message message, MessageRecievedEventArgs e)
        {
            Conversation conversation =
                Universal.Plugin.RecentsList?.FirstOrDefault(c => c.Identifier == e.ConversationId)
                ?? Universal.Plugin.ContactsList?.FirstOrDefault(c =>
                    c.Identifier == e.ConversationId
                );

            bool isGroupChat = conversation is Group;

            bool hasImage = false;
            if (message.Attachments != null && message.Attachments.Length > 0)
            {
                foreach (var attachment in message.Attachments)
                {
                    if (
                        attachment != null
                        && attachment.Type == AttachmentType.Image || attachment.Type == AttachmentType.ThumbnailImage
                        && (attachment.File != null || !string.IsNullOrWhiteSpace(attachment.Url))
                    )
                    {
                        hasImage = true;
                        break;
                    }
                }
            }

            bool hasMessage = !string.IsNullOrWhiteSpace(message.Text);

            Grid messageGrid = new Grid();
            messageGrid.ColumnDefinitions.Add(new ColumnDefinition { Width = GridLength.Auto });
            messageGrid.ColumnDefinitions.Add(
                new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) }
            );
            messageGrid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            messageGrid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });

            SliceControl statusIcon = new SliceControl
            {
                Source = Helpers.FrozenImage.Generate(Converters.Helpers.GetAssetBasePrefix(null, true) + "Icon Bitmap/skype-status.png"),
                ElementCount = 22,
                StackDirection = SpriteStackDirection.Horizontal,
                DefaultIndex = isGroupChat
                    ? 21
                    : MainViewModel.GetIntFromStatus(message.Sender.ConnectionStatus),
                HorizontalAlignment = HorizontalAlignment.Left,
                Margin = new Thickness(0, 0, 4, 0),
                HoverIndex = -1,
                PressedIndex = -1,
                SliceMode = 0,
                Width = 16,
            };
            Grid.SetRow(statusIcon, 0);
            Grid.SetColumn(statusIcon, 0);
            messageGrid.Children.Add(statusIcon);

            TextBlock titleText = new TextBlock
            {
                FontWeight = FontWeights.Normal,
                Foreground = Brushes.Black,
                VerticalAlignment = VerticalAlignment.Center,
            };

            if (isGroupChat)
            {
                titleText.Text = conversation.DisplayName;
            }
            else
            {
                titleText.Text = message.Sender.DisplayName;
            }

            Grid.SetRow(titleText, 0);
            Grid.SetColumn(titleText, 1);
            messageGrid.Children.Add(titleText);

            TextBlock messageText;
            if (isGroupChat)
            {
                if (hasImage)
                {
                    if (hasMessage)
                        messageText = MessageTools.FormTextblock(
                            message.Sender.DisplayName
                                + $" {SHARED_PHOTO}: \""
                                + message.Text
                                + "\""
                        );
                    else
                        messageText = MessageTools.FormTextblock(
                            message.Sender.DisplayName + $" {SHARED_PHOTO}"
                        );
                }
                else if (hasMessage)
                {
                    messageText = MessageTools.FormTextblock(
                        message.Sender.DisplayName + ": \"" + message.Text + "\""
                    );
                }
                else
                {
                    messageText = MessageTools.FormTextblock(message.Sender.DisplayName);
                }
            }
            else
            {
                if (hasImage)
                {
                    if (hasMessage)
                        messageText = MessageTools.FormTextblock(
                            $"{SHARED_PHOTO}: \"" + message.Text + "\""
                        );
                    else
                        messageText = MessageTools.FormTextblock($"{SHARED_PHOTO}");
                }
                else if (hasMessage)
                {
                    messageText = MessageTools.FormTextblock("\"" + message.Text + "\"");
                }
                else
                {
                    messageText = MessageTools.FormTextblock("(no message)");
                }
            }

            messageText.Foreground = (SolidColorBrush)Application.Current.Resources["Text.MediumContrast"];
            messageText.FontSize = 11;
            messageText.Margin = new Thickness(0, 1, 0, 6);
            Grid.SetRow(messageText, 1);
            Grid.SetColumn(messageText, 1);
            messageGrid.Children.Add(messageText);

            if (this.MessagesContainer.Children.Count >= MaxMessages)
            {
                this.MessagesContainer.Children.RemoveAt(this.MessagesContainer.Children.Count - 1);
            }

            this.MessagesContainer.Children.Insert(0, messageGrid);

            this.UpdateLayout();
            PositionNotification();
        }

        private void PositionNotification()
        {
            var workingArea = SystemParameters.WorkArea;
            this.Left = workingArea.Right - this.ActualWidth - 5;
            this.Top = workingArea.Bottom - this.ActualHeight - 1;
        }

        private void Window_MouseEnter(object sender, System.Windows.Input.MouseEventArgs e)
        {
            close.Visibility = Visibility.Visible;
        }

        private void Window_MouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
        {
            close.Visibility = Visibility.Hidden;
        }

        private void CloseButton_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Close();
        }

        private void Window_MouseRightButtonDown(
            object sender,
            System.Windows.Input.MouseButtonEventArgs e
        )
        {
            Close();
        }
    }
}
