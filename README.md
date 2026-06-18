![Skymu Logo](Images/logo.png) 

![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/TheSkymuTeam/Skymu/total)
![GitHub contributors](https://img.shields.io/github/contributors-anon/TheSkymuTeam/Skymu)
![GitHub Created At](https://img.shields.io/github/created-at/TheSkymuTeam/Skymu)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/TheSkymuTeam/Skymu)
![GitHub watchers](https://img.shields.io/github/watchers/TheSkymuTeam/Skymu)
![GitHub repo stars](https://img.shields.io/github/stars/TheSkymuTeam/Skymu)

# What is Skymu?
Skymu is a modern multi-platform IM client that looks like classic versions of Skype, with skins perfectly resembling Skype 4, 5, 6, and 7. Officially supported messaging services include Matrix, Tox, MSNP11, and some other platforms.

![Client, chatting](Images/skymu-v0.4-chat.png) 

![Client, calling](Images/skymu-v0.4-call.png) 

# Build Guide
For this guide, you will need Git for Windows, Visual Studio 2019 (or newer) and NSIS 3 (or newer). Support will not be provided if older build tools are used. 

* [Download Git for Windows](https://git-scm.com/install/windows) and install. For the default editor, we recommend you select Notepad (or Notepad++, etc. if you have it) instead of Vim, unless of course you feel like dedicating a few days to learning how to use Vim. Stick with the default options for the other things the installer asks you.
* [Download Visual Studio 2019](https://aka.ms/vs/16/release/vs_community.exe) (recommended) or [download Visual Studio 2026](https://aka.ms/vs/18/Stable/vs_community.exe). Select ".NET desktop development" in the installer.
* [Download NSIS](https://sourceforge.net/projects/nsis/files/latest/download)

## Application
* Open Command Prompt, navigate to the folder you want Skymu in, and run `git clone https://github.com/TheSkymuTeam/Skymu.git` to download the repository.
<img width="559" height="190" alt="image" src="https://github.com/user-attachments/assets/6544bcbe-45e5-4348-ba60-dab1d31abab8" />

* Open the `Skymu.sln` solution file with Visual Studio.
 <img width="227" height="139" alt="image" src="https://github.com/user-attachments/assets/84e4b169-8adc-47c8-8926-f64f9269ff28" />
 
* Select the "Debug" configuration in the action bar.
<img width="323" height="142" alt="image" src="https://github.com/user-attachments/assets/13bf677b-70be-46e7-bdc6-4138d19c6272" />

* If you want to change the internal name (recommended to avoid conflicts with your existing Skymu installation!) or version, go to Skymu -> App.xaml.cs in the Solution Explorer pane, click to open the file, and then edit these values. Note that changing this will make the updater stop working.
<img width="555" height="335" alt="image" src="https://github.com/user-attachments/assets/af6029f8-20c7-40c3-bada-0b2bf98ee1e7" />

* Press `Ctrl + Shift + B` to build the solution for the first time, or click "Build Solution" in the menu bar under "Build". *Notice for advanced users:* Both .NET Core and .NET Framework builds of Skymu are built at the same time and can be found in `/Skymu/bin/Skymu.Core` and `/Skymu/bin/Skymu.Legacy` respectively.
 <img width="403" height="183" alt="image" src="https://github.com/user-attachments/assets/19b70367-21a5-4388-81a5-a521818d4fba" />
 
* Click the play button on the action bar to run your copy of Skymu. 
<img width="184" height="78" alt="image" src="https://github.com/user-attachments/assets/b46f5c8b-08c5-4e18-b3cd-05c7585122b2" />

* If you are encountering conflicts after making your changes, click "Rebuild Solution" to clean cache and build from scratch.
<img width="351" height="96" alt="image" src="https://github.com/user-attachments/assets/a3dc5ce0-c6aa-4454-ac6d-b04f790d3335" />

## Installer
* Select the "Release" configuration in the action bar and build Skymu in Visual Studio.
<img width="207" height="137" alt="image" src="https://github.com/user-attachments/assets/c42e4a0c-9341-4e9c-900c-1c07a18df647" />

* Navigate to the `NSIS` folder, right-click on the type of installer you want to build, and then click "Compile NSIS Script". SkymuSetup.nsi is for the standard installer, SkymuBetaSetup.nsi is for the beta installer, both are functionally the same and differ only in appearance.
<img width="362" height="135" alt="image" src="https://github.com/user-attachments/assets/82f484dc-3a03-4b9b-abc0-1c56d9b1bfca" />

* The NSIS compiler will run. After it's finished, the output log will turn green and `Skymu Installer.exe` will show up in the folder; click "Test Installer" to run it.
<img width="636" height="540" alt="image" src="https://github.com/user-attachments/assets/07ef2931-fb03-4df7-acbe-c854999221fd" />

# Open-source software used

| Software | Author | License | Used in | Source code |
|---|---|---|---|---|
| BouncyCastle.Cryptography | Legion of the Bouncy Castle | [Apache-2.0 AND MIT](https://choosealicense.com/licenses/apache-2.0/) | Yggdrasil, Discord | [Repo](https://github.com/bcgit/bc-csharp) |
| c-toxcore | The TokTok team | [GPL v3](https://choosealicense.com/licenses/gpl-3.0/) | Tox | [Repo](https://github.com/toktok/c-toxcore) |
| CommunityToolkit.Mvvm | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/CommunityToolkit/dotnet) |
| Concentus | Logan Stromberg | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/lostromb/concentus) |
| Google.Protobuf | Google | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/protocolbuffers/protobuf) |
| libopus | Xiph.Org and others (including Skype Limited) | [BSD 3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Tox | [Repo](https://github.com/xiph/opus) |
| libsodium | jedisct1 | [ISC](https://choosealicense.com/licenses/isc/) | Tox | [Repo](https://github.com/jedisct1/libsodium) |
| Markdig | Alexandre Mutel | [BSD-2-Clause](https://choosealicense.com/licenses/bsd-2-clause/) | Skymu | [Repo](https://github.com/xoofx/markdig) |
| Microsoft.CSharp | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Yggdrasil, Discord | [Repo](https://github.com/dotnet/runtime) |
| Microsoft.Data.Sqlite | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Skype DB Browser | [Repo](https://github.com/dotnet/dotnet) |
| NAudio.Core | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Stub, Tox, Discord | [Repo](https://github.com/naudio/NAudio) |
| NAudio.WinMM | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Stub, Tox, Discord | [Repo](https://github.com/naudio/NAudio) |
| NLayer.NAudioSupport | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Stub | [Repo](https://github.com/naudio/NLayer) |
| pthreadVC3 | rosspjohnson | [Apache-2.0](https://choosealicense.com/licenses/apache-2.0/) | Tox | [Sourceforge](https://sourceforge.net/projects/pthreads4w/) |
| QRCoder | Shane32 | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/Shane32/QRCoder) |
| SharpZipLib | ICSharpCode | [MIT](https://choosealicense.com/licenses/mit/) | Discord | [Repo](https://github.com/icsharpcode/SharpZipLib) |
| System.Net.WebSockets.Client.Managed | PingmanTools | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Matrix, Discord | [Repo](https://github.com/PingmanTools/System.Net.WebSockets.Client.Managed) |
| System.Runtime.CompilerServices.Unsafe | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/dotnet/runtime) |
| System.Text.Json | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Matrix, Discord | [Repo](https://github.com/dotnet/dotnet) |
| System.Threading.Channels | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Stub, Tox, Discord | [Repo](https://github.com/dotnet/dotnet) |
