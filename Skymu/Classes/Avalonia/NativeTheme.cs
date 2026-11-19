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

// SO FAR COVERED : Button, CheckBox, RadioButton, TextBox, ProgressBar, ScrollBar, ComboBox (+ComboBoxItem), TabControl (top placement only), Slider, Menu, MenuItem, ContextMenu, Separator
// Everything else falls through to SimpleTheme, not PIK la ...
// TODO(omega, patrick, hubaxe): Finish all the controls .

// To add a control, you must add a NativePartKind, map it in Describe()/State(), and then finally add a ControlTheme in BuildXaml() .

using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Security;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Data.Converters;
using Avalonia.Markup.Xaml;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using Avalonia.Styling;
using Avalonia.Themes.Simple;
using Avalonia.VisualTree;

namespace Skymu.AvaloniaTools
{
    public enum NativePartKind
    {
        PushButton,
        CheckBox,
        RadioButton,
        EditBorder,
        ProgressTrack,
        ProgressFill,
        ScrollArrowUp,
        ScrollArrowDown,
        ScrollArrowLeft,
        ScrollArrowRight,
        ScrollThumbV,
        ScrollThumbH,
        ScrollTrackLowerV,
        ScrollTrackUpperV,
        ScrollTrackLowerH,
        ScrollTrackUpperH,
        ComboBorder,
        ComboReadOnly,
        ComboDropButton,
        TabItem,
        TabPane,
        SliderTrackH,
        SliderTrackV,
        SliderThumbH,
        SliderThumbV,
        MenuBarBackground,
        MenuBarItem,
        MenuPopupBackground,
        MenuPopupBorders,
        MenuPopupGutter,
        MenuPopupItem,
        MenuPopupSeparator,
        MenuSubmenuArrow,
        MenuCheck,
    }

    public static class NativeTheme
    {
        /// <summary>Raised after Invalidate() , ThemePart controls will repaint themselves .</summary>
        public static event Action? Changed;

        public static bool IsSupported =>
            OperatingSystem.IsWindows() && Win32.IsThemeActive();

        /// <summary>Call it when the Windows visual style or DPI settings change .</summary>
        public static void Invalidate()
        {
            NativeRenderer.Clear();
            Changed?.Invoke();
        }

        /// <summary>Returns the finally theme, and then the SimpleTheme is included underneath for uncovered controls .</summary>
        public static IStyle Generate()
        {
            var styles = new Styles();
            styles.Add(new SimpleTheme());
            if (!IsSupported)
                return styles;

            styles.Add(AvaloniaRuntimeXamlLoader.Parse<Styles>(
                BuildXaml(), typeof(NativeTheme).Assembly));
            return styles;
        }

        // ---------------------------------------------------------------- AXAML

        static string Hex(int colorIndex)
        {
            uint c = Win32.GetSysColor(colorIndex); // 0x00BBGGRR
            return $"#{c & 0xFF:X2}{(c >> 8) & 0xFF:X2}{(c >> 16) & 0xFF:X2}";
        }

        static string N(int v) => v.ToString(CultureInfo.InvariantCulture);

        static string Part(string name, string kind, string attrs = "") =>
            "<RepeatButton Name=\"" + name + "\" Focusable=\"False\" MinWidth=\"0\" MinHeight=\"0\" Padding=\"0\" " + attrs + ">" +
            "<RepeatButton.Template><ControlTemplate><n:ThemePart Kind=\"" + kind + "\"/></ControlTemplate></RepeatButton.Template>" +
            "</RepeatButton>";

