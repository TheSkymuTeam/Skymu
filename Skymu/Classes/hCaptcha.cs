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
using Avalonia.Layout;
using Avalonia.Threading;
using Skymu.AvaloniaTools;
using Skymu.Forms;
using Skymu.Preferences;
using System;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Skymu.Captcha
{
    public class hCaptcha
    {
        private const string TokenPrefix = "captcha_complete:";
        private const string ErrorPrefix = "captcha_error:";

        private const string CaptchaHtml = // hehe who needs html files when i have string
            @"<!DOCTYPE html>
<html>
<head>
    <title>Beep Boop! Boop Beep?</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://js.hcaptcha.com/1/api.js?onload=onLoad&render=explicit[HOST_QUERY]' async defer></script>
    <style>
        * { padding: 0; margin: 0; }

        body {
            display: table;
            width: 100vw;
            height: 100vh;
            text-align: center;
            background: #F3F3F3;
        }

        #captcha {
            margin-top: 5px;
            display: table-cell;
            vertical-align: middle;
        }

        div > div:nth-child(2) {
            opacity: 0 !important;
            width: 0 !important;
            height: 0 !important;
        }

        @media (prefers-color-scheme: dark) {
            body { background: #2b2b2b; }
        }
    </style>
</head>
<body>
    <script>
        // Different WebView backends expose different JS->C# bridges; try each.
        function sendToHost(msg) {
            try { if (window.invokeCSharpAction) { window.invokeCSharpAction(msg); return; } } catch (e) {}
            try { if (window.chrome && window.chrome.webview) { window.chrome.webview.postMessage(msg); return; } } catch (e) {}
            try { if (window.webkit && window.webkit.messageHandlers && window.webkit.messageHandlers.webview) { window.webkit.messageHandlers.webview.postMessage(msg); return; } } catch (e) {}
        }

        async function onLoad() {
            var theme = '[THEME]';
            var rqdata = '[RQDATA]';

            var renderOpts = {
                sitekey: '[SITEKEY]',
                callback: function (token) { sendToHost('[TOKEN_PREFIX]' + token); },
                'error-callback': function (err) { sendToHost('[ERROR_PREFIX]' + err); }
            };
            if (theme) renderOpts.theme = theme;

            var execOpts = { async: true };
            if (rqdata) execOpts.rqdata = rqdata;

            try {
                var widget = hcaptcha.render('captcha', renderOpts);
                await hcaptcha.execute(widget, execOpts);
            } catch (e) {
                // Rejects if the user dismisses the challenge; the window's Cancel handles that.
                sendToHost('[ERROR_PREFIX]' + (e && e.message ? e.message : e));
            }
        }
    </script>
    <div id='captcha' class='h-captcha'></div>
</body>
</html>";

        private static string JsEscape(string s) =>
            (s ?? string.Empty)
                .Replace("\\", "\\\\")
                .Replace("'", "\\'")
                .Replace("<", "\\x3C") 
                .Replace("\r", "")
                .Replace("\n", "\\n");

        private static string BuildHtml(string siteKey, string rqData, string host, string theme)
        {
            string hostQuery = string.IsNullOrWhiteSpace(host)
                ? string.Empty
                : "&host=" + Uri.EscapeDataString(host);

            return CaptchaHtml
                .Replace("[HOST_QUERY]", hostQuery)
                .Replace("[THEME]", JsEscape(theme))
                .Replace("[RQDATA]", JsEscape(rqData))
                .Replace("[SITEKEY]", JsEscape(siteKey))
                .Replace("[TOKEN_PREFIX]", TokenPrefix)
                .Replace("[ERROR_PREFIX]", ErrorPrefix);
        }

        // Shows the captcha window, Waits for the user, Returns the solved token, Returns null if the window was closed/cancelled.
        public static async Task<string> SolveAsync(
            string siteKey,
            string rqData = null,
            string host = null,
            bool isDarkTheme = false)
        {
            string theme = isDarkTheme ? "dark" : "light";
            var tcs = new TaskCompletionSource<string>(TaskCreationOptions.RunContinuationsAsynchronously);
            string html = BuildHtml(siteKey, rqData, host, theme);
            await Dispatcher.UIThread.InvokeAsync(() => Show(html, tcs));
            return await tcs.Task.ConfigureAwait(false);
        }

        private static void Show(string html, TaskCompletionSource<string> tcs)
        {
            CaptchaPage page = new CaptchaPage(html);

            SkinnedWindow frame = new SkinnedWindow(page)
            {
                ButtonLeftEnabled = false,
                HeaderIcon = SkinnedWindow.IconType.Picture,
                HeaderText = "Human verification is required",
                Title = Settings.BrandingName + " - CAPTCHA",
                ButtonRightText = "Cancel",
            };
            frame.ButtonRightAction = () => frame.Close();

            page.MessageReceived += msg =>
            {
                if (msg.StartsWith(TokenPrefix, StringComparison.Ordinal))
                {
                    tcs.TrySetResult(msg.Substring(TokenPrefix.Length));
                    frame.Close();
                }
                else if (msg.StartsWith(ErrorPrefix, StringComparison.Ordinal))
                {
                    Universal.ShowMessage("hCaptcha error: " + msg.Substring(ErrorPrefix.Length));
                }
            };

            frame.Closed += (s, e) => tcs.TrySetResult(null);

            AvaloniaHelpers.PresentSkinnedWindow(frame);
        }
    }

    internal class CaptchaPage : UserControl
    {
        private readonly NativeWebView _webView;
        private readonly string _html;

        public event Action<string> MessageReceived;

        public CaptchaPage(string html)
        {
            _html = html;

            _webView = new NativeWebView
            {
                Width = 420,
                Height = 600,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center
            };

            _webView.WebMessageReceived += (s, e) => MessageReceived?.Invoke(e.Body);

            Content = new Border
            {
                Padding = new Thickness(5),
                Child = _webView
            };

            AttachedToVisualTree += (s, e) => _webView.NavigateToString(_html);
        }
    }
}