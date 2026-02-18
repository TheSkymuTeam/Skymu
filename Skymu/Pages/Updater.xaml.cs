using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;

namespace Skymu.Pages
{
    /// <summary>
    /// Interaction logic for Updater.xaml
    /// </summary>
    public partial class Updater : Page
    {
        private CancellationTokenSource _cts;
        private const string Author = "TheSkymuTeam";
        private string brand = Properties.Settings.Default.BrandingName;
        private string[] updateInfo;
        private const string Repo = "Skymu-Public";
        private SkypeWindow window;

        private static readonly HttpClient _httpClient = CreateClient();

        private static HttpClient CreateClient()
        {
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.UserAgent.ParseAdd("Skymu-Updater");
            return client;
        }

        public Updater(bool manual = false)
        {
            InitializeComponent();
            UpdateHandler(manual);
        }

        public async void UpdateHandler(bool manual, SkypeWindow exwin = null)
        {
            updateInfo = await GetUpdateInfo();

            if (updateInfo.Length > 0) // not up to date, must show window
            {
                if (exwin is not null) window = exwin;
                else window = new SkypeWindow(this);
                window.Title = "Skype™ - Update";
                window.ButtonRightAction = () => window.Close();

                if (updateInfo[0] == "UPDATE_CHECK_ERROR") // error when checking for update
                {
                    if (!manual) { window.Close(); return; }
                    window.HeaderIcon = SkypeWindow.IconType.PackageWarning;
                    window.HeaderText = Universal.Lang["sF_UPGRADE_CHECK_FAILED_HEADER"];
                    window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_RETRY"];
                    window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
                    window.ButtonLeftAction = () => UpdateHandler(true, window);
                    Description.Text = Universal.Lang["sF_UPGRADE_CHECK_FAILED"] + "\n\n" + updateInfo[1];
                }

                else // update is available
                {
                    window.HeaderIcon = SkypeWindow.IconType.PackageCheckmark;
                    window.HeaderText = Universal.Lang["sF_UPGRADE_FRM_CAPTION"] + " available: " + updateInfo[0];
                    window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_DOWNLOAD"];
                    window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_DECIDELATER"];
                    window.ButtonLeftAction = () => InitiateUpdate();
                    Description.Text = Universal.Lang["sF_UPGRADE_NORMAL_TEXT1"];
                    string changelog = updateInfo[1];
                    if (!string.IsNullOrEmpty(changelog))
                    {
                        changelog = changelog.Replace("*", Properties.Settings.Default.ListDelimiter);
                        Description.Text += Environment.NewLine + Environment.NewLine + changelog;
                    }
                }

                window.ShowDialog(); // show window as dialog
            }

            else // up to date, show dialog
            {
                if (manual) new Dialog(SkypeWindow.IconType.PackageCheckmark, Universal.Lang["sF_UPGRADE_UPTODATE"], Universal.Lang["sF_UPGRADE_UPTODATE_CAPTION"]).ShowDialog();
            }
        }

        public void UpdateError(string error)
        {
            window.HeaderIcon = SkypeWindow.IconType.PackageWarning;
            window.HeaderText = Universal.Lang["sF_UPGRADE_FAILED_CAPTION"];
            window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_RETRY"];
            window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
            window.ButtonLeftAction = () => InitiateUpdate();
            Description.Text = Universal.Lang["sF_UPGRADE_FAILED_TEXT1"] + "\n\n" + error;
            ProgressGrid.Visibility = Visibility.Collapsed;            
        }

        public void UpdateComplete(string file_path)
        {
            if (window.Visibility == Visibility.Hidden) window.Show();
            window.HeaderText = "Download complete";
            window.ButtonLeftText = "Open file";
            window.ButtonRightText = Universal.Lang["sSKYACCESS_DLG_BTN_CLOSE"];
            window.ButtonLeftAction = () =>
            {
                try
                {
                    Process.Start(new ProcessStartInfo(file_path) { UseShellExecute = true });
                }
                catch (Exception ex)
                {
                    new Dialog(SkypeWindow.IconType.PackageWarning, ex.Message, "Cannot open file").ShowDialog();
                }
                window.Close(); return;
            };
            UpdateStatusText.Text = "100% done, 00:00:00 remaining";
            Description.Text = "The release package has been saved to the Downloads folder.";
            ProgBar.Value = 100;            
        }

