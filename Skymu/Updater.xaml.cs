using Microsoft.Windows.Themes;
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

namespace Skymu
{
    /// <summary>
    /// Interaction logic for Updater.xaml
    /// </summary>
    public partial class Updater : Window
    {
        private Action BLAction;
        private CancellationTokenSource _cts;
        private const string Author = "TheSkymuTeam";
        private string brand = Properties.Settings.Default.BrandingName;
        private string[] updateInfo;
        private const string Repo = "Skymu-Public";

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
            BLAction = () => InitiateUpdate();
            UpdateHandler(manual);
        }

        public async void UpdateHandler(bool manual)
        {
            updateInfo = await GetUpdateInfo();
            if (updateInfo.Length > 0)
            {
                Header.Text = "Update available: " + updateInfo[0];
                string changelog = updateInfo[1];
                if (!string.IsNullOrEmpty(changelog))
                {
                    changelog = changelog.Replace("*", Properties.Settings.Default.ListDelimiter);
                    Description.Text = "There's a new version of " + brand + " available. Update now to get the latest features and improvements. Changelog:"
                                       + Environment.NewLine + Environment.NewLine
                                       + changelog;
                }
                else
                {
                    Description.Text = "There's a new version of " + brand + " available. Update now to get the latest features and improvements.";
                }
                ShowDialog();
            }
            else
            {
                if (manual) new Dialog(Dialog.Type.PackageCheckmark, "You already have the latest version of " + brand + " installed.", "Update checker").ShowDialog();
                this.Close();
            }

        }

        public void SetErrorDialog(string error)
        {
            Header.Text = "Error while downloading update";
            DialogImage.DefaultIndex = 17;
            Description.Text = Properties.Settings.Default.BrandingName + " failed to download the update. Error: " + error;
            ProgressGrid.Visibility = Visibility.Collapsed;
            BLAction = () => InitiateUpdate();
            ButtonLeft.Content = "Retry";
            ButtonRight.Content = "Close";
        }

        public async void InitiateUpdate()
        {
            BLAction = () => Hide();
            ButtonLeft.Content = "Hide";
            ButtonRight.Content = "Cancel";
            DialogImage.DefaultIndex = 16;
            Header.Text = "Downloading...";
            Description.Text = "Please wait while an update for " + brand + " is being downloaded.";
            UpdateStatusText.Text = "Initializing...";
            ProgressGrid.Visibility = Visibility.Visible;

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

                Header.Text = "Download complete";
                Description.Text = "The release package has been saved to the Downloads folder.";
                UpdateStatusText.Text = "100% done, 00:00:00 remaining";
                ButtonLeft.Content = "Open file";
                ButtonRight.Content = "Close";
                ProcessStartInfo psi = new ProcessStartInfo(filePath)
                {
                    UseShellExecute = true
                };
                BLAction = () =>
                {
                    try
                    {
                        Process.Start(new ProcessStartInfo(filePath) { UseShellExecute = true });
                    }
                    catch (Exception ex)
                    {
                        new Dialog(Dialog.Type.PackageWarning, ex.Message, "Cannot open file").ShowDialog();
                    }
                    Close();
                };
                ProgBar.Value = 100;
            }
            catch (Exception ex)
            {
                SetErrorDialog(ex.Message);
            }
        }

        internal static async Task<string[]> GetUpdateInfo()
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


        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            _cts?.Cancel();
            base.OnClosing(e);
        }

        private void bLClick(object sender, RoutedEventArgs e) { BLAction.Invoke(); }
        private void bRClick(object sender, RoutedEventArgs e) { this.Close(); }

    }

}
