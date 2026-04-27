/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using static System.String;

namespace Skymu.Views.Pages
{
    public partial class Updater : Page
    {
        private CancellationTokenSource _cts;
        private const string Author = "TheSkymuTeam";
        private const string Repo = "Skymu";
        private string brand = Settings.BrandingName;
        private updateInfo? update_info;
        private WindowBase window;

        internal struct updateInfo
        {
            public string status;
            public string[] urls;
            public string tag;
            public string name;
            // changelog, error log
            public string log;
        }

        public Updater(bool manual = false)
        {
            InitializeComponent();
            UpdateHandler(manual);
        }

        public async void UpdateHandler(bool manual, WindowBase exwin = null)
        {
            update_info = await GetUpdateInfo();

            if (update_info != null && (manual || // not up to date, must show window
                (IsNullOrEmpty(Settings.SkippedVersion) && update_info?.tag != Settings.SkippedVersion)))
            {
                if (exwin != null)
                    window = exwin;
                else
                    window = new WindowBase(this);
                window.Width = 518;
                window.Height = 394;
                window.SizeToContent = SizeToContent.Manual;
                window.Title = brand + "™ - Update";
                window.ButtonRightAction = () => window.Close();

                if (update_info?.status == "UPDATE_CHECK_ERROR") // error when checking for update
                {
                    if (!manual)
                    {
                        window.Close();
                        return;
                    }
                    window.HeaderIcon = WindowBase.IconType.PackageWarning;
                    window.HeaderText = Universal.Lang["sF_UPGRADE_CHECK_FAILED_HEADER"];
                    window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_RETRY"];
                    window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
                    window.ButtonLeftAction = () => UpdateHandler(true, window);
                    Description.Text =
                        Universal.Lang["sF_UPGRADE_CHECK_FAILED"] + "\n\n" + update_info?.log;
                }
                else // update is available
                {
                    window.HeaderIcon = WindowBase.IconType.PackageCheckmark;
                    window.HeaderText =
                        Universal.Lang["sF_UPGRADE_FRM_CAPTION"] + " available: " + update_info?.name;
                    window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_DOWNLOAD"];
                    window.ButtonLeftAction = () => InitiateUpdate();
                    window.ButtonMiddleText = "Skip this version";
                    window.ButtonMiddleEnabled = true;
                    window.ButtonMiddleAction = () => { SkipUpdate(update_info?.tag); window.Close(); };
                    window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_DECIDELATER"];
                    Description.Text = Universal.Lang["sF_UPGRADE_NORMAL_TEXT1"];
                    string changelog = update_info?.log;
                    if (!string.IsNullOrEmpty(changelog))
                    {
                        changelog = changelog.Replace("*", "•");
                        Description.Text += Environment.NewLine + Environment.NewLine + changelog;
                    }
                }

                window.ShowDialog(); // show window as dialog
            }
            else // up to date, show dialog
            {
                if (manual)
                    new Dialog(
                        WindowBase.IconType.PackageCheckmark,
                        Universal.Lang["sF_UPGRADE_UPTODATE"],
                        Universal.Lang["sF_UPGRADE_UPTODATE_CAPTION"]
                    ).ShowDialog();
            }
        }

        public void UpdateError(string error)
        {
            window.HeaderIcon = WindowBase.IconType.PackageWarning;
            window.HeaderText = Universal.Lang["sF_UPGRADE_FAILED_CAPTION"];
            window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_RETRY"];
            window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
            window.ButtonLeftAction = () => InitiateUpdate();
            Description.Text = Universal.Lang["sF_UPGRADE_FAILED_TEXT1"] + "\n\n" + error;
            ProgressGrid.Visibility = Visibility.Collapsed;
        }

        public void UpdateComplete(string file_path)
        {
            if (window.Visibility == Visibility.Hidden)
                window.Show();
            window.HeaderText = "Download complete";
            window.ButtonLeftText = "Open file";
            window.ButtonRightText = Universal.Lang["sSKYACCESS_DLG_BTN_CLOSE"];
            window.ButtonLeftAction = () =>
            {
                try
                {
                    Universal.OpenUrl(file_path);
                }
                catch (Exception ex)
                {
                    new Dialog(
                        WindowBase.IconType.PackageWarning,
                        ex.Message,
                        "Cannot open file"
                    ).ShowDialog();
                }
                window.Close();
                return;
            };
            UpdateStatusText.Text = Universal.Lang.Format(
                "sF_UPGRADE_DOWNLOAD_PROGRESS",
                100,
                new TimeSpan(0).ToString(@"hh\:mm\:ss"),
                0
            );
            Description.Text = "The release package has been saved to the Downloads folder.";
            ProgBar.Value = 100;
        }

