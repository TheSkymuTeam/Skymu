using Avalonia;
using Avalonia.Animation;
using Avalonia.Animation.Easings;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Controls.Documents;
using Avalonia.Controls.Primitives;
using Avalonia.Controls.Shapes;
using Avalonia.Data;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using Avalonia.Styling;
using Avalonia.Threading;
using Avalonia.VisualTree;
using Skymu.Formatting;
using Skymu.Forms;
using Skymu.Helpers;
using Skymu.Sounds;
using Skymu.Theming;
using Skymu.WebServices;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Models;

﻿/*==========================================================*/
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


namespace Skymu.Skype7
{
    public partial class Main : MainWindowBase
    {
        #region Variables

        // Constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CONTACT = "This plugin does not support adding contacts.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string MSG_SEND_ERR = "Error sending message.";

        private SliceControl _currentTab;
        private static readonly IBrush SearchHintBrush = CreateSearchHintBrush();

        /// <summary>Max bubble text width from live transcript (UIA ~739px list → ~594px wrap).</summary>
        public static readonly StyledProperty<double> TranscriptBubbleMaxWidthProperty =
            AvaloniaProperty.Register<Main, double>(nameof(TranscriptBubbleMaxWidth), 594.0);

        public double TranscriptBubbleMaxWidth
        {
            get => GetValue(TranscriptBubbleMaxWidthProperty);
            set => SetValue(TranscriptBubbleMaxWidthProperty, value);
        }

        public static readonly StyledProperty<Thickness> ChatContentMarginProperty =
            AvaloniaProperty.Register<Main, Thickness>(nameof(ChatContentMargin), new Thickness(0));

        public Thickness ChatContentMargin
        {
            get => GetValue(ChatContentMarginProperty);
            set => SetValue(ChatContentMarginProperty, value);
        }

        /// <summary>Text line wrap width inside bubble (border max minus 17+17 horizontal padding).</summary>
        public static readonly StyledProperty<double> TranscriptBubbleTextMaxWidthProperty =
            AvaloniaProperty.Register<Main, double>(nameof(TranscriptBubbleTextMaxWidth), 526.0);

        public double TranscriptBubbleTextMaxWidth
        {
            get => GetValue(TranscriptBubbleTextMaxWidthProperty);
            set => SetValue(TranscriptBubbleTextMaxWidthProperty, value);
        }

        private static IBrush CreateSearchHintBrush()
        {
            var brush = new SolidColorBrush(Color.FromRgb(0x6E, 0x6E, 0x73));
            return brush;
        }

        private void PaintSearchHint()
        {
            if (SearchBox != null && SearchBox.Tag as string == "PLACEHOLDER")
                SearchBox.Foreground = SearchHintBrush;
        }

        protected override bool ResizesTabColumns => false;

        private readonly Bitmap contactsBtnImage = ImageHelper.Load("Themeable/Main/contacts.png");
        private readonly Bitmap recentsBtnImage = ImageHelper.Load("Themeable/Main/recents.png");
        private readonly Bitmap sidebarBtnEmpty = ImageHelper.Load("Themeable/Main/empty.png");

        private Control Browser; // TODO delete


        #endregion


        #region Home and Chat window switching

        protected override void ShowHomeView()
        {
            ToggleStatusBoxSelection(true);
            CallButton.Text = "";
            CallDropdown.Opacity = 0;
            HeaderStar.IsVisible = false;
            HeaderSubtitle.Text = "";
            ParticipantStrip.IsVisible = false;
            CloseParticipants();
            PaintRecentBadge();

            Topbar.Text = Universal.Lang["sZAPBUTTON_SKYPEHOME"];
            ChatProfileArea.IsVisible = false;
            MessageWindow.IsVisible = false;

            if (vmodel.UseSkypeHome)
            {
                browserHost.IsVisible = true;
                Browser.IsVisible = true;
            }
            else
                HomeUnavailableFrame.IsVisible = true;
        }

        protected override void ShowChatView()
        {
            ToggleStatusBoxSelection(false);
            CallButton.Text = "";
            CallDropdown.Opacity = 0;
            HeaderStar.IsVisible = true;
            var group = vmodel.SelectedConversation as Group;
            HeaderSubtitle.Text = group?.Members == null
                ? ""
                : group.Members.Length + " participants";
            ParticipantStrip.IsVisible = false;
            CloseParticipants();
            PaintRecentBadge();

            ChatProfileArea.IsVisible = true;
            MessageWindow.IsVisible = true;
            Browser.IsVisible = false;
            browserHost.IsVisible = false;
            HomeUnavailableFrame.IsVisible = false;

            Dispatcher.UIThread.Post(PaintComposerHint, DispatcherPriority.Background);
        }

        private void Participants_Click(object sender, PointerReleasedEventArgs e)
        {
            var group = vmodel.SelectedConversation as Group;
            if (group?.Members == null || group.Members.Length == 0)
                return;
            bool open = !ParticipantStrip.IsVisible || ParticipantStrip.Height < 20;
            if (open)
                ParticipantList.ItemsSource = group.Members;
            AnimateParticipants(open);
            e.Handled = true;
        }

        // The 7.18 strip slides at a constant speed. EaseInOut is here for a later setting.
        private const bool ParticipantStripEase = false;

        private async void AnimateParticipants(bool open)
        {
            ParticipantStrip.IsVisible = true;
            double from = ParticipantStrip.Height;
            double to = open ? 41 : 0;
            var anim = new Animation
            {
                Duration = TimeSpan.FromMilliseconds(60),
                Easing = ParticipantStripEase ? new QuadraticEaseOut() : null,
                Children =
                {
                    new KeyFrame
                    {
                        Cue = new Cue(0),
                        Setters = { new Setter(Layoutable.HeightProperty, from) },
                    },
                    new KeyFrame
                    {
                        Cue = new Cue(1),
                        Setters = { new Setter(Layoutable.HeightProperty, to) },
                    },
                },
            };
            await anim.RunAsync(ParticipantStrip);
            if (!open && ParticipantStrip.Height < 1)
                ParticipantStrip.IsVisible = false;
        }

        private void CloseParticipants()
        {
            ParticipantStrip.Height = 0;
            ParticipantStrip.IsVisible = false;
        }

