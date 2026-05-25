![Skymu Logo](Images/logo.png) 

# What is Skymu?
Skymu is a modern multiprotocol IM client that looks like classic versions of Skype, with skins perfectly resembling Skype 5, 6, and 7. Currently supported messaging services include Discord, Matrix, Tox, and MSNP11.

# Build Guide

Use any version of Visual Studio from 2019 Community (recommended) onwards. Build Yggdrasil (formerly MiddleMan) first and the solution afterwards.

![Client, chatting](Images/skymu-v0.4-chat.png) 

![Client, calling](Images/skymu-v0.4-call.png) 

# How to create the installer

* Install NSIS (Nullsoft Scriptable Install System) on your computer, using the latest version is highly recommended
* Build Skymu in the "Release" configuration
* Go to the NSIS directory and right click the script you want to use (depending on whether you want a standard installer or beta installer) and click "Compile NSIS Script"

# Open-source software used

| Software | Author | License | Used in | Source code |
|---|---|---|---|---|
| BouncyCastle.Cryptography | Legion of the Bouncy Castle | [Apache-2.0 AND MIT](https://choosealicense.com/licenses/apache-2.0/) | Discord, Yggdrasil | [Repo](https://github.com/bcgit/bc-csharp) |
| c-toxcore | The TokTok team | [GPL v3](https://choosealicense.com/licenses/gpl-3.0/) | Tox | [Repo](https://github.com/toktok/c-toxcore) |
| CommunityToolkit.Mvvm | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/CommunityToolkit/dotnet) |
| Concentus | Logan Stromberg | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/lostromb/concentus) |
| Google.Protobuf | Google | [BSD-3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Discord | [Repo](https://github.com/protocolbuffers/protobuf) |
| libopus | Xiph.Org and others (including Skype Limited) | [BSD 3-Clause](https://choosealicense.com/licenses/bsd-3-clause/) | Tox | [Repo](https://github.com/xiph/opus) |
| libsodium | jedisct1 | [ISC](https://choosealicense.com/licenses/isc/) | Tox | [Repo](https://github.com/jedisct1/libsodium) |
| Markdig | Alexandre Mutel | [BSD-2-Clause](https://choosealicense.com/licenses/bsd-2-clause/) | Skymu | [Repo](https://github.com/xoofx/markdig) |
| Microsoft.CSharp | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Yggdrasil | [Repo](https://github.com/dotnet/runtime) |
| Microsoft.Data.Sqlite | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Skype DB Browser | [Repo](https://github.com/dotnet/dotnet) |
| NAudio.Core | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Stub, Tox | [Repo](https://github.com/naudio/NAudio) |
| NAudio.WinMM | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Discord, Stub, Tox | [Repo](https://github.com/naudio/NAudio) |
| NLayer.NAudioSupport | Mark Heath | [MIT](https://choosealicense.com/licenses/mit/) | Stub | [Repo](https://github.com/naudio/NLayer) |
| pthreadVC3 | rosspjohnson | [Apache-2.0](https://choosealicense.com/licenses/apache-2.0/) | Tox | [Sourceforge](https://sourceforge.net/projects/pthreads4w/) |
| QRCoder | Shane32 | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/Shane32/QRCoder) |
| SharpZipLib | ICSharpCode | [MIT](https://choosealicense.com/licenses/mit/) | Discord | [Repo](https://github.com/icsharpcode/SharpZipLib) |
| System.Net.WebSockets.Client.Managed | PingmanTools | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Discord, Matrix | [Repo](https://github.com/PingmanTools/System.Net.WebSockets.Client.Managed) |
| System.Runtime.CompilerServices.Unsafe | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/dotnet/runtime) |
| System.Text.Json | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Discord, Matrix | [Repo](https://github.com/dotnet/dotnet) |
| System.Threading.Channels | Microsoft | [MIT](https://choosealicense.com/licenses/mit/) | Skymu, Discord, Stub, Tox | [Repo](https://github.com/dotnet/dotnet) |
| TrayIcon | nullsoftware | [MIT](https://choosealicense.com/licenses/mit/) | Skymu | [Repo](https://github.com/nullsoftware/TrayIcon) |

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/TheSkymuTeam/Skymu)