        static string BuildXaml()
        {
            string asm = typeof(NativeTheme).Assembly.GetName().Name!;
            string btnText = Hex(18), windowText = Hex(8), window = Hex(5);
            string gray = Hex(17), highlight = Hex(13), highlightText = Hex(14);

            int vW = Win32.Metric(2);   // SM_CXVSCROLL  (vertical bar width)
            int vArrowH = Win32.Metric(20); // SM_CYVSCROLL (arrow height)
            int hH = Win32.Metric(3);   // SM_CYHSCROLL  (horizontal bar height)
            int hArrowW = Win32.Metric(21); // SM_CXHSCROLL (arrow width)
            int vThumbMin = Win32.Metric(9);  // SM_CYVTHUMB
            int hThumbMin = Win32.Metric(10); // SM_CXHTHUMB
            string frame = Hex(6);          // COLOR_WINDOWFRAME
            int comboBtnW = vW;             // dropdown button is as wide as a scrollbar
            var sliderThumbH = NativeRenderer.PartSize("TRACKBAR", 3, 1, 96); // TKP_THUMB
            var sliderThumbV = NativeRenderer.PartSize("TRACKBAR", 6, 1, 96); // TKP_THUMBVERT
            string menuText = Hex(7);       // COLOR_MENUTEXT
            var mf = Win32.MenuFont();
            string menuFont = SecurityElement.Escape(mf.Family);
            string menuFontSize = N(mf.Size);
            string menuFontWeight = mf.Bold ? "Bold" : "Normal";
            int menuBarH = Win32.Metric(15); // SM_CYMENU
            int gutterW = 26;               // icon/check column width in popup menus

            return @"<Styles xmlns=""https://github.com/avaloniaui""
        xmlns:x=""http://schemas.microsoft.com/winfx/2006/xaml""
        xmlns:n=""clr-namespace:Skymu.AvaloniaTools;assembly=" + (asm) + @""">
  <Styles.Resources>
    <ResourceDictionary>

      <!-- ===================== Button ===================== -->
      <ControlTheme x:Key=""{x:Type Button}"" TargetType=""Button"">
        <Setter Property=""Foreground"" Value=""" + (btnText) + @"""/>
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""8,2""/>
        <Setter Property=""MinWidth"" Value=""77""/>
        <Setter Property=""MinHeight"" Value=""25""/>
        <Setter Property=""HorizontalContentAlignment"" Value=""Center""/>
        <Setter Property=""VerticalContentAlignment"" Value=""Center""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <n:ThemePart Kind=""PushButton""/>
              <ContentPresenter Name=""PART_ContentPresenter""
                                Content=""{TemplateBinding Content}""
                                ContentTemplate=""{TemplateBinding ContentTemplate}""
                                Foreground=""{TemplateBinding Foreground}""
                                Padding=""{TemplateBinding Padding}""
                                HorizontalContentAlignment=""{TemplateBinding HorizontalContentAlignment}""
                                VerticalContentAlignment=""{TemplateBinding VerticalContentAlignment}""
                                RecognizesAccessKey=""True""/>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== CheckBox ===================== -->
      <ControlTheme x:Key=""{x:Type CheckBox}"" TargetType=""CheckBox"">
        <Setter Property=""Foreground"" Value=""" + (btnText) + @"""/>
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""4,0,0,0""/>
        <Setter Property=""HorizontalContentAlignment"" Value=""Left""/>
        <Setter Property=""VerticalContentAlignment"" Value=""Center""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Border Background=""{TemplateBinding Background}"">
              <Grid ColumnDefinitions=""Auto,*"">
                <n:ThemePart Kind=""CheckBox"" HorizontalAlignment=""Left"" VerticalAlignment=""Center""/>
                <ContentPresenter Name=""PART_ContentPresenter"" Grid.Column=""1""
                                  Content=""{TemplateBinding Content}""
                                  ContentTemplate=""{TemplateBinding ContentTemplate}""
                                  Foreground=""{TemplateBinding Foreground}""
                                  Padding=""{TemplateBinding Padding}""
                                  HorizontalContentAlignment=""{TemplateBinding HorizontalContentAlignment}""
                                  VerticalContentAlignment=""{TemplateBinding VerticalContentAlignment}""
                                  VerticalAlignment=""Center""
                                  RecognizesAccessKey=""True""/>
              </Grid>
            </Border>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== RadioButton ===================== -->
      <ControlTheme x:Key=""{x:Type RadioButton}"" TargetType=""RadioButton"">
        <Setter Property=""Foreground"" Value=""" + (btnText) + @"""/>
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""4,0,0,0""/>
        <Setter Property=""HorizontalContentAlignment"" Value=""Left""/>
        <Setter Property=""VerticalContentAlignment"" Value=""Center""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Border Background=""{TemplateBinding Background}"">
              <Grid ColumnDefinitions=""Auto,*"">
                <n:ThemePart Kind=""RadioButton"" HorizontalAlignment=""Left"" VerticalAlignment=""Center""/>
                <ContentPresenter Name=""PART_ContentPresenter"" Grid.Column=""1""
                                  Content=""{TemplateBinding Content}""
                                  ContentTemplate=""{TemplateBinding ContentTemplate}""
                                  Foreground=""{TemplateBinding Foreground}""
                                  Padding=""{TemplateBinding Padding}""
                                  HorizontalContentAlignment=""{TemplateBinding HorizontalContentAlignment}""
                                  VerticalContentAlignment=""{TemplateBinding VerticalContentAlignment}""
                                  VerticalAlignment=""Center""
                                  RecognizesAccessKey=""True""/>
              </Grid>
            </Border>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== TextBox ===================== -->
      <ControlTheme x:Key=""{x:Type TextBox}"" TargetType=""TextBox"">
        <Setter Property=""Foreground"" Value=""" + (windowText) + @"""/>
        <Setter Property=""Background"" Value=""" + (window) + @"""/>
        <Setter Property=""CaretBrush"" Value=""" + (windowText) + @"""/>
        <Setter Property=""SelectionBrush"" Value=""" + (highlight) + @"""/>
        <Setter Property=""SelectionForegroundBrush"" Value=""" + (highlightText) + @"""/>
        <Setter Property=""Padding"" Value=""1,1""/>
        <Setter Property=""MinHeight"" Value=""21""/>
        <Setter Property=""Cursor"" Value=""IBeam""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <Border Background=""{TemplateBinding Background}""/>
              <n:ThemePart Kind=""EditBorder""/>
              <Grid Margin=""2"">
                <ScrollViewer Name=""PART_ScrollViewer""
                              HorizontalScrollBarVisibility=""{TemplateBinding (ScrollViewer.HorizontalScrollBarVisibility)}""
                              VerticalScrollBarVisibility=""{TemplateBinding (ScrollViewer.VerticalScrollBarVisibility)}"">
                  <Panel Margin=""{TemplateBinding Padding}"">
                    <TextBlock Name=""PART_Watermark"" Opacity=""0.5""
                               Text=""{TemplateBinding Watermark}""
                               TextAlignment=""{TemplateBinding TextAlignment}""
                               TextWrapping=""{TemplateBinding TextWrapping}""
                               IsVisible=""{TemplateBinding Text, Converter={x:Static StringConverters.IsNullOrEmpty}}""
                               HorizontalAlignment=""Left"" VerticalAlignment=""Center""/>
                    <TextPresenter Name=""PART_TextPresenter""
                                   Text=""{TemplateBinding Text, Mode=TwoWay}""
                                   CaretIndex=""{TemplateBinding CaretIndex}""
                                   SelectionStart=""{TemplateBinding SelectionStart}""
                                   SelectionEnd=""{TemplateBinding SelectionEnd}""
                                   TextAlignment=""{TemplateBinding TextAlignment}""
                                   TextWrapping=""{TemplateBinding TextWrapping}""
                                   PasswordChar=""{TemplateBinding PasswordChar}""
                                   RevealPassword=""{TemplateBinding RevealPassword}""
                                   SelectionBrush=""{TemplateBinding SelectionBrush}""
                                   SelectionForegroundBrush=""{TemplateBinding SelectionForegroundBrush}""
                                   CaretBrush=""{TemplateBinding CaretBrush}""
                                   VerticalAlignment=""Center""/>
                  </Panel>
                </ScrollViewer>
              </Grid>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== ProgressBar ===================== -->
      <ControlTheme x:Key=""{x:Type ProgressBar}"" TargetType=""ProgressBar"">
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <n:ThemePart Kind=""ProgressTrack""/>
              <Border Name=""PART_Indicator"">
                <n:ThemePart Kind=""ProgressFill""/>
              </Border>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:horizontal"">
          <Setter Property=""MinHeight"" Value=""15""/>
          <Setter Property=""Height"" Value=""15""/>
        </Style>
        <Style Selector=""^:vertical"">
          <Setter Property=""MinWidth"" Value=""15""/>
          <Setter Property=""Width"" Value=""15""/>
        </Style>
        <Style Selector=""^:horizontal /template/ Border#PART_Indicator"">
          <Setter Property=""HorizontalAlignment"" Value=""Left""/>
          <Setter Property=""VerticalAlignment"" Value=""Stretch""/>
        </Style>
        <Style Selector=""^:vertical /template/ Border#PART_Indicator"">
          <Setter Property=""HorizontalAlignment"" Value=""Stretch""/>
          <Setter Property=""VerticalAlignment"" Value=""Bottom""/>
        </Style>
      </ControlTheme>

      <!-- ===================== ScrollBar ===================== -->
      <ControlTheme x:Key=""{x:Type ScrollBar}"" TargetType=""ScrollBar"">
        <Setter Property=""Cursor"" Value=""Arrow""/>
        <Style Selector=""^:vertical"">
          <Setter Property=""Width"" Value=""" + (N(vW)) + @"""/>
          <Setter Property=""MinWidth"" Value=""" + (N(vW)) + @"""/>
          <Setter Property=""Template"">
            <ControlTemplate>
              <Grid RowDefinitions=""Auto,*,Auto"">
                " + (Part("PART_LineUpButton", "ScrollArrowUp", $"Grid.Row=\"0\" Height=\"{N(vArrowH)}\"")) + @"
                <Track Name=""PART_Track"" Grid.Row=""1"" IsDirectionReversed=""True""
                       Minimum=""{TemplateBinding Minimum}"" Maximum=""{TemplateBinding Maximum}""
                       Value=""{TemplateBinding Value, Mode=TwoWay}""
                       ViewportSize=""{TemplateBinding ViewportSize}""
                       Orientation=""{TemplateBinding Orientation}"">
                  <Track.DecreaseButton>
                    " + (Part("PART_PageUpButton", "ScrollTrackLowerV")) + @"
                  </Track.DecreaseButton>
                  <Track.IncreaseButton>
                    " + (Part("PART_PageDownButton", "ScrollTrackUpperV")) + @"
                  </Track.IncreaseButton>
                  <Thumb Name=""thumb"" MinHeight=""" + (N(vThumbMin)) + @""">
                    <Thumb.Template>
                      <ControlTemplate><n:ThemePart Kind=""ScrollThumbV""/></ControlTemplate>
                    </Thumb.Template>
                  </Thumb>
                </Track>
                " + (Part("PART_LineDownButton", "ScrollArrowDown", $"Grid.Row=\"2\" Height=\"{N(vArrowH)}\"")) + @"
              </Grid>
            </ControlTemplate>
          </Setter>
        </Style>
        <Style Selector=""^:horizontal"">
          <Setter Property=""Height"" Value=""" + (N(hH)) + @"""/>
          <Setter Property=""MinHeight"" Value=""" + (N(hH)) + @"""/>
          <Setter Property=""Template"">
            <ControlTemplate>
              <Grid ColumnDefinitions=""Auto,*,Auto"">
                " + (Part("PART_LineLeftButton", "ScrollArrowLeft", $"Grid.Column=\"0\" Width=\"{N(hArrowW)}\"")) + @"
                <Track Name=""PART_Track"" Grid.Column=""1""
                       Minimum=""{TemplateBinding Minimum}"" Maximum=""{TemplateBinding Maximum}""
                       Value=""{TemplateBinding Value, Mode=TwoWay}""
                       ViewportSize=""{TemplateBinding ViewportSize}""
                       Orientation=""{TemplateBinding Orientation}"">
                  <Track.DecreaseButton>
                    " + (Part("PART_PageLeftButton", "ScrollTrackLowerH")) + @"
                  </Track.DecreaseButton>
                  <Track.IncreaseButton>
                    " + (Part("PART_PageRightButton", "ScrollTrackUpperH")) + @"
                  </Track.IncreaseButton>
                  <Thumb Name=""thumb"" MinWidth=""" + (N(hThumbMin)) + @""">
                    <Thumb.Template>
                      <ControlTemplate><n:ThemePart Kind=""ScrollThumbH""/></ControlTemplate>
                    </Thumb.Template>
                  </Thumb>
                </Track>
                " + (Part("PART_LineRightButton", "ScrollArrowRight", $"Grid.Column=\"2\" Width=\"{N(hArrowW)}\"")) + @"
              </Grid>
            </ControlTemplate>
          </Setter>
        </Style>
      </ControlTheme>

      <!-- ===================== ComboBox ===================== -->
      <ControlTheme x:Key=""{x:Type ComboBox}"" TargetType=""ComboBox"">
        <Setter Property=""Foreground"" Value=""" + (windowText) + @"""/>
        <Setter Property=""Background"" Value=""" + (window) + @"""/>
        <Setter Property=""Padding"" Value=""4,1,0,1""/>
        <Setter Property=""MinHeight"" Value=""21""/>
        <Setter Property=""MaxDropDownHeight"" Value=""200""/>
        <Setter Property=""HorizontalContentAlignment"" Value=""Left""/>
        <Setter Property=""VerticalContentAlignment"" Value=""Center""/>
        <Setter Property=""ItemsPanel"">
          <ItemsPanelTemplate><VirtualizingStackPanel/></ItemsPanelTemplate>
        </Setter>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <n:ThemePart Kind=""ComboReadOnly""/>
              <Grid ColumnDefinitions=""*,Auto"">
                <ContentControl Grid.Column=""0""
                                Content=""{TemplateBinding SelectionBoxItem}""
                                ContentTemplate=""{TemplateBinding ItemTemplate}""
                                Foreground=""{TemplateBinding Foreground}""
                                Margin=""{TemplateBinding Padding}""
                                HorizontalAlignment=""{TemplateBinding HorizontalContentAlignment}""
                                VerticalAlignment=""{TemplateBinding VerticalContentAlignment}""/>
                <n:ThemePart Grid.Column=""1"" Kind=""ComboDropButton"" Width=""" + (N(comboBtnW)) + @"""/>
              </Grid>
              <Popup Name=""PART_Popup""
                     IsOpen=""{TemplateBinding IsDropDownOpen, Mode=TwoWay}""
                     MinWidth=""{Binding Bounds.Width, RelativeSource={RelativeSource TemplatedParent}}""
                     MaxHeight=""{TemplateBinding MaxDropDownHeight}""
                     IsLightDismissEnabled=""True"">
                <Border Background=""" + (window) + @""" BorderBrush=""" + (frame) + @""" BorderThickness=""1"">
                  <ScrollViewer HorizontalScrollBarVisibility=""Disabled"">
                    <ItemsPresenter Name=""PART_ItemsPresenter"" ItemsPanel=""{TemplateBinding ItemsPanel}""/>
                  </ScrollViewer>
                </Border>
              </Popup>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <ControlTheme x:Key=""{x:Type ComboBoxItem}"" TargetType=""ComboBoxItem"">
        <Setter Property=""Foreground"" Value=""" + (windowText) + @"""/>
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""3,2""/>
        <Setter Property=""HorizontalContentAlignment"" Value=""Stretch""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <ContentPresenter Name=""PART_ContentPresenter""
                              Background=""{TemplateBinding Background}""
                              Foreground=""{TemplateBinding Foreground}""
                              Content=""{TemplateBinding Content}""
                              ContentTemplate=""{TemplateBinding ContentTemplate}""
                              Padding=""{TemplateBinding Padding}""
                              HorizontalContentAlignment=""{TemplateBinding HorizontalContentAlignment}""
                              VerticalContentAlignment=""{TemplateBinding VerticalContentAlignment}""/>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:pointerover /template/ ContentPresenter#PART_ContentPresenter"">
          <Setter Property=""Background"" Value=""" + (highlight) + @"""/>
          <Setter Property=""Foreground"" Value=""" + (highlightText) + @"""/>
        </Style>
        <Style Selector=""^:selected /template/ ContentPresenter#PART_ContentPresenter"">
          <Setter Property=""Background"" Value=""" + (highlight) + @"""/>
          <Setter Property=""Foreground"" Value=""" + (highlightText) + @"""/>
        </Style>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== TabControl (top placement only) ===================== -->
      <ControlTheme x:Key=""{x:Type TabControl}"" TargetType=""TabControl"">
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""6""/>
        <Setter Property=""ItemsPanel"">
          <ItemsPanelTemplate><WrapPanel/></ItemsPanelTemplate>
        </Setter>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Grid RowDefinitions=""Auto,*"">
              <Panel Grid.Row=""1"">
                <n:ThemePart Kind=""TabPane""/>
                <ContentPresenter Name=""PART_SelectedContentHost""
                                  Margin=""{TemplateBinding Padding}""
                                  Content=""{TemplateBinding SelectedContent}""
                                  ContentTemplate=""{TemplateBinding SelectedContentTemplate}""/>
              </Panel>
              <ItemsPresenter Name=""PART_ItemsPresenter"" Grid.Row=""0"" Margin=""0,0,0,-2""
                              ItemsPanel=""{TemplateBinding ItemsPanel}""/>
            </Grid>
          </ControlTemplate>
        </Setter>
      </ControlTheme>

      <ControlTheme x:Key=""{x:Type TabItem}"" TargetType=""TabItem"">
        <Setter Property=""Foreground"" Value=""" + (btnText) + @"""/>
        <Setter Property=""Padding"" Value=""6,0""/>
        <Setter Property=""MinHeight"" Value=""19""/>
        <Setter Property=""Margin"" Value=""0,2,0,0""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <n:ThemePart Kind=""TabItem""/>
              <ContentPresenter Name=""PART_ContentPresenter""
                                Content=""{TemplateBinding Header}""
                                ContentTemplate=""{TemplateBinding HeaderTemplate}""
                                Foreground=""{TemplateBinding Foreground}""
                                Padding=""{TemplateBinding Padding}""
                                HorizontalAlignment=""Center"" VerticalAlignment=""Center""
                                RecognizesAccessKey=""True""/>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:selected"">
          <Setter Property=""Margin"" Value=""0""/>
          <Setter Property=""MinHeight"" Value=""21""/>
        </Style>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== Slider ===================== -->
      <ControlTheme x:Key=""{x:Type Slider}"" TargetType=""Slider"">
        <Setter Property=""Background"" Value=""Transparent""/>
        <Style Selector=""^:horizontal"">
          <Setter Property=""MinHeight"" Value=""" + (N((int)Math.Round(sliderThumbH.Height))) + @"""/>
          <Setter Property=""Template"">
            <ControlTemplate>
              <Panel Background=""Transparent"">
                <n:ThemePart Kind=""SliderTrackH"" Height=""4"" VerticalAlignment=""Center""/>
                <Track Name=""PART_Track"" Orientation=""Horizontal""
                       IsDirectionReversed=""{TemplateBinding IsDirectionReversed}""
                       Minimum=""{TemplateBinding Minimum}"" Maximum=""{TemplateBinding Maximum}""
                       Value=""{TemplateBinding Value, Mode=TwoWay}"">
                  <Track.DecreaseButton>
                    <RepeatButton Name=""PART_DecreaseButton"" Focusable=""False"">
                      <RepeatButton.Template><ControlTemplate><Border Background=""Transparent""/></ControlTemplate></RepeatButton.Template>
                    </RepeatButton>
                  </Track.DecreaseButton>
                  <Track.IncreaseButton>
                    <RepeatButton Name=""PART_IncreaseButton"" Focusable=""False"">
                      <RepeatButton.Template><ControlTemplate><Border Background=""Transparent""/></ControlTemplate></RepeatButton.Template>
                    </RepeatButton>
                  </Track.IncreaseButton>
                  <Thumb Name=""thumb"" Width=""" + (N((int)Math.Round(sliderThumbH.Width))) + @""" Height=""" + (N((int)Math.Round(sliderThumbH.Height))) + @""">
                    <Thumb.Template>
                      <ControlTemplate><n:ThemePart Kind=""SliderThumbH""/></ControlTemplate>
                    </Thumb.Template>
                  </Thumb>
                </Track>
              </Panel>
            </ControlTemplate>
          </Setter>
        </Style>
        <Style Selector=""^:vertical"">
          <Setter Property=""MinWidth"" Value=""" + (N((int)Math.Round(sliderThumbV.Width))) + @"""/>
          <Setter Property=""Template"">
            <ControlTemplate>
              <Panel Background=""Transparent"">
                <n:ThemePart Kind=""SliderTrackV"" Width=""4"" HorizontalAlignment=""Center""/>
                <Track Name=""PART_Track"" Orientation=""Vertical""
                       IsDirectionReversed=""{TemplateBinding IsDirectionReversed}""
                       Minimum=""{TemplateBinding Minimum}"" Maximum=""{TemplateBinding Maximum}""
                       Value=""{TemplateBinding Value, Mode=TwoWay}"">
                  <Track.DecreaseButton>
                    <RepeatButton Name=""PART_DecreaseButton"" Focusable=""False"">
                      <RepeatButton.Template><ControlTemplate><Border Background=""Transparent""/></ControlTemplate></RepeatButton.Template>
                    </RepeatButton>
                  </Track.DecreaseButton>
                  <Track.IncreaseButton>
                    <RepeatButton Name=""PART_IncreaseButton"" Focusable=""False"">
                      <RepeatButton.Template><ControlTemplate><Border Background=""Transparent""/></ControlTemplate></RepeatButton.Template>
                    </RepeatButton>
                  </Track.IncreaseButton>
                  <Thumb Name=""thumb"" Width=""" + (N((int)Math.Round(sliderThumbV.Width))) + @""" Height=""" + (N((int)Math.Round(sliderThumbV.Height))) + @""">
                    <Thumb.Template>
                      <ControlTemplate><n:ThemePart Kind=""SliderThumbV""/></ControlTemplate>
                    </Thumb.Template>
                  </Thumb>
                </Track>
              </Panel>
            </ControlTemplate>
          </Setter>
        </Style>
      </ControlTheme>

      <!-- ===================== Menu (bar) ===================== -->
      <ControlTheme x:Key=""{x:Type Menu}"" TargetType=""Menu"">
        <Setter Property=""Foreground"" Value=""" + (menuText) + @"""/>
        <Setter Property=""FontFamily"" Value=""" + (menuFont) + @"""/>
        <Setter Property=""FontSize"" Value=""" + (menuFontSize) + @"""/>
        <Setter Property=""FontWeight"" Value=""" + (menuFontWeight) + @"""/>
        <Setter Property=""MinHeight"" Value=""" + (N(menuBarH)) + @"""/>
        <Setter Property=""ItemsPanel"">
          <ItemsPanelTemplate><StackPanel Orientation=""Horizontal""/></ItemsPanelTemplate>
        </Setter>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel>
              <n:ThemePart Kind=""MenuBarBackground""/>
              <ItemsPresenter Name=""PART_ItemsPresenter"" ItemsPanel=""{TemplateBinding ItemsPanel}""
                              KeyboardNavigation.TabNavigation=""Continue""/>
            </Panel>
          </ControlTemplate>
        </Setter>
      </ControlTheme>

      <!-- ===================== MenuItem (bar items and submenu items) ===================== -->
      <ControlTheme x:Key=""{x:Type MenuItem}"" TargetType=""MenuItem"">
        <Setter Property=""Foreground"" Value=""" + (menuText) + @"""/>
        <Setter Property=""FontFamily"" Value=""" + (menuFont) + @"""/>
        <Setter Property=""FontSize"" Value=""" + (menuFontSize) + @"""/>
        <Setter Property=""FontWeight"" Value=""" + (menuFontWeight) + @"""/>
        <Setter Property=""Background"" Value=""Transparent""/>
        <Setter Property=""Padding"" Value=""6,2,6,2""/>
        <Setter Property=""MinHeight"" Value=""20""/>
        <Setter Property=""ItemsPanel"">
          <ItemsPanelTemplate><StackPanel/></ItemsPanelTemplate>
        </Setter>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel Name=""PART_LayoutRoot"" Background=""Transparent"">
              <Panel Name=""PART_Bg"">
                <n:ThemePart Kind=""MenuBarItem""
                             IsVisible=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.IsTopLevel}}""/>
                <n:ThemePart Kind=""MenuPopupItem""
                             IsVisible=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.IsSubItem}}""/>
              </Panel>
              <Border Name=""PART_SeparatorHost"" IsVisible=""False"">
                <n:ThemePart Kind=""MenuPopupSeparator"" Height=""6"" VerticalAlignment=""Center"" Margin=""" + (N(gutterW + 2)) + @",0,0,0""/>
              </Border>
              <Grid Name=""PART_Content"">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width=""Auto""/>
                  <ColumnDefinition Width=""*""/>
                  <ColumnDefinition Width=""Auto"" SharedSizeGroup=""NativeMenuGesture""/>
                  <ColumnDefinition Width=""Auto"" SharedSizeGroup=""NativeMenuArrow""/>
                </Grid.ColumnDefinitions>
                <Panel Grid.Column=""0"" Width=""" + (N(gutterW)) + @"""
                       IsVisible=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.IsSubItem}}"">
                  <Border Name=""PART_CheckHost"" Width=""22"" Height=""22"" IsVisible=""False"">
                    <n:ThemePart Kind=""MenuCheck""/>
                  </Border>
                  <ContentControl Name=""PART_IconPresenter"" Content=""{TemplateBinding Icon}""
                                  Width=""16"" Height=""16"" HorizontalAlignment=""Center"" VerticalAlignment=""Center""/>
                </Panel>
                <ContentPresenter Name=""PART_HeaderPresenter"" Grid.Column=""1""
                                  Content=""{TemplateBinding Header}""
                                  ContentTemplate=""{TemplateBinding HeaderTemplate}""
                                  Foreground=""{TemplateBinding Foreground}""
                                  Margin=""{TemplateBinding Padding}""
                                  RecognizesAccessKey=""True""
                                  HorizontalAlignment=""Left"" VerticalAlignment=""Center""/>
                <TextBlock Name=""PART_InputGestureText"" Grid.Column=""2""
                           Text=""{Binding InputGesture, RelativeSource={RelativeSource TemplatedParent}}""
                           Foreground=""{TemplateBinding Foreground}""
                           Margin=""24,0,8,0"" VerticalAlignment=""Center""
                           IsVisible=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.IsSubItem}}""/>
                <Panel Grid.Column=""3"" Width=""16""
                       IsVisible=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.HasSubItems}}"">
                  <n:ThemePart Kind=""MenuSubmenuArrow"" Width=""16"" Height=""16"" HorizontalAlignment=""Center"" VerticalAlignment=""Center""/>
                </Panel>
              </Grid>
              <Popup Name=""PART_Popup""
                     IsLightDismissEnabled=""True""
                     IsOpen=""{TemplateBinding IsSubMenuOpen, Mode=TwoWay}""
                     Placement=""{Binding RelativeSource={RelativeSource TemplatedParent}, Converter={x:Static n:NativeMenuConverters.Placement}}""
                     OverlayInputPassThroughElement=""{Binding $parent[Menu]}"">
                <Panel MinWidth=""80"">
                  <n:ThemePart Kind=""MenuPopupBackground""/>
                  <n:ThemePart Kind=""MenuPopupGutter"" Width=""2"" HorizontalAlignment=""Left"" Margin=""" + (N(gutterW)) + @",2,0,2""/>
                  <n:ThemePart Kind=""MenuPopupBorders""/>
                  <ScrollViewer Margin=""2"">
                    <ItemsPresenter Name=""PART_ItemsPresenter"" ItemsPanel=""{TemplateBinding ItemsPanel}""
                                    Grid.IsSharedSizeScope=""True""/>
                  </ScrollViewer>
                </Panel>
              </Popup>
            </Panel>
          </ControlTemplate>
        </Setter>
        <Style Selector=""^:checked /template/ Border#PART_CheckHost"">
          <Setter Property=""IsVisible"" Value=""True""/>
        </Style>
        <Style Selector=""^:separator"">
          <Setter Property=""MinHeight"" Value=""0""/>
          <Setter Property=""Height"" Value=""6""/>
          <Setter Property=""Focusable"" Value=""False""/>
          <Setter Property=""IsHitTestVisible"" Value=""False""/>
        </Style>
        <Style Selector=""^:separator /template/ Panel#PART_Bg"">
          <Setter Property=""IsVisible"" Value=""False""/>
        </Style>
        <Style Selector=""^:separator /template/ Grid#PART_Content"">
          <Setter Property=""IsVisible"" Value=""False""/>
        </Style>
        <Style Selector=""^:separator /template/ Border#PART_SeparatorHost"">
          <Setter Property=""IsVisible"" Value=""True""/>
        </Style>
        <Style Selector=""^:disabled"">
          <Setter Property=""Foreground"" Value=""" + (gray) + @"""/>
        </Style>
      </ControlTheme>

      <!-- ===================== ContextMenu ===================== -->
      <ControlTheme x:Key=""{x:Type ContextMenu}"" TargetType=""ContextMenu"">
        <Setter Property=""Foreground"" Value=""" + (menuText) + @"""/>
        <Setter Property=""FontFamily"" Value=""" + (menuFont) + @"""/>
        <Setter Property=""FontSize"" Value=""" + (menuFontSize) + @"""/>
        <Setter Property=""FontWeight"" Value=""" + (menuFontWeight) + @"""/>
        <Setter Property=""ItemsPanel"">
          <ItemsPanelTemplate><StackPanel/></ItemsPanelTemplate>
        </Setter>
        <Setter Property=""Template"">
          <ControlTemplate>
            <Panel MinWidth=""80"">
              <n:ThemePart Kind=""MenuPopupBackground""/>
              <n:ThemePart Kind=""MenuPopupGutter"" Width=""2"" HorizontalAlignment=""Left"" Margin=""" + (N(gutterW)) + @",2,0,2""/>
              <n:ThemePart Kind=""MenuPopupBorders""/>
              <ScrollViewer Margin=""2"">
                <ItemsPresenter Name=""PART_ItemsPresenter"" ItemsPanel=""{TemplateBinding ItemsPanel}""
                                Grid.IsSharedSizeScope=""True"" KeyboardNavigation.TabNavigation=""Continue""/>
              </ScrollViewer>
            </Panel>
          </ControlTemplate>
        </Setter>
      </ControlTheme>

      <!-- ===================== Separator (menu look, used between menu items) ===================== -->
      <ControlTheme x:Key=""{x:Type Separator}"" TargetType=""Separator"">
        <Setter Property=""Height"" Value=""6""/>
        <Setter Property=""Focusable"" Value=""False""/>
        <Setter Property=""Template"">
          <ControlTemplate>
            <n:ThemePart Kind=""MenuPopupSeparator"" Margin=""" + (N(gutterW + 2)) + @",0,0,0""/>
          </ControlTemplate>
        </Setter>
      </ControlTheme>

    </ResourceDictionary>
  </Styles.Resources>
