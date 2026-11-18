/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Avalonia;
using Avalonia.Animation;
using Avalonia.Animation.Easings;
using Avalonia.Controls;
using Avalonia.Input;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Styling;
using Avalonia.Threading;
using Skymu.AvaloniaHelpers;
using Skymu.Converters;
using Skymu.Formatting;
using Skymu.Helpers;
using Skymu.Native.Windows;
using Skymu.Preferences;
using Skymu.Sounds;
using Avalonia.Layout;
using Skymu.ViewModels;
using System;
using System.Diagnostics;
using System.Linq;
using Yggdrasil.Bottles;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.Forms
{
    public partial class Notification : Window
    {
        private static Notification _activeNotification = null;
        private DispatcherTimer _closeTimer;
        private const int MaxMessages = 5;
        private const string SHARED_PHOTO = "shared a photo";
        private Bitmap blue_background = null;

        public Notification(MessageRecievedBottle e, int durationSeconds = 5)
        {
            if (!Settings.EnableNotifications || Universal.CurrentUser is null)
                return;

            // jim: self explanatory, if its on dnd PLEASE do not send notifications.

            if (Universal.CurrentUser?.ConnectionStatus == PresenceStatus.DoNotDisturb)
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

                if (Settings.BlueNotifications)
                {
                    if (blue_background == null)
                    {
                        blue_background = ImageHelper.Load(
                            "Themeable/Notifications/bubble-blue.png"
                        );
                    }
                    _activeNotification.bubble.Source = blue_background;
                }

                Notification notif = _activeNotification;

                notif._closeTimer = new DispatcherTimer
                {
                    Interval = TimeSpan.FromSeconds(durationSeconds),
                };

                notif._closeTimer.Tick += async (s, ev) =>
                {
                    if (notif.close.IsVisible)
                    {
                        notif._closeTimer.Stop();
                        notif._closeTimer.Start();
                        return;
                    }

                    notif._closeTimer.Stop();

                    var fadeOut = new Animation
                    {
                        Duration = TimeSpan.FromMilliseconds(250),
                        Easing = new QuadraticEaseOut(),
                        FillMode = FillMode.Forward,
                        Children =
        {
            new KeyFrame
            {
                Cue = new Cue(0d),
                Setters =
                {
                    new Setter(Visual.OpacityProperty, notif.Opacity)
                }
            },
            new KeyFrame
            {
                Cue = new Cue(1d),
                Setters =
                {
                    new Setter(Visual.OpacityProperty, 0d)
                }
            }
        }
                    };

                    await fadeOut.RunAsync(notif);

                    notif.Close();

                    if (_activeNotification == notif)
                        _activeNotification = null;
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
                Taskbar.Flash(AHelpers.GetMainWindow());
            }

            _activeNotification.AddMessage((Message)e.Item, e);

            if (_activeNotification != null && _activeNotification._closeTimer != null)
            {
                _activeNotification._closeTimer.Stop();
                _activeNotification._closeTimer.Interval = TimeSpan.FromSeconds(durationSeconds);
                _activeNotification._closeTimer.Start();
            }

            SoundManager.Play("IM");
        }

        private Notification() { }

        private void AddMessage(Message message, MessageRecievedBottle e)
        {
            Conversation conversation =
                Universal.ActiveViewModel.ConversationList?.FirstOrDefault(c => c.Identifier == e.ConversationId)
                ?? Universal.ActiveViewModel.ContactList?.FirstOrDefault(c =>
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
                Source = Helpers.ImageHelper.Load("Universal/Icon/skype-status.png"),
                ElementCount = 22,
                StackDirection = SpriteStackDirection.Horizontal,
                DefaultIndex = isGroupChat
                    ? 21
                    : MainViewModel.GetIntFromStatus(message.Author.ConnectionStatus),
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
                FontWeight = FontWeight.Normal,
                Foreground = Brushes.Black,
                VerticalAlignment = VerticalAlignment.Center,
            };

            if (isGroupChat)
            {
                titleText.Text = conversation.DisplayName;
            }
            else
            {
                titleText.Text = message.Author.DisplayName;
            }

            Grid.SetRow(titleText, 0);
            Grid.SetColumn(titleText, 1);
            messageGrid.Children.Add(titleText);

            TextBlock messageText;
            string body;
            if (hasImage && hasMessage) body = $"{SHARED_PHOTO}: \"{message.Text}\"";
            else if (hasImage) body = SHARED_PHOTO;
            else if (hasMessage) body = $"\"{message.Text}\"";
            else body = isGroupChat ? null : "(no message)";

            string raw = isGroupChat
                ? (body != null ? $"{message.Author.DisplayName} {body}" : message.Author.DisplayName)
                : body ?? "(no message)";

            messageText = Formatter.Parse(raw);
            messageText.Foreground = (SolidColorBrush)Application.Current.FindResource("Text.MediumContrast");
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
            var screen = Screens.ScreenFromWindow(this);
            var workingArea = screen.WorkingArea;

            this.Position = new PixelPoint(
                workingArea.Right - (int)this.Bounds.Width - 5,
                workingArea.Bottom - (int)this.Bounds.Height - 1);
        }

        private void Window_PointerEntered(object sender, PointerEventArgs e)
        {
            close.IsVisible = true;
        }

        private void Window_PointerExited(object sender, PointerEventArgs e)
        {
            close.IsVisible = false;
        }

        private void CloseButton_Click(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;
            Close();
        }

        private void Window_PointerPressed(
            object sender,
            PointerPressedEventArgs e
        )
        {
            if (!e.GetCurrentPoint(this).Properties.IsRightButtonPressed) return;
            Close();
        }
    }
}