        public async void InitiateUpdate()
        {
            window.HeaderIcon = WindowBase.IconType.PackageStar;
            window.HeaderText = Universal.Lang["sF_UPGRADE_DOWNLOAD_CAPTION"];
            window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_HIDE"];
            window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
            window.ButtonLeftAction = () => window.Hide();
            window.ButtonMiddleEnabled = false;
            Description.Text = Universal.Lang["sF_UPGRADE_DOWNLOAD_TEXT"];
            UpdateStatusText.Text = Universal.Lang["sF_UPGRADE_INIT"];
            ProgressGrid.Visibility = Visibility.Visible;

            window.Closing += (s, e) =>
            {
                _cts?.Cancel();
            };

            try
            {
                string downloadUrl = update_info?.urls[0];

                if (IsNullOrWhiteSpace(downloadUrl))
                    return;

                string downloadsFolder = Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                    "Downloads"
                );

                if (!Directory.Exists(downloadsFolder))
                    Directory.CreateDirectory(downloadsFolder);

                string fileName = Path.GetFileName(new Uri(downloadUrl).LocalPath);
                string filePath = Path.Combine(downloadsFolder, fileName);

                _cts = new CancellationTokenSource();

                using (
                    HttpResponseMessage response = await Universal.WebClient.GetAsync(
                        downloadUrl,
                        HttpCompletionOption.ResponseHeadersRead,
                        _cts.Token
                    )
                )
                {
                    response.EnsureSuccessStatusCode();

                    int totalFileSize = (int)(response.Content.Headers.ContentLength ?? 0);
                    ProgBar.Minimum = 0;
                    ProgBar.Maximum = 100;

                    using (var stream = await response.Content.ReadAsStreamAsync())
                    using (
                        var fs = new FileStream(
                            filePath,
                            FileMode.Create,
                            FileAccess.Write,
                            FileShare.None
                        )
                    )
                    {
                        byte[] buffer = new byte[81920];
                        long totalRead = 0;
                        int read;
                        var stopwatch = System.Diagnostics.Stopwatch.StartNew();

                        FileSize.Visibility = Visibility.Visible;
                        FileSize.Text = Universal.Lang.Format(
                            "sF_UPGRADE_DOWNLOAD_FILESIZE",
                            (int)Math.Round(totalFileSize / 1024.0)
                        );

                        while (
                            (read = await stream.ReadAsync(buffer, 0, buffer.Length, _cts.Token))
                            > 0
                        )
                        {
                            await fs.WriteAsync(buffer, 0, read);
                            totalRead += read;

                            if (totalFileSize > 0)
                            {
                                int percent = (int)
                                    Math.Round((double)totalRead * 100 / totalFileSize);
                                ProgBar.Value = percent;

                                int kbPerSec = (int)
                                    Math.Round(totalRead / 1024.0 / stopwatch.Elapsed.TotalSeconds);

                                double bytesRemaining = totalFileSize - totalRead;
                                TimeSpan eta = TimeSpan.FromSeconds(
                                    bytesRemaining / (totalRead / stopwatch.Elapsed.TotalSeconds)
                                );

                                UpdateStatusText.Text = Universal.Lang.Format(
                                    "sF_UPGRADE_DOWNLOAD_PROGRESS",
                                    percent,
                                    eta.ToString(@"hh\:mm\:ss"),
                                    kbPerSec
                                );
                            }
                        }
                    }
                }

                UpdateComplete(filePath);
            }
            catch (Exception ex)
            {
                UpdateError(ex.Message);
            }
        }

        internal static async Task<updateInfo?> GetUpdateInfo()
        {
            if (Settings.DisablePingbacks) return null;
            try
            {
                string url = $"https://api.github.com/repos/{Author}/{Repo}/releases/latest";

                using (HttpResponseMessage response = await Universal.WebClient.GetAsync(url))
                {
                    if (!response.IsSuccessStatusCode)
                        return null;

                    string json = await response.Content.ReadAsStringAsync();

                    using (JsonDocument doc = JsonDocument.Parse(json))
                    {
                        string latestTag = doc
                            .RootElement.GetProperty("tag_name")
                            .GetString()
                            ?.TrimStart('v');

                        if (string.IsNullOrWhiteSpace(latestTag))
                            return null;

                        string currentVerStr = Universal.BuildVersion;
                        currentVerStr = currentVerStr.Replace("v", "");

                        Version currentVer;
                        Version.TryParse(currentVerStr, out currentVer);

                        latestTag = latestTag.Replace("v", "");

                        Version updateVer;
                        if (!Version.TryParse(latestTag, out updateVer))
                            return null;

                        if (currentVer >= updateVer)
                            return null;

                        string releaseName =
                            doc.RootElement.GetProperty("name").GetString() ?? string.Empty;

                        string changelog =
                            doc.RootElement.GetProperty("body").GetString() ?? string.Empty;

                        string buildName = "v" + updateVer.ToString() + " " + releaseName;

                        JsonElement assets = doc.RootElement.GetProperty("assets");
                        List<string> urls = new List<string>();

                        foreach (JsonElement asset in assets.EnumerateArray())
                        {
                            if (asset.TryGetProperty("browser_download_url", out JsonElement urlElement))
                            {
                                string downloadUrl = urlElement.GetString();
                                if (!IsNullOrEmpty(downloadUrl))
                                    urls.Add(downloadUrl);
                            }
                        }

                        return new updateInfo
                        {
                            status = "UPDATE_AVAILABLE",
                            urls = urls.ToArray(),
                            tag = latestTag,
                            name = buildName,
                            log = changelog
                        };
                    }
                }
            }
            catch (Exception ex)
            {
                return new updateInfo
                {
                    status = "UPDATE_CHECK_ERROR",
                    log = ex.Message,
                };
            }
        }

        internal static void SkipUpdate(string tag)
        {
            Settings.SkippedVersion = tag;
            Settings.Save();
        }
    }
}