</Styles>";
        }
    }

    /// <summary>Converters used by the generated menu templates (bound to the templated MenuItem).</summary>
    public static class NativeMenuConverters
    {
        static bool Top(object? v) => v is MenuItem m && m.Parent is Menu;

        public static readonly IValueConverter IsTopLevel = new FuncValueConverter<object?, bool>(v => Top(v));
        public static readonly IValueConverter IsSubItem = new FuncValueConverter<object?, bool>(v => v is MenuItem && !Top(v));
        public static readonly IValueConverter HasSubItems = new FuncValueConverter<object?, bool>(v => v is MenuItem m && !Top(v) && m.ItemCount > 0);
        public static readonly IValueConverter Placement = new FuncValueConverter<object?, PlacementMode>(v =>
            Top(v) ? PlacementMode.BottomEdgeAlignedLeft : PlacementMode.RightEdgeAlignedTop);
    }

    /// <summary>Paints one UxTheme part AND state follows the templated parent's pseudo-classes , very pik for code reusing .</summary>
    public class ThemePart : Control
    {
        public static readonly StyledProperty<NativePartKind> KindProperty =
            AvaloniaProperty.Register<ThemePart, NativePartKind>(nameof(Kind));

        public NativePartKind Kind
        {
            get => GetValue(KindProperty);
            set => SetValue(KindProperty, value);
        }

        static ThemePart()
        {
            AffectsRender<ThemePart>(KindProperty);
            AffectsMeasure<ThemePart>(KindProperty);
        }

        Control? _owner;

        protected override void OnAttachedToVisualTree(VisualTreeAttachmentEventArgs e)
        {
            base.OnAttachedToVisualTree(e);
            _owner = TemplatedParent as Control;
            if (_owner != null)
                _owner.Classes.CollectionChanged += OnOwnerClasses;
            NativeTheme.Changed += OnThemeChanged;
        }

        protected override void OnDetachedFromVisualTree(VisualTreeAttachmentEventArgs e)
        {
            base.OnDetachedFromVisualTree(e);
            if (_owner != null)
                _owner.Classes.CollectionChanged -= OnOwnerClasses;
            _owner = null;
            NativeTheme.Changed -= OnThemeChanged;
        }

        void OnOwnerClasses(object? sender, NotifyCollectionChangedEventArgs e) => InvalidateVisual();

        void OnThemeChanged()
        {
            InvalidateMeasure();
            InvalidateVisual();
        }

        bool Has(string pseudo) => _owner?.Classes.Contains(pseudo) ?? false;

        double Scale => TopLevel.GetTopLevel(this)?.RenderScaling ?? 1.0;
        uint Dpi => (uint)Math.Max(48, Math.Round(96.0 * Scale));

        int State()
        {
            bool dis = Has(":disabled"), pressed = Has(":pressed"), hot = Has(":pointerover");
            int s = dis ? 4 : pressed ? 3 : hot ? 2 : 1; // NORMAL, HOT, PRESSED, DISABLED

            switch (Kind)
            {
                case NativePartKind.PushButton:
                    // PBS_DEFAULTED (5) for keyboard-focused buttons .
                    return s == 1 && Has(":focus-visible") ? 5 : s;

                case NativePartKind.CheckBox:
                    {
                        int b = Has(":checked") ? 5 : Has(":indeterminate") ? 9 : 1;
                        return b + (s - 1);
                    }
                case NativePartKind.RadioButton:
                    return (Has(":checked") ? 5 : 1) + (s - 1);

                case NativePartKind.EditBorder:
                    return dis ? 4 : Has(":focus") ? 3 : hot ? 2 : 1;

                case NativePartKind.ScrollArrowUp: return 1 + (s - 1);
                case NativePartKind.ScrollArrowDown: return 5 + (s - 1);
                case NativePartKind.ScrollArrowLeft: return 9 + (s - 1);
                case NativePartKind.ScrollArrowRight: return 13 + (s - 1);

                case NativePartKind.ProgressTrack:
                case NativePartKind.ProgressFill:
                case NativePartKind.TabPane:
                case NativePartKind.SliderTrackH:
                case NativePartKind.SliderTrackV:
                    return 1;

                case NativePartKind.MenuBarBackground:
                case NativePartKind.MenuPopupBackground:
                case NativePartKind.MenuPopupBorders:
                case NativePartKind.MenuPopupGutter:
                case NativePartKind.MenuPopupSeparator:
                    return 1;

                case NativePartKind.MenuBarItem:
                    {
                        bool open = Has(":open"), sel = Has(":selected");
                        return dis ? (open ? 6 : sel ? 5 : 4) : open ? 3 : sel ? 2 : 1; // MBI_*
                    }
                case NativePartKind.MenuPopupItem:
                    return dis ? (Has(":selected") ? 4 : 3) : Has(":selected") ? 2 : 1; // MPI_*

                case NativePartKind.MenuSubmenuArrow:
                    return dis ? 2 : 1; // MSM_NORMAL / MSM_DISABLED

                case NativePartKind.MenuCheck:
                    return 2; // MCB_NORMAL (background); the checkmark itself is drawn as the "gripper" part

                case NativePartKind.ComboReadOnly:
                    return dis ? 4 : Has(":dropdownopen") ? 3 : hot ? 2 : 1;

                case NativePartKind.ComboBorder:
                    return dis ? 4 : Has(":focus") || Has(":dropdownopen") ? 3 : hot ? 2 : 1;

                case NativePartKind.ComboDropButton:
                    return dis ? 4 : Has(":dropdownopen") || pressed ? 3 : hot ? 2 : 1;

                case NativePartKind.TabItem:
                    return dis ? 4 : Has(":selected") ? 3 : hot ? 2 : 1;

                case NativePartKind.SliderThumbH:
                case NativePartKind.SliderThumbV:
                    return dis ? 5 : s; // TUS_DISABLED is 5 (4 is FOCUSED)

                default:
                    return s; // thumbs and tracks use NORMAL/HOT/PRESSED/DISABLED directly
            }
        }

        bool Vertical => Has(":vertical");

        protected override Size MeasureOverride(Size availableSize)
        {
            if (Kind is NativePartKind.CheckBox or NativePartKind.RadioButton)
            {
                var (cls, parts, _) = NativeRenderer.Describe(Kind, Vertical);
                var size = NativeRenderer.PartSize(cls, parts[0], State(), Dpi);
                double scale = Scale;
                return new Size(size.Width / scale, size.Height / scale);
            }
            return default; // fills whatever the parent gives it . For glitches .
        }

        public override void Render(DrawingContext context)
        {
            double scale = Scale;
            int pw = (int)Math.Round(Bounds.Width * scale);
            int ph = (int)Math.Round(Bounds.Height * scale);
            if (pw <= 0 || ph <= 0)
                return;

            var dest = new Rect(0, 0, pw / scale, ph / scale);
            context.DrawRectangle(Brushes.Transparent, null, dest);

            var bmp = NativeRenderer.Get(Kind, Vertical, State(), pw, ph, Dpi);
            if (bmp != null)
                context.DrawImage(bmp, new Rect(0, 0, pw, ph), dest);
        }
    }

    // ------------------------------------------------------------------ rendering

    static class NativeRenderer
    {
        record struct Key(NativePartKind Kind, bool Vertical, int State, int W, int H, uint Dpi);

        static readonly Dictionary<Key, WriteableBitmap?> _bitmaps = new();
        static readonly Dictionary<(string, uint), IntPtr> _themes = new();
        static readonly Dictionary<(string, int, int, uint), Size> _sizes = new();
        static readonly object _lock = new();

        public static void Clear()
        {
            lock (_lock)
            {
                _bitmaps.Clear();
                _sizes.Clear();
                foreach (var h in _themes.Values)
                    if (h != IntPtr.Zero) Win32.CloseThemeData(h);
                _themes.Clear();
            }
        }

        /// <summary>UxTheme class, candidate part ids (first that draws wins), optional gripper part.</summary>
        public static (string cls, int[] parts, int gripper) Describe(NativePartKind kind, bool vertical) => kind switch
        {
            NativePartKind.PushButton => ("BUTTON", new[] { 1 }, 0),
            NativePartKind.RadioButton => ("BUTTON", new[] { 2 }, 0),
            NativePartKind.CheckBox => ("BUTTON", new[] { 3 }, 0),
            NativePartKind.EditBorder => ("EDIT", new[] { 6, 1 }, 0), // EDITBORDER_NOSCROLL, EDITTEXT
            NativePartKind.ProgressTrack => ("PROGRESS", new[] { vertical ? 2 : 1 }, 0),
            NativePartKind.ProgressFill => ("PROGRESS", vertical ? new[] { 6, 4 } : new[] { 5, 3 }, 0),
            NativePartKind.ScrollArrowUp or NativePartKind.ScrollArrowDown or
            NativePartKind.ScrollArrowLeft or NativePartKind.ScrollArrowRight => ("SCROLLBAR", new[] { 1 }, 0),
            NativePartKind.ScrollThumbH => ("SCROLLBAR", new[] { 2 }, 8),
            NativePartKind.ScrollThumbV => ("SCROLLBAR", new[] { 3 }, 9),
            NativePartKind.ScrollTrackLowerH => ("SCROLLBAR", new[] { 4 }, 0),
            NativePartKind.ScrollTrackUpperH => ("SCROLLBAR", new[] { 5 }, 0),
            NativePartKind.ScrollTrackLowerV => ("SCROLLBAR", new[] { 6 }, 0),
            NativePartKind.ScrollTrackUpperV => ("SCROLLBAR", new[] { 7 }, 0),
            NativePartKind.ComboReadOnly => ("COMBOBOX", new[] { 5 }, 0),        // CP_READONLY (glossy, non-editable)
            NativePartKind.ComboBorder => ("COMBOBOX", new[] { 4 }, 0),          // CP_BORDER
            NativePartKind.ComboDropButton => ("COMBOBOX", new[] { 6, 1 }, 0),   // CP_DROPDOWNBUTTONRIGHT, CP_DROPDOWNBUTTON
            NativePartKind.TabItem => ("TAB", new[] { 1 }, 0),                   // TABP_TABITEM
            NativePartKind.TabPane => ("TAB", new[] { 9, 10 }, 0),               // TABP_PANE, TABP_BODY
            NativePartKind.SliderTrackH => ("TRACKBAR", new[] { 1 }, 0),         // TKP_TRACK
            NativePartKind.SliderTrackV => ("TRACKBAR", new[] { 2 }, 0),         // TKP_TRACKVERT
            NativePartKind.SliderThumbH => ("TRACKBAR", new[] { 3 }, 0),         // TKP_THUMB
            NativePartKind.SliderThumbV => ("TRACKBAR", new[] { 6 }, 0),         // TKP_THUMBVERT
            NativePartKind.MenuBarBackground => ("MENU", new[] { 7 }, 0),        // MENU_BARBACKGROUND
            NativePartKind.MenuBarItem => ("MENU", new[] { 8 }, 0),              // MENU_BARITEM
            NativePartKind.MenuPopupBackground => ("MENU", new[] { 9 }, 0),      // MENU_POPUPBACKGROUND
            NativePartKind.MenuPopupBorders => ("MENU", new[] { 10 }, 0),        // MENU_POPUPBORDERS
            NativePartKind.MenuPopupGutter => ("MENU", new[] { 13 }, 0),         // MENU_POPUPGUTTER
            NativePartKind.MenuPopupItem => ("MENU", new[] { 14 }, 0),           // MENU_POPUPITEM
            NativePartKind.MenuPopupSeparator => ("MENU", new[] { 15 }, 0),      // MENU_POPUPSEPARATOR
            NativePartKind.MenuSubmenuArrow => ("MENU", new[] { 16 }, 0),        // MENU_POPUPSUBMENU
            NativePartKind.MenuCheck => ("MENU", new[] { 12 }, 11),              // POPUPCHECKBACKGROUND + POPUPCHECK
            _ => ("BUTTON", new[] { 1 }, 0),
        };

        static IntPtr Theme(string cls, uint dpi)
        {
            if (_themes.TryGetValue((cls, dpi), out var h)) return h;
            try { h = Win32.OpenThemeDataForDpi(IntPtr.Zero, cls, dpi); }
            catch (EntryPointNotFoundException) { h = Win32.OpenThemeData(IntPtr.Zero, cls); }
            _themes[(cls, dpi)] = h;
            return h;
        }

        public static Size PartSize(string cls, int part, int state, uint dpi)
        {
            lock (_lock)
            {
                if (_sizes.TryGetValue((cls, part, state, dpi), out var cached)) return cached;
                var size = new Size(13 * dpi / 96.0, 13 * dpi / 96.0); // sane fallback
                var theme = Theme(cls, dpi);
                if (theme != IntPtr.Zero)
                {
                    IntPtr hdc = Win32.CreateCompatibleDC(IntPtr.Zero);
                    try
                    {
                        // TS_DRAW = 2
                        if (Win32.GetThemePartSize(theme, hdc, part, state, IntPtr.Zero, 2, out var s) == 0
                            && s.cx > 0 && s.cy > 0)
                            size = new Size(s.cx, s.cy);
                    }
                    finally { Win32.DeleteDC(hdc); }
                }
                _sizes[(cls, part, state, dpi)] = size;
                return size;
            }
        }

        public static WriteableBitmap? Get(NativePartKind kind, bool vertical, int state, int w, int h, uint dpi)
        {
            var key = new Key(kind, vertical, state, w, h, dpi);
            lock (_lock)
            {
                if (_bitmaps.TryGetValue(key, out var cached)) return cached;
                if (_bitmaps.Count > 512) _bitmaps.Clear();
                var bmp = Render(kind, vertical, state, w, h, dpi);
                _bitmaps[key] = bmp;
                return bmp;
            }
        }

        static WriteableBitmap? Render(NativePartKind kind, bool vertical, int state, int w, int h, uint dpi)
        {
            var (cls, parts, gripper) = Describe(kind, vertical);
            var theme = Theme(cls, dpi);
            if (theme == IntPtr.Zero) return null;

            int len = w * h * 4;
            IntPtr hdc = Win32.CreateCompatibleDC(IntPtr.Zero);
            var bi = new Win32.BITMAPINFOHEADER
            {
                biSize = (uint)Marshal.SizeOf<Win32.BITMAPINFOHEADER>(),
                biWidth = w,
                biHeight = -h, // top-down
                biPlanes = 1,
                biBitCount = 32,
                biCompression = 0,
            };
            IntPtr dib = Win32.CreateDIBSection(hdc, ref bi, 0, out IntPtr bits, IntPtr.Zero, 0);
            if (dib == IntPtr.Zero)
            {
                Win32.DeleteDC(hdc);
                return null;
            }
            IntPtr old = Win32.SelectObject(hdc, dib);

            try
            {
                var onBlack = new byte[len];
                var onWhite = new byte[len];

                // PASS ONE LA
                Marshal.Copy(onBlack, 0, bits, len);
                if (!DrawAll(theme, hdc, parts, gripper, state, w, h)) return null;
                Marshal.Copy(bits, onBlack, 0, len);

                // PASS TWO LA
                Array.Fill(onWhite, (byte)0xFF);
                Marshal.Copy(onWhite, 0, bits, len);
                DrawAll(theme, hdc, parts, gripper, state, w, h);
                Marshal.Copy(bits, onWhite, 0, len);

                var result = new byte[len];
                for (int i = 0; i < len; i += 4)
                {
                    int b = onBlack[i], g = onBlack[i + 1], r = onBlack[i + 2];
                    int diff = ((onWhite[i] - b) + (onWhite[i + 1] - g) + (onWhite[i + 2] - r)) / 3;
                    int a = Math.Clamp(255 - diff, 0, 255);
                    result[i] = (byte)Math.Min(b, a);
                    result[i + 1] = (byte)Math.Min(g, a);
                    result[i + 2] = (byte)Math.Min(r, a);
                    result[i + 3] = (byte)a;
                }

                var bmp = new WriteableBitmap(new PixelSize(w, h), new Vector(dpi, dpi),
                                              PixelFormat.Bgra8888, AlphaFormat.Premul);
                using (var fb = bmp.Lock())
                {
                    for (int y = 0; y < h; y++)
                        Marshal.Copy(result, y * w * 4, fb.Address + y * fb.RowBytes, w * 4);
                }
                return bmp;
            }
            finally
            {
                Win32.SelectObject(hdc, old);
                Win32.DeleteObject(dib);
                Win32.DeleteDC(hdc);
            }
        }

        static bool DrawAll(IntPtr theme, IntPtr hdc, int[] parts, int gripper, int state, int w, int h)
        {
            var rc = new Win32.RECT { left = 0, top = 0, right = w, bottom = h };
            bool drawn = false;
            foreach (int part in parts)
            {
                if (Win32.DrawThemeBackground(theme, hdc, part, state, ref rc, IntPtr.Zero) == 0)
                {
                    drawn = true;
                    break;
                }
            }
            if (!drawn) return false;

            if (gripper != 0 &&
                Win32.GetThemePartSize(theme, hdc, gripper, 1, IntPtr.Zero, 2, out var gs) == 0 &&
                gs.cx > 0 && gs.cy > 0 && gs.cx <= w && gs.cy <= h)
            {
                int x = (w - gs.cx) / 2, y = (h - gs.cy) / 2;
                var grc = new Win32.RECT { left = x, top = y, right = x + gs.cx, bottom = y + gs.cy };
                Win32.DrawThemeBackground(theme, hdc, gripper, 1, ref grc, IntPtr.Zero);
            }
            return true;
        }
    }

    // ------------------------------------------------------------------ P/Invoke

    static class Win32
    {
        [StructLayout(LayoutKind.Sequential)]
        public struct RECT { public int left, top, right, bottom; }

        [StructLayout(LayoutKind.Sequential)]
        public struct SIZE { public int cx, cy; }

        [StructLayout(LayoutKind.Sequential)]
        public struct BITMAPINFOHEADER
        {
            public uint biSize;
            public int biWidth, biHeight;
            public ushort biPlanes, biBitCount;
            public uint biCompression, biSizeImage;
            public int biXPelsPerMeter, biYPelsPerMeter;
            public uint biClrUsed, biClrImportant;
        }

        [DllImport("uxtheme.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool IsThemeActive();

        [DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
        public static extern IntPtr OpenThemeData(IntPtr hwnd, string classList);

        [DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
        public static extern IntPtr OpenThemeDataForDpi(IntPtr hwnd, string classList, uint dpi);

        [DllImport("uxtheme.dll")]
        public static extern int CloseThemeData(IntPtr hTheme);

        [DllImport("uxtheme.dll")]
        public static extern int DrawThemeBackground(IntPtr hTheme, IntPtr hdc, int part, int state,
                                                     ref RECT rect, IntPtr clipRect);

        [DllImport("uxtheme.dll")]
        public static extern int GetThemePartSize(IntPtr hTheme, IntPtr hdc, int part, int state,
                                                  IntPtr rect, int themeSize, out SIZE size);

        [DllImport("gdi32.dll")]
        public static extern IntPtr CreateCompatibleDC(IntPtr hdc);

        [DllImport("gdi32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool DeleteDC(IntPtr hdc);

        [DllImport("gdi32.dll")]
        public static extern IntPtr CreateDIBSection(IntPtr hdc, ref BITMAPINFOHEADER bmi, uint usage,
                                                     out IntPtr bits, IntPtr section, uint offset);

        [DllImport("gdi32.dll")]
        public static extern IntPtr SelectObject(IntPtr hdc, IntPtr obj);

        [DllImport("gdi32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool DeleteObject(IntPtr obj);

        [DllImport("user32.dll")]
        public static extern uint GetSysColor(int index);

        [DllImport("user32.dll")]
        static extern int GetSystemMetrics(int index);

        [DllImport("user32.dll")]
        static extern int GetSystemMetricsForDpi(int index, uint dpi);

        /// <summary>System metric in pixels at 96 D.P.I... scaling will not work good la....</summary>
        public static int Metric(int index)
        {
            try { return GetSystemMetricsForDpi(index, 96); }
            catch (EntryPointNotFoundException) { return GetSystemMetrics(index); }
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        public struct LOGFONT
        {
            public int lfHeight, lfWidth, lfEscapement, lfOrientation, lfWeight;
            public byte lfItalic, lfUnderline, lfStrikeOut, lfCharSet,
                        lfOutPrecision, lfClipPrecision, lfQuality, lfPitchAndFamily;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
            public string lfFaceName;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        public struct NONCLIENTMETRICS
        {
            public uint cbSize;
            public int iBorderWidth, iScrollWidth, iScrollHeight, iCaptionWidth, iCaptionHeight;
            public LOGFONT lfCaptionFont;
            public int iSmCaptionWidth, iSmCaptionHeight;
            public LOGFONT lfSmCaptionFont;
            public int iMenuWidth, iMenuHeight;
            public LOGFONT lfMenuFont;
            public LOGFONT lfStatusFont;
            public LOGFONT lfMessageFont;
            public int iPaddedBorderWidth;
        }

        [DllImport("user32.dll", CharSet = CharSet.Unicode, EntryPoint = "SystemParametersInfoW")]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool SystemParametersInfo(uint action, uint param, ref NONCLIENTMETRICS ncm, uint winIni);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool SystemParametersInfoForDpi(uint action, uint param, ref NONCLIENTMETRICS ncm, uint winIni, uint dpi);

        public static (string Family, int Size, bool Bold) MenuFont()
        {
            const uint SPI_GETNONCLIENTMETRICS = 0x0029;
            var ncm = new NONCLIENTMETRICS { cbSize = (uint)Marshal.SizeOf<NONCLIENTMETRICS>() };
            bool ok;
            try { ok = SystemParametersInfoForDpi(SPI_GETNONCLIENTMETRICS, ncm.cbSize, ref ncm, 0, 96); }
            catch (EntryPointNotFoundException) { ok = SystemParametersInfo(SPI_GETNONCLIENTMETRICS, ncm.cbSize, ref ncm, 0); }

            var f = ncm.lfMenuFont;
            if (!ok || string.IsNullOrWhiteSpace(f.lfFaceName) || f.lfHeight == 0)
                return ("Segoe UI", 12, false);

            return (f.lfFaceName, Math.Abs(f.lfHeight), f.lfWeight >= 700);
        }
    }
}