![Skymu Logo](Images/logo.png) 

# Build Guide

Use any version of Visual Studio from 2019 Community (recommended) onwards. Build MiddleMan first and the solution afterwards.

Be warned, every project has to be set to build as either x86 or x64. Any CPU is not possible due to native code dependencies (the SQLite DLL)

Tox plugin requires Plugins/Tox/x(arch)/*.dll to be copied over to the build output's Plugins folder.

![Client, chatting](Images/skymu-v0.4-chat.png) 

![Client, calling](Images/skymu-v0.4-call.png) 

# How to create the installer

* Install NSIS (Nullsoft Scriptable Install System) on your computer
* Build Skymu in the "Release, x86" configuration (Important!)
* Go to the NSIS directory and right click script.nsi and click "Compile NSIS Script"

# Open-source software used

| Software | Version | License | Source code |
|---|---|---|---|
| CommunityToolkit.Mvvm | 8.4.0 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/CommunityToolkit/dotnet) |
| Markdig | 1.1.0 | [BSD-2-Clause](https://choosealicense.com/licenses/bsd-2-clause/) | [GitHub repository](https://github.com/xoofx/markdig) |
| Microsoft.CSharp | 4.7.0 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/dotnet/runtime) |
| Microsoft.Data.Sqlite | 10.0.3 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/dotnet/dotnet) |
| Google.Protobuf | 3.14.0 | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | [GitHub repository](https://github.com/protocolbuffers/protobuf) |
| QRCoder | 1.7.0 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/Shane32/QRCoder) |
| SharpZipLib | 1.4.2 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/icsharpcode/SharpZipLib) |
| System.Net.WebSockets.Client.Managed | 1.0.22 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/PingmanTools/System.Net.WebSockets.Client.Managed) |
| System.Runtime.CompilerServices.Unsafe | 6.1.2 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/dotnet/runtime) |
| System.Text.Json | 10.0.3 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/dotnet/dotnet) |
| System.Threading.Channels | 10.0.3 | [MIT](https://choosealicense.com/licenses/mit/) | [GitHub repository](https://github.com/dotnet/dotnet) |

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/TheSkymuTeam/Skymu)