        private void PaintComposerHint()
        {
            if (MessageTextBox == null)
                return;
            var field = typeof(MainWindowBase).GetField(
                "PlaceholderTextMTB",
                BindingFlags.Instance | BindingFlags.NonPublic);
            field?.SetValue(this, "Type a message here");
            SetPlaceholder(MessageTextBox, "Type a message here", true);
            TintComposerPlaceholder();
        }

        private TextBlock _selAnchor;
        private int _selAnchorIndex;
        private TextBlock _selEnd;
        private int _selEndIndex;
        private IPointer _capturingTranscriptPointer;

        public static readonly AttachedProperty<bool> HookedProperty =
            AvaloniaProperty.RegisterAttached<Main, TextBlock, bool>("Hooked");
        public static readonly AttachedProperty<string> SourceTextProperty =
            AvaloniaProperty.RegisterAttached<Main, TextBlock, string>("SourceText");
        public static readonly AttachedProperty<IBrush> NormalForegroundProperty =
            AvaloniaProperty.RegisterAttached<Main, TextBlock, IBrush>("NormalForeground");
        private static readonly IBrush TranscriptHighlight = CreateHighlight();

        private static IBrush CreateHighlight()
        {
            var brush = new SolidColorBrush(Color.FromRgb(0x00, 0x78, 0xD7));
            return brush;
        }