        public async void InitiateUpdate()
        {
            window.HeaderIcon = SkypeWindow.IconType.PackageStar;
            window.HeaderText = Universal.Lang["sF_UPGRADE_DOWNLOAD_CAPTION"];
            window.ButtonLeftText = Universal.Lang["sF_UPGRADE_BTN_HIDE"];
            window.ButtonRightText = Universal.Lang["sF_UPGRADE_BTN_CANCEL"];
            window.ButtonLeftAction = () => window.Hide();
            Description.Text = Universal.Lang["sF_UPGRADE_DOWNLOAD_TEXT"];
            UpdateStatusText.Text = Universal.Lang["sF_UPGRADE_INIT"];
            ProgressGrid.Visibility = Visibility.Visible;

            window.Closing += (s, e) =>
            {
                _cts?.Cancel();
            };

            try
            {
                string downloadUrl = updateInfo[2];

                if (string.IsNullOrWhiteSpace(downloadUrl))
                    return;

                string downloadsFolder = Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                    "Downloads");

                if (!Directory.Exists(downloadsFolder))
                    Directory.CreateDirectory(downloadsFolder);

                string fileName = Path.GetFileName(new Uri(downloadUrl).LocalPath);
                string filePath = Path.Combine(downloadsFolder, fileName);

                _cts = new CancellationTokenSource();
                using HttpResponseMessage response = await _httpClient.GetAsync(downloadUrl, HttpCompletionOption.ResponseHeadersRead, _cts.Token);
                response.EnsureSuccessStatusCode();

                // total file size in bytes
                int totalFileSize = (int)(response.Content.Headers.ContentLength ?? 0);
                ProgBar.Minimum = 0;
                ProgBar.Maximum = 100;

                using (var stream = await response.Content.ReadAsStreamAsync())
                using (var fs = new FileStream(filePath, FileMode.Create, FileAccess.Write, FileShare.None))
                {
                    byte[] buffer = new byte[81920];
                    long totalRead = 0;
                    int read;
                    var stopwatch = System.Diagnostics.Stopwatch.StartNew();

                    FileSize.Visibility = Visibility.Visible;
                    FileSize.Text = "File size: " + Math.Round(totalFileSize / 1048576.0, 2) + " MB";
                    while ((read = await stream.ReadAsync(buffer, 0, buffer.Length, _cts.Token)) > 0) // perennial loop to check status of download
                    {
                        await fs.WriteAsync(buffer, 0, read);
                        totalRead += read;

                        if (totalFileSize > 0)
                        {
                            // percent done
                            double percent = (double)totalRead / totalFileSize * 100;
                            ProgBar.Value = percent;

                            // download speed in KB/s
                            double kbPerSec = (totalRead / 1024.0) / stopwatch.Elapsed.TotalSeconds;

                            // estimate of remaining time
                            double bytesRemaining = totalFileSize - totalRead;
                            TimeSpan eta = TimeSpan.FromSeconds(bytesRemaining / (totalRead / stopwatch.Elapsed.TotalSeconds));

                            UpdateStatusText.Text = $"{percent:0}% done, {eta:hh\\:mm\\:ss} remaining ({kbPerSec:0} KB/s)";
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

        internal static async Task<string[]> GetUpdateInfo()
        {
            try
            {
                _httpClient.DefaultRequestHeaders.UserAgent.ParseAdd("SkymuUpdater");

                string url = $"https://api.github.com/repos/{Author}/{Repo}/releases/latest";
                using HttpResponseMessage response = await _httpClient.GetAsync(url);

                if (!response.IsSuccessStatusCode)
                    return new string[0];

                string json = await response.Content.ReadAsStringAsync();

                using JsonDocument doc = JsonDocument.Parse(json);

                string latestTag = doc.RootElement
                                      .GetProperty("tag_name")
                                      .GetString()
                                      ?.TrimStart('v');

                if (string.IsNullOrWhiteSpace(latestTag))
                    return new string[0];
                string currentVerStr = Properties.Settings.Default.BuildVersion;
                currentVerStr = currentVerStr.Replace("v", "");
                Version.TryParse(currentVerStr, out Version currentVer);
                latestTag = latestTag.Replace("v", "");
                if (!Version.TryParse(latestTag, out Version updateVer)) return new string[0];
                if (currentVer >= updateVer) return new string[0];

                string releaseName = doc.RootElement
                                        .GetProperty("name")
                                        .GetString() ?? string.Empty;

                string changelog = doc.RootElement
                                      .GetProperty("body")
                                      .GetString() ?? string.Empty;

                string buildName = "v" + updateVer.ToString() + " " + releaseName;

                JsonElement assets = doc.RootElement.GetProperty("assets");
                List<string> urls = new List<string>();
                foreach (JsonElement asset in assets.EnumerateArray())
                {
                    if (asset.TryGetProperty("browser_download_url", out JsonElement urlElement))
                    {
                        string downloadUrl = urlElement.GetString();
                        if (!string.IsNullOrEmpty(downloadUrl))
                            urls.Add(downloadUrl);
                    }
                }

                List<string> result = new List<string> { buildName, changelog };
                result.AddRange(urls);
                return result.ToArray();
            }
            catch (Exception ex)
            {
                return new string[2] { "UPDATE_CHECK_ERROR", ex.Message };
            }
        }
    }
}
