![Skymu Logo](Images/logo.png) 

![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/TheSkymuTeam/Skymu/total)
![GitHub watchers](https://img.shields.io/github/watchers/TheSkymuTeam/Skymu)
![GitHub repo stars](https://img.shields.io/github/stars/TheSkymuTeam/Skymu)

# What is Skymu?
Skymu is a modern multi-platform IM client that looks like classic versions of Skype, with skins perfectly resembling Skype 4, 5, 6, and 7. Officially supported messaging services include Discord, Matrix, Tox, MSNP11, and some other platforms.

![Client, chatting](Images/skymu-v0.4-chat.png) 

![Client, calling](Images/skymu-v0.4-call.png) 

# Build Guide
For this guide, you will need Git for Windows, Visual Studio 2019 (or newer) and NSIS 3 (or newer). Support will not be provided if older build tools are used. 

* [Download Git for Windows](https://git-scm.com/install/windows) and install. For the default editor, we recommend you select Notepad (or Notepad++, etc. if you have it) instead of Vim, unless of course you feel like dedicating a few days to learning how to use Vim. Stick with the default options for the other things the installer asks you.
* [Download Visual Studio 2026](https://aka.ms/vs/18/Stable/vs_community.exe) (recommended) or [download Visual Studio 2019](https://aka.ms/vs/16/release/vs_community.exe). Select the ".NET desktop development" workload in the installer. If you plan to work with forms/UserControls/.axaml files, it's highly recommended to get the Avalonia VS extension.
* [Download NSIS](https://sourceforge.net/projects/nsis/files/latest/download). Staying on the latest version is recommended.

A plugin development guide is available on the website: https://www.skymu.app/wiki/yggdrasil

## Application

Open Command Prompt, navigate to the folder you want Skymu in, and run `git clone https://github.com/TheSkymuTeam/Skymu.git` to download the repository.

<img width="559" height="190" alt="image" src="https://github.com/user-attachments/assets/6544bcbe-45e5-4348-ba60-dab1d31abab8" />

Open the `Skymu.sln` solution file with Visual Studio.

<img width="227" height="139" alt="image" src="https://github.com/user-attachments/assets/84e4b169-8adc-47c8-8926-f64f9269ff28" />
 
Select the "Debug" configuration in the action bar.

<img width="321" height="151" alt="image" src="https://github.com/user-attachments/assets/6634a935-7555-4dd7-9577-fa33f55f68a7" />

If you want to change the internal name (recommended to avoid conflicts with your existing Skymu installation!) or version, go to `Skymu/Skymu/App.xaml.cs` in the Solution Explorer pane, click to open the file, and then edit these values. Note that changing this will make the updater stop working.

<img width="812" height="553" alt="image" src="https://github.com/user-attachments/assets/eb5d0c6d-38af-4d5a-8a8e-470c658fd7e7" />

Press `Ctrl + Shift + B` to build the solution for the first time, or click "Build Solution" in the menu bar under "Build".

<img width="471" height="189" alt="image" src="https://github.com/user-attachments/assets/1b5c5cb7-9054-4369-b38e-4315c76eadcf" />

Click the play button on the action bar to run your copy of Skymu. 

<img width="333" height="68" alt="image" src="https://github.com/user-attachments/assets/32c5487d-442b-477b-b00d-c55fc0d496e5" />

If you are encountering conflicts after making your changes, click "Rebuild Solution" to clean cache and build from scratch.

<img width="422" height="105" alt="image" src="https://github.com/user-attachments/assets/8deca699-91a8-490a-be23-c8d125d0a4cf" />

## Installer
Select the "Release" configuration in the action bar and build Skymu in Visual Studio.

<img width="269" height="159" alt="image" src="https://github.com/user-attachments/assets/6a111360-33ac-48dd-bc11-fa345c3f0c1f" />

Navigate to the `NSIS` folder, right-click on `SkymuSetup-AnyCPU-Release.nsi`, and then click "Compile NSIS Script". The other scripts are intended for the Github Actions CI pipeline.

<img width="571" height="212" alt="image" src="https://github.com/user-attachments/assets/0f0b15d9-c73f-4f8a-a3c5-052c1408d4af" />

The NSIS compiler will run. After it's finished, the output log will turn green and `Skymu.Installer.AnyCPU.Release.exe` will show up in the folder; click "Test Installer" to run it.

<img width="636" height="540" alt="image" src="https://github.com/user-attachments/assets/07ef2931-fb03-4df7-acbe-c854999221fd" />

# Open-source dependencies

| Software | Author | License | Used in | Source code |
|---|---|---|---|---|
| Avalonia | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| Avalonia.Controls.WebView | Devolutions | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/Devolutions/Avalonia.Controls.WebView) |
| Avalonia.Desktop | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| Avalonia.Diagnostics | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| Avalonia.Markup.Xaml.Loader | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| Avalonia.Themes.Fluent | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| Avalonia.Themes.Simple | AvaloniaUI | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/AvaloniaUI/Avalonia) |
| BouncyCastle.Cryptography | Legion of the Bouncy Castle | [MIT](https://choosealicense.com/licenses/mit/) | Bifrost, Discord | [Repo](https://github.com/bcgit/bc-csharp) |
| c-toxcore | The TokTok team | [GPL v3](https://choosealicense.com/licenses/gpl-3.0/) | Tox | [Repo](https://github.com/toktok/c-toxcore) |
| Classic.Avalonia.Theme | BAndysc | [LGPL-2.1-only AND MIT](https://choosealicense.com/licenses/lgpl-2.1/) | Skymu | [Repo](https://github.com/BAndysc/Classic.Avalonia) |
| CommunityToolkit.Mvvm | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/CommunityToolkit/dotnet) |
| Concentus | Logan Stromberg | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/lostromb/concentus) |
| Devlooped.CredentialManager | Devlooped | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/devlooped/CredentialManager) |
| Google.Protobuf | Google | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/protocolbuffers/protobuf) |
| libopus | Xiph.Org and others (including Skype Limited) | [BSD 3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Tox | [Repo](https://github.com/xiph/opus) |
| libsodium | jedisct1 | [ISC](https://choosealicense.com/licenses/isc/) | Tox | [Repo](https://github.com/jedisct1/libsodium) |
| Markdig | Alexandre Mutel | [BSD-2-Clause](https://choosealicense.com/licenses/bsd-2-clause/) | Skymu | [Repo](https://github.com/xoofx/markdig) |
| Microsoft.CSharp | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Yggdrasil | [Repo](https://github.com/dotnet/runtime) |
| Microsoft.Data.Sqlite | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Skype DB Browser | [Repo](https://github.com/dotnet/efcore) |
| NAudio.Core | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Skymu, Stub, Tox | [Repo](https://github.com/naudio/NAudio) |
| NAudio.WinMM | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Stub, Tox | [Repo](https://github.com/naudio/NAudio) |
| NLayer.NAudioSupport | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Stub | [Repo](https://github.com/naudio/NLayer) |
| pthreadVC3 | rosspjohnson | [Apache-2.0](https://choosealicense.com/licenses/apache-2.0/) | Tox | [Sourceforge](https://sourceforge.net/projects/pthreads4w/) |
| QRCoder | Shane32 | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/Shane32/QRCoder) |
| SharpZipLib | ICSharpCode | [MIT](https://choosealicense.com/licenses/mit/) | Discord | [Repo](https://github.com/icsharpcode/SharpZipLib) |
| Silk.NET.OpenAL | Silk.NET team | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/dotnet/Silk.NET) |
| System.Security.Cryptography.ProtectedData | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/dotnet/dotnet) |
| System.Text.Json | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Chat Completions, Discord, Matrix, Skymu | [Repo](https://github.com/dotnet/dotnet) |
| System.Threading.Channels | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Chat Completions, Discord, Stub, Tox | [Repo](https://github.com/dotnet/runtime) |