        private static void OnSourceTextChanged(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
        {
            if (d is TextBlock block && TopLevel.GetTopLevel(block) is Main main)
                main.PaintBlock(block);
        }

        // One Windows highlight across message text, names, dates and timestamps.
        // TChatContentControl does this as a single drag, not one box per bubble.
        private void HookTranscriptSelection()
        {
            ConversationItemsList.AddHandler(
                PointerPressedEvent,
                Transcript_Down,
                RoutingStrategies.Tunnel,
                handledEventsToo: true);
            ConversationItemsList.AddHandler(PointerMovedEvent, Transcript_Move, RoutingStrategies.Tunnel, handledEventsToo: true);
            ConversationItemsList.AddHandler(PointerReleasedEvent, Transcript_Up, RoutingStrategies.Tunnel, handledEventsToo: true);
            AddHandler(KeyDownEvent, Transcript_Copy, RoutingStrategies.Tunnel, handledEventsToo: true);
        }

        private void Transcript_Down(object sender, PointerPressedEventArgs e)
        {
            var blocks = TranscriptBlocks();
            TextBlock hit = HitTranscript(e.GetPosition(ConversationItemsList), blocks);
            if (hit == null)
            {
                _selAnchor = null;
                _selEnd = null;
                PaintTranscript();
                return;
            }
            _selAnchor = hit;
            _selAnchorIndex = IndexInBlock(hit, e.GetPosition(hit));
            _selEnd = hit;
            _selEndIndex = _selAnchorIndex;
            _capturingTranscriptPointer = e.Pointer;
            e.Pointer.Capture(ConversationItemsList);
            e.Handled = true;
            PaintTranscript();
        }

        private void Transcript_Move(object sender, PointerEventArgs e)
        {
            if (_capturingTranscriptPointer == null || _selAnchor == null || !e.GetCurrentPoint(ConversationItemsList).Properties.IsLeftButtonPressed)
                return;
            var blocks = TranscriptBlocks();
            TextBlock hit = HitTranscript(e.GetPosition(ConversationItemsList), blocks) ?? _selEnd ?? _selAnchor;
            _selEnd = hit;
            _selEndIndex = IndexInBlock(hit, e.GetPosition(hit));
            PaintTranscript();
            e.Handled = true;
        }

        private void Transcript_Up(object sender, PointerReleasedEventArgs e)
        {
            if (_capturingTranscriptPointer != null)
            {
                if (_capturingTranscriptPointer.Captured == ConversationItemsList)
                    _capturingTranscriptPointer.Capture(null);
                _capturingTranscriptPointer = null;
            }
        }

        private void Transcript_Copy(object sender, KeyEventArgs e)
        {
            if (e == null || e.Key != Key.C || (e.KeyModifiers & KeyModifiers.Control) == 0)
                return;
            if (CopyTranscriptSelection())
                e.Handled = true;
        }

        private bool CopyTranscriptSelection()
        {
            string text = SelectedTranscriptText();
            if (text.Length == 0)
                return false;
            TopLevel.GetTopLevel(this)?.Clipboard?.SetTextAsync(text);
            return true;
        }

        private string SelectedTranscriptText()
        {
            var parts = new List<string>();
            foreach (TextBlock block in TranscriptBlocks())
            {
                (int start, int length) = RangeFor(block);
                if (length <= 0)
                    continue;
                string raw = BlockText(block);
                if (start < 0)
                    start = 0;
                if (start > raw.Length)
                    start = raw.Length;
                if (start + length > raw.Length)
                    length = raw.Length - start;
                if (length > 0)
                    parts.Add(raw.Substring(start, length));
            }
            return string.Join(Environment.NewLine, parts);
        }

        private void SelectWholeTranscript()
        {
            var blocks = TranscriptBlocks();
            if (blocks.Count == 0)
                return;
            _selAnchor = blocks[0];
            _selAnchorIndex = 0;
            _selEnd = blocks[blocks.Count - 1];
            _selEndIndex = BlockText(_selEnd).Length;
            PaintTranscript();
        }

        private bool HasTranscriptSelection()
        {
            return SelectedTranscriptText().Length > 0;
        }

        private void PaintTranscript()
        {
            foreach (TextBlock block in TranscriptBlocks())
                PaintBlock(block);
        }

        private void PaintBlock(TextBlock block)
        {
            Hook(block);
            string raw = BlockText(block);
            (int start, int length) = RangeFor(block);
            if (start < 0)
                start = 0;
            if (start > raw.Length)
                start = raw.Length;
            if (length < 0)
                length = 0;
            if (start + length > raw.Length)
                length = raw.Length - start;
            var normal = block.GetValue(NormalForegroundProperty) as Brush ?? block.Foreground;
            block.Inlines.Clear();
            if (length == 0)
            {
                block.Inlines.Add(new Run(raw) { Foreground = normal });
                return;
            }
            if (start > 0)
                block.Inlines.Add(new Run(raw.Substring(0, start)) { Foreground = normal });
            block.Inlines.Add(new Run(raw.Substring(start, length))
            {
                Foreground = Brushes.White,
                Background = TranscriptHighlight,
            });
            if (start + length < raw.Length)
                block.Inlines.Add(new Run(raw.Substring(start + length)) { Foreground = normal });
        }

        private (int start, int length) RangeFor(TextBlock block)
        {
            if (_selAnchor == null || _selEnd == null)
                return (0, 0);
            var blocks = TranscriptBlocks();
            int a = blocks.IndexOf(_selAnchor);
            int b = blocks.IndexOf(_selEnd);
            int i = blocks.IndexOf(block);
            if (a < 0 || b < 0 || i < 0)
                return (0, 0);
            int anchorIndex = _selAnchorIndex;
            int endIndex = _selEndIndex;
            if (a > b || (a == b && anchorIndex > endIndex))
            {
                int swap = a;
                a = b;
                b = swap;
                int swapIndex = anchorIndex;
                anchorIndex = endIndex;
                endIndex = swapIndex;
            }
            string raw = BlockText(block);
            if (i < a || i > b)
                return (0, 0);
            if (a == b)
                return (anchorIndex, Math.Max(0, endIndex - anchorIndex));
            if (i == a)
                return (anchorIndex, Math.Max(0, raw.Length - anchorIndex));
            if (i == b)
                return (0, Math.Min(raw.Length, endIndex));
            return (0, raw.Length);
        }

        private static void Hook(TextBlock block)
        {
            if (block.GetValue(HookedProperty))
                return;
            block.SetValue(HookedProperty, true);
            block.SetValue(NormalForegroundProperty, block.Foreground);
            block.SetValue(SourceTextProperty, block.Text ?? "");
            block.PropertyChanged += (s, e) =>
            {
                if (e.Property == TextBlock.TextProperty)
                    block.SetValue(SourceTextProperty, block.Text ?? "");
            };
        }

        private static string BlockText(TextBlock block)
        {
            Hook(block);
            return block.GetValue(SourceTextProperty) as string ?? "";
        }

        private List<TextBlock> TranscriptBlocks()
        {
            var blocks = new List<TextBlock>();
            if (ConversationItemsList != null)
                WalkTranscript(ConversationItemsList, blocks);
            return blocks;
        }

        private static void WalkTranscript(Visual node, List<TextBlock> blocks)
        {
            if (node is TextBlock block && block.Tag as string == "transcript" && block.IsVisible)
                blocks.Add(block);
            foreach (var child in node.GetVisualChildren())
                WalkTranscript(child, blocks);
        }

        private TextBlock HitTranscript(Point listPoint, List<TextBlock> blocks)
        {
            TextBlock nearest = null;
            double nearestDy = double.MaxValue;
            foreach (TextBlock block in blocks)
            {
                if (block.Bounds.Height <= 0)
                    continue;
                Point origin;
                try
                {
                    var pt = block.TranslatePoint(new Point(0, 0), ConversationItemsList);
                    if (!pt.HasValue)
                        continue;
                    origin = pt.Value;
                }
                catch
                {
                    continue;
                }
                var rect = new Rect(origin, new Size(block.Bounds.Width, block.Bounds.Height));
                if (rect.Contains(listPoint))
                    return block;
                double dy = listPoint.Y < rect.Top ? rect.Top - listPoint.Y : listPoint.Y - rect.Bottom;
                if (dy < nearestDy)
                {
                    nearestDy = dy;
                    nearest = block;
                }
            }
            return nearest;
        }

        private static int IndexInBlock(TextBlock block, Point local)
        {
            string text = BlockText(block);
            if (text.Length == 0)
                return 0;
            double dip = 1.0;
            var formatted = new FormattedText(
                text,
                CultureInfo.CurrentUICulture,
                FlowDirection.LeftToRight,
                new Typeface(block.FontFamily, block.FontStyle, block.FontWeight, block.FontStretch),
                block.FontSize,
                Brushes.Black);
            if (block.Bounds.Width > 1)
                formatted.MaxTextWidth = block.Bounds.Width;
            int best = text.Length;
            double bestDist = double.MaxValue;
            for (int i = 0; i < text.Length; i++)
            {
                Geometry glyph = formatted.BuildHighlightGeometry(new Point(0, 0), i, 1);
                if (glyph == null)
                    continue;
                Rect bounds = glyph.Bounds;
                if (bounds.Contains(local))
                    return i;
                double dx = local.X < bounds.Left ? bounds.Left - local.X : local.X > bounds.Right ? local.X - bounds.Right : 0;
                double dy = local.Y < bounds.Top ? bounds.Top - local.Y : local.Y > bounds.Bottom ? local.Y - bounds.Bottom : 0;
                double dist = dx * dx + dy * dy;
                if (dist < bestDist)
                {
                    bestDist = dist;
                    best = local.X > bounds.Right ? i + 1 : i;
                }
            }
            return best;
        }

        private void TintComposerPlaceholder()
        {
            if (MessageTextBox == null)
                return;
            var text = MessageTextBox.Text;
            if (text == null || text.Trim() != "Type a message here")
                return;
            MessageTextBox.Foreground = new SolidColorBrush(Color.FromRgb(0x73, 0xD3, 0xF7));
        }

        private void PaintRecentBadge()
        {
            int unread = 0;
            if (vmodel?.ConversationList != null)
            {
                foreach (var conversation in vmodel.ConversationList)
                {
                    if (conversation.UnreadCount > 0)
                        unread++;
                }
            }
            RecentBadge.Text = unread > 0 ? unread.ToString() : "";
        }

        private void StatusArea_MouseEnter(object sender, PointerEventArgs e)
        {
        }

        private void StatusArea_MouseLeave(object sender, PointerEventArgs e)
        {
        }

        Bitmap _sendIdle;
        Bitmap _sendActive;
        Bitmap _sendHover;

        private void Wash_Enter(object sender, PointerEventArgs e)
        {
            Fade(NameWash, 1, 300);
        }

        private bool _titleHover;

        private void TitleWash_Enter(object sender, PointerEventArgs e)
        {
            _titleHover = true;
            TitleEdit.IsVisible = true;
            Fade(TitleWashFill, 1, 180);
            Fade(TitleEdit, 1, 180);
        }

        private void TitleWash_Leave(object sender, PointerEventArgs e)
        {
            _titleHover = false;
            Fade(TitleWashFill, 0, 340);
            var hide = new Animation
            {
                Duration = TimeSpan.FromMilliseconds(340),
                Children =
                {
                    new KeyFrame { Cue = new Cue(0), Setters = { new Setter(Visual.OpacityProperty, TitleEdit.Opacity) } },
                    new KeyFrame { Cue = new Cue(1), Setters = { new Setter(Visual.OpacityProperty, 0.0) } },
                },
            };
            _ = hide.RunAsync(TitleEdit).ContinueWith(_ =>
            {
                Dispatcher.UIThread.Post(() =>
                {
                    if (!_titleHover)
                        TitleEdit.IsVisible = false;
                });
            });
        }

        private void Wash_Leave(object sender, PointerEventArgs e)
        {
            Fade(NameWash, 0, 270);
        }

        private void Pill_Enter(object sender, PointerEventArgs e)
        {
            Fade(sender as Visual, 1, 300);
        }

        private void Pill_Leave(object sender, PointerEventArgs e)
        {
            Fade(sender as Visual, 0, 270);
        }

        // Durations are the last color change in the one-second captures. No easing: the steps are linear.
        private void StripHover_Enter(object sender, PointerEventArgs e)
        {
            if ((sender as Control)?.Tag is Visual overlay)
                Fade(overlay, 1, FadeInMs(overlay));
        }

        private void StripHover_Leave(object sender, PointerEventArgs e)
        {
            if ((sender as Control)?.Tag is Visual overlay)
                Fade(overlay, 0, FadeOutMs(overlay));
        }

        private static int FadeInMs(Visual overlay)
        {
            switch ((overlay as Control)?.Name)
            {
                case "ClipHoverLayer": return 410;
                case "VideoHoverLayer":
                case "VoiceHoverLayer": return 370;
                case "EmojiHoverLayer": return 280;
                default: return 270;
            }
        }

        private static int FadeOutMs(Visual overlay)
        {
            switch ((overlay as Control)?.Name)
            {
                case "VideoHoverLayer":
                case "VoiceHoverLayer": return 310;
                case "AddHoverLayer": return 300;
                default: return 270;
            }
        }

        private static void Fade(Visual target, double to, int ms)
        {
            if (target == null)
                return;
            double from = target.Opacity;
            var anim = new Animation
            {
                Duration = TimeSpan.FromMilliseconds(ms),
                Children =
                {
                    new KeyFrame { Cue = new Cue(0), Setters = { new Setter(Visual.OpacityProperty, from) } },
                    new KeyFrame { Cue = new Cue(1), Setters = { new Setter(Visual.OpacityProperty, to) } },
                },
            };
            _ = anim.RunAsync(target);
        }

        private void SendHover_Enter(object sender, PointerEventArgs e)
        {
            Fade(SendHoverIcon, 1, 270);
        }

        private void SendHover_Leave(object sender, PointerEventArgs e)
        {
            Fade(SendHoverIcon, 0, 270);
        }

        protected override void OnComposerTextChanged(bool canSend)
        {
            if (SendIcon == null)
                return;
            if (_sendActive != null)
                SendIcon.Source = canSend ? _sendActive : _sendIdle;
            SendIcon.Opacity = canSend ? 1 : 0.45;
            if (SendMsgButton != null)
                SendMsgButton.Opacity = 0;
        }

        // Live send hover is the same circle with the blue moved to #0086B7. The skin strip is a lighter blue.
        private void BuildSendHover()
        {
            if (!(SendIcon.Source is Bitmap src))
                return;
            _sendIdle = src;
            // Enabled circle in 7.18 is #00AFF0. Hover is the same circle at #0086B7.
            _sendActive = RecolorSend(src, 0x00, 0xAF, 0xF0);
            _sendHover = RecolorSend(src, 0x00, 0x86, 0xB7);
            SendHoverIcon.Source = _sendHover;
            SendIcon.Source = SendIcon.Opacity > 0.9 ? _sendActive : _sendIdle;
        }

        private static Bitmap RecolorSend(Bitmap src, byte red, byte green, byte blue)
        {
            if (src is not WriteableBitmap writable)
                return src;
            var size = writable.PixelSize;
            int w = size.Width;
            int h = size.Height;
            int stride = w * 4;
            var pixels = new byte[stride * h];
            using (var fb = writable.Lock())
            {
                Marshal.Copy(fb.Address, pixels, 0, pixels.Length);
            }
            for (int i = 0; i < pixels.Length; i += 4)
            {
                if (pixels[i + 3] < 8)
                    continue;
                double wh = (pixels[i + 1] - 212.0) / (255.0 - 212.0);
                if (wh < 0)
                    wh = 0;
                if (wh > 1)
                    wh = 1;
                pixels[i] = (byte)(blue + (255 - blue) * wh);
                pixels[i + 1] = (byte)(green + (255 - green) * wh);
                pixels[i + 2] = (byte)(red + (255 - red) * wh);
            }
            var wb = new WriteableBitmap(size, writable.Dpi, PixelFormat.Bgra8888, AlphaFormat.Premul);
            using (var fb = wb.Lock())
            {
                Marshal.Copy(pixels, 0, fb.Address, pixels.Length);
            }
            return wb;
        }

        private string _composerEdge;
        private Point _composerStart;
        private double _composerStartHeight;
        private double _composerStartInset;
        private double _composerInset = 17;
        private double _desiredColumn = 768;
        private bool _composerWidthCustom;
        private bool _stickChatToComposer;

        private ScrollViewer ChatScroll()
        {
            return ConversationItemsList?.GetVisualDescendants().OfType<ScrollViewer>().FirstOrDefault();
        }

        private bool ChatIsAtBottom()
        {
            ScrollViewer scroll = ChatScroll();
            if (scroll == null)
                return true;
            return scroll.Extent.Height <= scroll.Viewport.Height || scroll.Offset.Y >= scroll.Extent.Height - scroll.Viewport.Height - 8;
        }

        private void ComposerEdge_Down(object sender, PointerPressedEventArgs e)
        {
            var edge = sender as Control;
            _composerEdge = edge?.Tag as string;
            _composerStart = e.GetPosition(MessageWindow);
            _composerStartHeight = MessageBoxPanel.Height;
            _composerStartInset = _composerInset;
            _stickChatToComposer = _composerEdge == "top" && ChatIsAtBottom();
            if (edge != null) e.Pointer.Capture(edge);
            e.Handled = true;
        }

        private void ComposerEdge_Move(object sender, PointerEventArgs e)
        {
            if (_composerEdge == null || !e.GetCurrentPoint(MessageWindow).Properties.IsLeftButtonPressed)
                return;
            Point now = e.GetPosition(MessageWindow);
            if (_composerEdge == "top")
            {
                double h = _composerStartHeight + (_composerStart.Y - now.Y);
                double maxH = ComposerMaxHeight();
                if (h < 73) h = 73;
                if (h > maxH) h = maxH;
                MessageBoxPanel.Height = h;
                if (_stickChatToComposer)
                {
                    MessageBoxPanel.UpdateLayout();
                    ChatScroll()?.ScrollToEnd();
                }
            }
            else
            {
                double pane = MessageWindow.Bounds.Width;
                double delta = _composerEdge == "right"
                    ? _composerStart.X - now.X
                    : now.X - _composerStart.X;
                double inset = _composerStartInset + delta;
                double maxInset = pane <= 34 ? 17 : (pane - Math.Min(486, pane - 34)) / 2.0;
                if (inset < 17) inset = 17;
                if (inset > maxInset) inset = maxInset;
                _composerInset = inset;
                _desiredColumn = Math.Max(486, pane - (inset * 2));
                _composerWidthCustom = true;
                ApplyComposerInset();
                ApplyChatColumn();
                UpdateTranscriptBubbleMaxWidth();
            }
        }

        private double ComposerMaxHeight()
        {
            double available = MessageWindow.Bounds.Height - 37;
            double maxH = available / 2.0;
            if (maxH < 73) maxH = 73;
            return maxH;
        }

        private void LayoutChatColumn()
        {
            double pane = ChatArea?.Bounds.Width ?? 0;
            if (pane < 80)
                pane = MessageWindow?.Bounds.Width ?? 0;
            if (pane < 80)
                return;
            // The column stays at 768, or at whatever the side drag set.
            // Narrowing the window only eats the side margins. The column
            // shrinks just for this layout when the pane cannot hold it.
            double desired = _composerWidthCustom ? _desiredColumn : 768;
            double maxColumn = Math.Max(0, pane - 34);
            double column = Math.Min(desired, maxColumn);
            if (column < 0)
                column = 0;
            _composerInset = (pane - column) / 2.0;
            if (_composerInset < 17)
                _composerInset = 17;
            ApplyComposerInset();
            ApplyChatColumn();
            UpdateTranscriptBubbleMaxWidth();
        }

        private void ApplyChatColumn()
        {
            double extra = Math.Max(0, _composerInset - 17);
            ChatContentMargin = new Thickness(extra, 0, extra, 0);
        }

        private void ApplyComposerInset()
        {
            double inset = _composerInset;
            double extra = inset - 17;
            ComposerVia.Margin = new Thickness(inset, 1, 0, 0);
            ComposerLine.Margin = new Thickness(inset, 20, inset, 0);
            MessageTextBox.Margin = new Thickness(inset - 5, 38, inset + 123, 8);
            ComposerActions.Margin = new Thickness(0, 0, 57 + extra, 11);
            SendIcon.Margin = new Thickness(0, 0, inset, 11);
            SendHoverIcon.Margin = new Thickness(0, 0, inset, 11);
            SendMsgButton.Margin = new Thickness(0, 0, inset, 11);
            ComposerGripLeft.Margin = new Thickness(inset, 0, 0, 0);
            ComposerGripRight.Margin = new Thickness(0, 0, inset, 0);
        }

        private void Chat_Scroll(object sender, ScrollChangedEventArgs e)
        {
            SyncStickyDate();
        }

        private void SyncStickyDate()
        {
            if (_messageGrouper == null || TranscriptDate == null)
                return;
            string shown = null;
            foreach (var item in ConversationItemsList.Items)
            {
                if (!(item is ChatDateItem date))
                    continue;
                var container = ConversationItemsList.ContainerFromItem(item) as Control;
                if (container == null)
                {
                    if (shown == null)
                        shown = date.Text;
                    continue;
                }
                double y = container.TranslatePoint(new Point(0, 0), ConversationItemsList)?.Y ?? 0;
                if (y <= 8)
                    shown = date.Text;
            }
            if (shown != null)
                TranscriptDate.Text = shown;
        }

        private void ComposerEdge_Up(object sender, PointerReleasedEventArgs e)
        {
            if (sender is Control c && e.Pointer.Captured == c) e.Pointer.Capture(null);
            _composerEdge = null;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            HomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        #endregion

        #region Sidebar tab selection and population

        protected override void OnTabSelecting(SliceControl tab_to_select)
        {
            SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            _currentTab = tab_to_select;
            AddContactGrid.IsVisible = false;
            SidebarTabs.IsVisible = true;
            ApplyTabColors();
            PaintSearchHint();
        }

        static readonly IBrush TabBlue = Freeze(Color.FromRgb(0x00, 0x95, 0xCC));
        static readonly IBrush TabDark = Freeze(Color.FromRgb(0x2B, 0x2B, 0x30));

        static IBrush Freeze(Color color)
        {
            var brush = new SolidColorBrush(color);
            return brush;
        }

        void ApplyTabColors()
        {
            bool contacts = _currentTab != null && _currentTab.Name == "btnContacts";
            TabContactsLabel.Foreground = contacts ? TabBlue : TabDark;
            TabRecentsLabel.Foreground = contacts ? TabDark : TabBlue;
            TabContactsMark.IsVisible = contacts;
            TabRecentsMark.IsVisible = !contacts;
        }

        // Skype sidebar tabs have no hover fill. An unselected label turns #0095CC; the selected one stays.
        void SidebarTab_Hover(object sender, PointerEventArgs e)
        {
            var tab = sender as SliceControl;
            if (tab == null || tab == _currentTab)
                return;
            if (tab.Name == "btnContacts")
                TabContactsLabel.Foreground = TabBlue;
            else if (tab.Name == "btnRecents")
                TabRecentsLabel.Foreground = TabBlue;
        }

        void SidebarTab_Leave(object sender, PointerEventArgs e)
        {
            ApplyTabColors();
        }

        private void SelectSidebarTopRowButton(SliceControl to_select)
        {
            if (to_select == AddContactButton)
                SetPlaceholder(SearchBox, Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"], true);
            else
                SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            PaintSearchHint();
            foreach (var tab in new[] { HomeButton, AddContactButton })
            {
                if (tab == to_select)
                    tab.SetState(ButtonVisualState.Pressed);
                else
                    tab.SetState(ButtonVisualState.Default);
            }
        }

        #endregion

        #region Resizing stuff

        protected override void OnSidebarResized()
        {
            if (!btnServers.IsVisible)
                btnServers.Width = 0;
        }

        #endregion

        #region Event handlers

        private void HomeButton_Click(object sender, PointerReleasedEventArgs e)
        {
            _ = SelectTab(_currentTab);
            SetWindow(WindowType.Home);
            SelectSidebarTopRowButton(HomeButton);
        }

        protected override void SetWindow(WindowType type, bool force = false)
        {
            base.SetWindow(type, force);
            // The round header button is only the icon. The label belongs to the older themes.
            CallButton.Text = "";
            ToolTip.SetTip(CallButton, (vmodel.SelectedConversation is Group) ? "Call group" : "Call");
        }

        private async void AddContact_Close(object sender, PointerReleasedEventArgs e)
        {
            await SelectTab(_currentTab);
            if (current_window == WindowType.Home)
                SelectSidebarTopRowButton(HomeButton);
            else
            {
                SelectSidebarTopRowButton(null);
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

        protected override void AddContact_Click(object sender, PointerReleasedEventArgs e)
        {
            if (!(Universal.Plugin is IListManagement))
            {
                AddContactButton.SetState(ButtonVisualState.Default);
                SoundManager.Play("CALL_ERROR1");
                Universal.ShowMessage(VONAGE_CONTACT, VONAGE_CAPTION);
                return;
            }
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
                tab.SetState(ButtonVisualState.Default);
            SidebarTabs.IsVisible = false;
            ConversationList.IsVisible = false;
            ServersList.IsVisible = false;
            AddContactGrid.IsVisible = true;
            SelectSidebarTopRowButton(AddContactButton);
            SearchBox.Focus();
        }

        protected override void SearchBox_Focused(object sender, GotFocusEventArgs e)
        {
            base.SearchBox_Focused(sender, e);
            SearchLine.Fill = new SolidColorBrush(Color.FromRgb(0x00, 0xAF, 0xF0));
        }

        protected override void SearchBox_Unfocused(object sender, RoutedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);
            SetPlaceholder(SearchBox,
                AddContactGrid.IsVisible ?
                Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"] :
                Universal.Lang["sCONTACT_QF_HINT"],
                true
            );
            PaintSearchHint();
            SearchLine.Fill = new SolidColorBrush(Color.FromRgb(0xD3, 0xE6, 0xEA));
        }

        // The feed, the header, and the lists are not text fields, so a click there
        // does not move WPF focus by itself. Skype leaves the input when you click them.
        private void LeaveTextInputOnOutsideClick(object sender, PointerPressedEventArgs e)
        {
            var source = e.Source as Visual;
            if (source == null)
                return;
            if (MessageTextBox != null && MessageTextBox.IsFocused)
            {
                if (IsInInput(source, MessageTextBox) || (MessageBoxPanel != null && IsInInput(source, MessageBoxPanel)))
                    return;
                MoveFocusOffText();
                return;
            }
            if (SearchBox != null && SearchBox.IsFocused)
            {
                if (IsInInput(source, SearchBox))
                    return;
                MoveFocusOffText();
            }
        }

        private static bool IsInInput(Visual source, Visual root)
        {
            while (source != null)
            {
                if (source == root)
                    return true;
                source = source.GetVisualParent();
            }
            return false;
        }

        private void MoveFocusOffText()
        {
            Focus();
            FocusManager?.ClearFocus();
        }

        protected override void MessageTextBox_Focused(object sender, GotFocusEventArgs e)
        {
            base.MessageTextBox_Focused(sender, e);
            ComposerLine.Background = new SolidColorBrush(Color.FromRgb(0x00, 0xAF, 0xF0));
        }

        protected override void MessageTextBox_Unfocused(object sender, RoutedEventArgs e)
        {
            base.MessageTextBox_Unfocused(sender, e);
            ComposerLine.Background = new SolidColorBrush(Color.FromRgb(0x66, 0xCF, 0xF6));
            TintComposerPlaceholder();
        }

        protected override void CallPhones_Click(object sender, PointerReleasedEventArgs e)
        {
            SoundManager.Play("CALL_ERROR1");
            Universal.ShowMessage(VONAGE, VONAGE_CAPTION);
        }

        protected override void UpdateMessageSendButtonState() { }

        #endregion

        #region Conversation

        private MessageGrouper _messageGrouper;

        protected override void OnConversationSelecting()
        {
            Topbar.Text = vmodel.SelectedConversation?.DisplayName;
        }

        protected override void OnConversationItemsBound()
        {
            _messageGrouper?.Clear();
            var conversation = vmodel.SelectedConversation;
            if (conversation == null || vmodel.ActiveConversation == null)
                return;

            _messageGrouper = new MessageGrouper(vmodel.ActiveConversation);
            _messageGrouper.Build(conversation);
            ConversationItemsList.ItemsSource = _messageGrouper.Grouped;
            var chatScroll = ChatScroll();
            if (chatScroll != null)
            {
                chatScroll.RemoveHandler(ScrollViewer.ScrollChangedEvent, Chat_Scroll);
                chatScroll.AddHandler(ScrollViewer.ScrollChangedEvent, Chat_Scroll);
            }
            Dispatcher.UIThread.Post(() =>
            {
                UpdateTranscriptBubbleMaxWidth();
                SyncStickyDate();
                if (ConversationList.Items.Count > 0)
                    ConversationList.ScrollIntoView(ConversationList.Items[0]);
            }, DispatcherPriority.Loaded);
        }

        #endregion

        private void Chat_RightClick(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Right)
                return;
            e.Handled = true;
            bool hasSelection = HasTranscriptSelection();
            Message message = null;
            if (message == null)
            {
                Visual node = e.Source as Visual;
                while (node != null && message == null)
                {
                    if (node is Control fe && fe.DataContext is MessageGroup group && group.Messages.Count > 0)
                        message = group.Messages[group.Messages.Count - 1];
                    node = node.GetVisualParent();
                }
            }

            int command = NativeMenu.Show(this, new[]
            {
                NativeMenu.Item("Search with Bing", 1, hasSelection),
                NativeMenu.Sep(),
                NativeMenu.Item("Jump Back", 2),
                NativeMenu.Sep(),
                NativeMenu.Item("Copy Selection", 3, hasSelection),
                NativeMenu.Item("Copy Message", 4, message != null),
                NativeMenu.Item("Select All", 5),
                NativeMenu.Sep(),
                NativeMenu.Item("Move Bookmark Here", 6, message != null),
            });

            switch (command)
            {
                case 1:
                    Universal.NotImplemented("Search with Bing");
                    break;
                case 2:
                    Universal.NotImplemented("Jump Back");
                    break;
                case 3:
                    CopyTranscriptSelection();
                    break;
                case 4:
                    vmodel.CopyMessage(message);
                    break;
                case 5:
                    SelectWholeTranscript();
                    break;
                case 6:
                    vmodel.MoveBookmark(message);
                    break;
            }
        }

        private void ConversationList_RightClick(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Right)
                return;
            e.Handled = true;
            ShowConversationMenu(includeCalls: true);
        }

        private void Header_RightClick(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Right)
                return;
            e.Handled = true;
            ShowConversationMenu(includeCalls: true);
        }

        private void ShowConversationMenu(bool includeCalls)
        {
            var entries = new List<NativeMenu.Entry>();
            entries.Add(NativeMenu.Item("Call Group", 1));
            if (includeCalls)
                entries.Add(NativeMenu.Item("Video Call", 2));
            entries.Add(NativeMenu.Item("Send IM", 3));
            entries.Add(NativeMenu.Item("Send Video Message", 4));
            entries.Add(NativeMenu.Item("Send SMS Message", 5));
            entries.Add(NativeMenu.Item("Send Contacts...", 6));
            entries.Add(NativeMenu.Item("Send files...", 7));
            if (includeCalls)
                entries.Add(NativeMenu.Item("Share Screens...", 8));
            entries.Add(NativeMenu.Sep());
            entries.Add(NativeMenu.Item("View Profile", 9, false));
            entries.Add(NativeMenu.Item("Change topic...", 10, false));
            entries.Add(NativeMenu.Item("Leave Conversation", 11, false));
            entries.Add(NativeMenu.Sep());
            entries.Add(NativeMenu.Item("Add to Favorites", 12, false));
            entries.Add(NativeMenu.Item("Add to List", 13, false));
            entries.Add(NativeMenu.Item("Mark as Unread", 14, false));
            entries.Add(NativeMenu.Item("View Old Messages", 15, false));
            entries.Add(NativeMenu.Item("Save Group in Your Contacts", 16, false));
            entries.Add(NativeMenu.Sep());
            entries.Add(NativeMenu.Item("Hide conversation", 17));

            int command = NativeMenu.Show(this, entries.ToArray());
            if (command == 0)
                return;
            string[] names =
            {
                "", "Call Group", "Video Call", "Send IM", "Send Video Message", "Send SMS Message",
                "Send Contacts", "Send files", "Share Screens", "View Profile", "Change topic",
                "Leave Conversation", "Add to Favorites", "Add to List", "Mark as Unread",
                "View Old Messages", "Save Group in Your Contacts", "Hide conversation",
            };
            if (command > 0 && command < names.Length)
                Universal.NotImplemented(names[command]);
        }

        #region Initialization and closing

        protected override void ShowOwnName(string name)
        {
            StatusBox.Text = name;
            var avatar = Universal.CurrentUser?.Avatar;
            if (avatar != null && avatar.Length > 0)
                SelfAvatar.Source = ImageHelper.GenerateFromArray(avatar);
        }

        private void FilterAll_Click(object sender, PointerReleasedEventArgs e)
        {
            var win = new Window
            {
                Title = "Skype",
                Width = 360,
                Height = 140,
                WindowStartupLocation = WindowStartupLocation.CenterOwner,
                CanResize = false,
                Content = new TextBlock
                {
                    Text = "Work in progress.",
                    FontFamily = new FontFamily("Segoe UI"),
                    FontSize = 16,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    VerticalAlignment = VerticalAlignment.Center
                }
            };
            win.ShowDialog(this);
        }

        protected override async Task GenerateHome()
        {
            if (vmodel.UseSkypeHome)
            {
                    Browser.IsVisible = false;
            browserHost.IsVisible = false;
                    HomeUnavailableFrame.IsVisible = true;
                    HomeUnavailableFrame.Content = new Border { Background = Brushes.White };
                
            }
            else
            {
                Browser.IsVisible = false;
            browserHost.IsVisible = false;
                HomeUnavailableFrame.IsVisible = true;
                HomeUnavailableFrame.Content = new Border { Background = Brushes.White };
            }
        }

        protected override void OnUserCountUpdated(string text)
        {
            GlobalUserCount.Text = text;
        }

        protected override void OnServersUnsupported()
        {
            btnServers.IsVisible = false;
            ServersColumn.Width = new GridLength(0);
        }

        protected override void InitializeMenuBar()
        {
            if (MenuBarArea != null)
                MenuBarArea.IsVisible = true;
        }

        protected override void ShowLogin(bool switchuser)
        {
            new Login(switchuser).Show();
        }

        private static void ApplyHintTiming(Visual node)
        {
            if (node is Control control && ToolTip.GetTip(control) != null)
                ToolTip.SetShowDelay(control, 350);
            foreach (var child in node.GetVisualChildren())
            {
                if (child is Visual visual)
                    ApplyHintTiming(visual);
            }
        }

        private void UpdateTranscriptBubbleMaxWidth()
        {
            double w = ConversationItemsList?.Bounds.Width ?? 0;
            if (w < 120)
                w = MessageWindow?.Bounds.Width ?? 0;
            if (w < 120)
                w = 739;
            double pane = MessageWindow?.Bounds.Width ?? w;
            double content = pane > 80
                ? pane - (2 * Math.Max(0, _composerInset - 17))
                : w;
            if (content < 120)
                content = w;
            var bubbleMax = Math.Max(content - 130, 200);
            TranscriptBubbleMaxWidth = bubbleMax;
            TranscriptBubbleTextMaxWidth = Math.Max(bubbleMax - 34, 80);
        }

        private void HeaderAvatar_Click(object sender, PointerReleasedEventArgs e)
        {
            if (vmodel.SelectedConversation is Group group)
                new GroupProfileWindow(group).Show(this);
            else
                Universal.ShowMessage("Profile for this conversation is still being built.", "Profile");
        }

        // The grid is Skymu emoticon sprites (Formatter.MakeEmoji), and that is what gets inserted.
        // Skype 7.18's new picker instead previews a Unicode emoji. Do not put that glyph here.
        // Patrick & Omega and all uhhhh is the emoji thing discord related we should prob discuss in gc idk how its done usually
        // oh shit I remember omega you mapped the emoticons to actual emojis, is it time we do what FakeNitro does??
        private Border _emojiHot;
        private static readonly IBrush EmojiHotBrush = CreateEmojiHotBrush();

        private static Brush CreateEmojiHotBrush()
        {
            var brush = new SolidColorBrush(Color.FromRgb(0x00, 0xAF, 0xF0));
            return brush;
        }

        private void WireEmojiPreview()
        {
            foreach (var child in EmojiWrapPanel.Children)
            {
                if (child is Border border)
                {
                    border.Width = 27;
                    border.Height = 27;
                    border.Margin = new Thickness(0);
                    border.BorderThickness = new Thickness(2);
                    border.CornerRadius = new CornerRadius(2);
                    border.BorderBrush = Brushes.Transparent;
                    border.Background = Brushes.Transparent;
                    ToolTip.SetTip(border, null);
                    border.PointerEntered += EmojiCell_Enter;
                }
            }
            if (EmojiWrapPanel.Children.Count > 0 && EmojiWrapPanel.Children[0] is Border first)
            {
                MarkEmojiHot(first);
                ShowEmojiPreview(first);
            }
        }

        private void EmojiCell_Enter(object sender, PointerEventArgs e)
        {
            if (sender is Border border)
            {
                border.Background = Brushes.Transparent;
                MarkEmojiHot(border);
                ShowEmojiPreview(border);
            }
        }

        private void MarkEmojiHot(Border border)
        {
            if (_emojiHot != null && _emojiHot != border)
                _emojiHot.BorderBrush = Brushes.Transparent;
            _emojiHot = border;
            if (border != null)
                border.BorderBrush = EmojiHotBrush;
        }

        private void ShowEmojiPreview(Border border)
        {
            if (border == null)
                return;
            string code = (border.Child as SliceControl)?.Tag as string ?? "";
            EmojiPreviewName.Text = code.Length == 0 ? "" : char.ToUpper(code[0]) + code.Substring(1);
            EmojiPreviewCode.Text = code.Length == 0 ? "" : "(" + code + ")";
            if (code.Length == 0)
            {
                EmojiPreviewHost.Content = null;
                return;
            }
            // 22x20 frame, drawn at 2x. The grab's preview face is 40x40.
            var frame = ImageHelper.LoadFromPackUri("avares://Skymu/Emoji/" + code + "/views/default_20/index.png");
            var preview = new Avalonia.Controls.Image
            {
                Source = frame,
                Width = 44,
                Height = 40,
                Stretch = Stretch.Uniform,
                IsHitTestVisible = false,
            };
            EmojiPreviewHost.Content = preview;
        }

        private void EmojiTabAll_Click(object sender, PointerReleasedEventArgs e)
        {
            EmojiGridScroll.IsVisible = true;
            EmojiRecentEmpty.IsVisible = false;
        }

        private void EmojiTabRecent_Click(object sender, PointerReleasedEventArgs e)
        {
            EmojiGridScroll.IsVisible = false;
            EmojiRecentEmpty.IsVisible = true;
        }

        public Main()
        {
            InitializeComponent();
            InitializeMainWindow();
            WireEmojiPreview();
            HookTranscriptSelection();
            ConversationList.AddHandler(PointerReleasedEvent, ConversationList_RightClick, RoutingStrategies.Bubble);
            AddHandler(PointerPressedEvent, LeaveTextInputOnOutsideClick, RoutingStrategies.Tunnel, handledEventsToo: true);
            ToolTip.SetShowDelay(this, 350);
            // 7.18 sidebar is 280px at the reference client size. A saved splitter
            // width from an earlier build (often 300) shifts every row.
            
            Opened += (s, e) =>
            {
                SidebarColumn.Width = new GridLength(280);
                ApplyHintTiming(this);
                BuildSendHover();
                LayoutChatColumn();
            };
            SizeChanged += (s, e) => LayoutChatColumn();
            ConversationItemsList.SizeChanged += (s, e) => LayoutChatColumn();
            MessageWindow.SizeChanged += (s, e) => LayoutChatColumn();
            LayoutChatColumn();
            PaintSearchHint();
            vmodel.Ready += (s, e) =>
            {
                var open = vmodel.ConversationList?.FirstOrDefault(c => c.Identifier == "ref-group");
                if (open != null)
                    vmodel.SelectConversation(open);
            };

            if (Universal.CallPlugin != null)
            {
                Universal.CallPlugin.IncomingCallTube += (sender, e) =>
                {
                    Dispatcher.UIThread.Invoke(() =>
                    {
                        IncomingCall ic = new IncomingCall(e);
                        EventHandler handler = null;
                        handler = (s, args) =>
                        {
                            ic.Answered -= handler;
                            InitiateCall(e.Caller, true);
                        };
                        ic.Answered += handler;
                        ic.Show();
                    });
                };
            }
        }

        #endregion
    }

}