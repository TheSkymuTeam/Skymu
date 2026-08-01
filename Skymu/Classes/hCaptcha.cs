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

using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using Skymu.Forms;
using Skymu.Preferences;

namespace Skymu.Captcha
{
    class hCaptcha
    {
        private const string CaptchaHtml =
            @"
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv='X-UA-Compatible' content='IE=edge' />
  <style>
    html, body { 
        margin: 0; 
        padding: 0; 
        overflow: hidden; 
        background-color: transparent;
    }
  </style>
  <script>
  function hcaptchaOnLoad() {
    hcaptcha.render('captcha-container', {
      sitekey: '[SITEKEY_PLACEHOLDER]',
      rqdata: '[RQDATA_PLACEHOLDER]',
      'error-callback': function (err) {
        console.error('hCaptcha error:', err);
      }
    });
  }
</script>
  <script src='https://js.hcaptcha.com/1/api.js?render=explicit&onload=hcaptchaOnLoad&recaptchacompat=off' async defer></script>
</head>
<body>
  <div id='captcha-container'></div>
</body>
</html>";

        public static void ShowPrompt(string siteKey, string rqData)
        {
            WebBrowser webBrowser = new WebBrowser
            {
                Width = 302,
                Height = 76,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
            };

            Border paddingWrapper = new Border
            {
                Padding = new Thickness(5, 25, 5, 25), 
                Child = webBrowser, 
            };

            try
            {
                string formattedHtml = CaptchaHtml
                    .Replace("[SITEKEY_PLACEHOLDER]", siteKey)
                    .Replace("[RQDATA_PLACEHOLDER]", rqData);

                MemoryStream stream = new MemoryStream();
                StreamWriter writer = new StreamWriter(stream);
                writer.Write(formattedHtml);
                writer.Flush();
                stream.Position = 0;
                webBrowser.NavigateToStream(stream);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }

            Dialog captchaDialog = new Dialog(
                WindowBase.IconType.Picture,
                null,
                "Human verification is required",
                Settings.BrandingName + " - CAPTCHA",
                null,
                "Cancel",
                false,
                null,
                null,
                false,
                paddingWrapper
            );

            captchaDialog.Show();
        }
    }
}
