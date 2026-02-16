/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace XMPP.Classes
{
    public class XMPPClient : IDisposable
    {
        private TcpClient _tcpClient;
        private NetworkStream _stream;
        private readonly string _jid;
        private readonly string _password;
        private string _server;
        private int _port = 5222; // Default XMPP port
        private string _resource = "Skymu";
        
        private bool _isConnected;
        private bool _isAuthenticated;
        private CancellationTokenSource _readCancellationTokenSource;
        private Task _readTask;

        // Storage
        private readonly List<RosterItem> _roster = new List<RosterItem>();
        private readonly List<MessageItem> _messageHistory = new List<MessageItem>();
        private readonly HashSet<string> _recentConversations = new HashSet<string>();
        private readonly Dictionary<string, UserConnectionStatus> _presenceCache = new Dictionary<string, UserConnectionStatus>();

        // Events
        public event EventHandler<bool> OnConnectionStateChanged;
        public event EventHandler<XMPPMessageEventArgs> OnMessageReceived;
        public event EventHandler<XMPPPresenceEventArgs> OnPresenceReceived;
        public event EventHandler OnRosterReceived;
        public event EventHandler<XMPPComposingEventArgs> OnComposingStateChanged;
        public event EventHandler<string> OnError;

        // Properties
        public bool IsConnected => _isConnected;
        public bool IsAuthenticated => _isAuthenticated;
        public string CurrentJID { get; private set; }
        public UserConnectionStatus CurrentPresence { get; private set; } = UserConnectionStatus.Offline;

        public XMPPClient(string jid, string password)
        {
            _jid = jid;
            _password = password;
            
            // Parse JID to get server
            var parts = jid.Split('@');
            if (parts.Length == 2)
            {
                _server = parts[1];
            }
            else
            {
                throw new ArgumentException("Invalid JID format. Expected format: user@server.com");
            }
        }

        public async Task<bool> ConnectAsync(int timeoutMs = 10000)
        {
            try
            {
                _tcpClient = new TcpClient();
                
                var connectTask = _tcpClient.ConnectAsync(_server, _port);
                var timeoutTask = Task.Delay(timeoutMs);

                var completedTask = await Task.WhenAny(connectTask, timeoutTask);

                if (completedTask == timeoutTask)
                {
                    _tcpClient?.Close();
                    return false;
                }

                _stream = _tcpClient.GetStream();
                _isConnected = true;
                OnConnectionStateChanged?.Invoke(this, true);

                // Start reading stream
                _readCancellationTokenSource = new CancellationTokenSource();
                _readTask = Task.Run(() => ReadStreamAsync(_readCancellationTokenSource.Token));

                // Send initial stream header
                await SendStreamHeaderAsync();

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Connection error: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> AuthenticateAsync()
        {
            try
            {
                // XMPP SASL PLAIN authentication
                string authString = $"\0{_jid}\0{_password}";
                string base64Auth = Convert.ToBase64String(Encoding.UTF8.GetBytes(authString));

                string authStanza = $"<auth xmlns='urn:ietf:params:xml:ns:xmpp-sasl' mechanism='PLAIN'>{base64Auth}</auth>";
                await SendAsync(authStanza);

                // Wait for authentication response (simplified - in real implementation, would parse response)
                await Task.Delay(500);

                // After successful auth, bind resource and establish session
                await BindResourceAsync();
                await EstablishSessionAsync();

                _isAuthenticated = true;
                CurrentJID = $"{_jid}/{_resource}";

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Authentication error: {ex.Message}");
                return false;
            }
        }

        private async Task SendStreamHeaderAsync()
        {
            string streamHeader = $"<?xml version='1.0'?><stream:stream to='{_server}' xmlns='jabber:client' xmlns:stream='http://etherx.jabber.org/streams' version='1.0'>";
            await SendAsync(streamHeader);
        }

        private async Task BindResourceAsync()
        {
            string bindStanza = $"<iq type='set' id='bind_1'><bind xmlns='urn:ietf:params:xml:ns:xmpp-bind'><resource>{_resource}</resource></bind></iq>";
            await SendAsync(bindStanza);
            await Task.Delay(300);
        }

        private async Task EstablishSessionAsync()
        {
            string sessionStanza = "<iq type='set' id='session_1'><session xmlns='urn:ietf:params:xml:ns:xmpp-session'/></iq>";
            await SendAsync(sessionStanza);
            await Task.Delay(300);
        }

        public async Task SendPresenceAsync(UserConnectionStatus status, string statusMessage = null)
        {
            string show = status switch
            {
                UserConnectionStatus.Away => "away",
                UserConnectionStatus.DoNotDisturb => "dnd",
                UserConnectionStatus.Invisible => "xa",
                _ => ""
            };

            string presenceStanza = "<presence>";
            
            if (!string.IsNullOrEmpty(show))
            {
                presenceStanza += $"<show>{show}</show>";
            }
            
            if (!string.IsNullOrEmpty(statusMessage))
            {
                presenceStanza += $"<status>{EscapeXml(statusMessage)}</status>";
            }

            presenceStanza += "</presence>";

            await SendAsync(presenceStanza);
            CurrentPresence = status;
        }

        public async Task RequestRosterAsync()
        {
            string rosterRequest = "<iq type='get' id='roster_1'><query xmlns='jabber:iq:roster'/></iq>";
            await SendAsync(rosterRequest);
            await Task.Delay(500); // Wait for roster response
        }

        public async Task<bool> SendMessageAsync(string toJid, string body)
        {
            try
            {
                string messageId = Guid.NewGuid().ToString();
                string messageStanza = $"<message type='chat' to='{EscapeXml(toJid)}' id='{messageId}'>" +
                                     $"<body>{EscapeXml(body)}</body>" +
                                     $"<active xmlns='http://jabber.org/protocol/chatstates'/>" +
                                     $"</message>";

                await SendAsync(messageStanza);

                // Add to message history
                var messageItem = new MessageItem(
                    messageId,
                    _jid,
                    ExtractUsername(_jid),
                    DateTime.Now,
                    body,
                    null,
                    null,
                    null,
                    null,
                    toJid
                );

                _messageHistory.Add(messageItem);
                _recentConversations.Add(toJid);

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Send message error: {ex.Message}");
                return false;
            }
        }

        public async Task SendComposingStateAsync(string toJid, bool isComposing)
        {
            string state = isComposing ? "composing" : "active";
            string chatStateStanza = $"<message type='chat' to='{EscapeXml(toJid)}'>" +
                                   $"<{state} xmlns='http://jabber.org/protocol/chatstates'/>" +
                                   $"</message>";
            await SendAsync(chatStateStanza);
        }

        public List<RosterItem> GetRoster()
        {
            return new List<RosterItem>(_roster);
        }

        public List<string> GetRecentConversations()
        {
            return _recentConversations.ToList();
        }

        public async Task<List<MessageItem>> GetMessageHistoryAsync(string jid, int limit)
        {
            // Return stored message history for this JID
            return _messageHistory
                .Where(m => m.SentByID == jid || m.ChannelID == jid)
                .OrderBy(m => m.Time)
                .Take(limit)
                .ToList();
        }

        private async Task ReadStreamAsync(CancellationToken cancellationToken)
        {
            byte[] buffer = new byte[8192];
            StringBuilder xmlBuffer = new StringBuilder();

            try
            {
                while (!cancellationToken.IsCancellationRequested && _isConnected)
                {
                    if (_stream.DataAvailable)
                    {
                        int bytesRead = await _stream.ReadAsync(buffer, 0, buffer.Length, cancellationToken);
                        
                        if (bytesRead > 0)
                        {
                            string data = Encoding.UTF8.GetString(buffer, 0, bytesRead);
                            xmlBuffer.Append(data);

                            // Try to parse complete stanzas
                            ProcessXmlBuffer(xmlBuffer);
                        }
                    }
                    else
                    {
                        await Task.Delay(50, cancellationToken);
                    }
                }
            }
            catch (OperationCanceledException)
            {
                // Expected when cancellation is requested
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Read stream error: {ex.Message}");
                _isConnected = false;
                OnConnectionStateChanged?.Invoke(this, false);
            }
        }

        private void ProcessXmlBuffer(StringBuilder xmlBuffer)
        {
            string xmlString = xmlBuffer.ToString();

            try
            {
                // Look for complete stanzas (simplified parsing)
                if (xmlString.Contains("<message") && xmlString.Contains("</message>"))
                {
                    int startIndex = xmlString.IndexOf("<message");
                    int endIndex = xmlString.IndexOf("</message>") + "</message>".Length;
                    
                    if (startIndex >= 0 && endIndex > startIndex)
                    {
                        string messageStanza = xmlString.Substring(startIndex, endIndex - startIndex);
                        ProcessMessageStanza(messageStanza);
                        
                        xmlBuffer.Remove(startIndex, endIndex - startIndex);
                    }
                }

                if (xmlString.Contains("<presence") && xmlString.Contains("</presence>"))
                {
                    int startIndex = xmlString.IndexOf("<presence");
                    int endIndex = xmlString.IndexOf("</presence>") + "</presence>".Length;
                    
                    if (startIndex >= 0 && endIndex > startIndex)
                    {
                        string presenceStanza = xmlString.Substring(startIndex, endIndex - startIndex);
                        ProcessPresenceStanza(presenceStanza);
                        
                        xmlBuffer.Remove(startIndex, endIndex - startIndex);
                    }
                }

                if (xmlString.Contains("<iq") && xmlString.Contains("</iq>"))
                {
                    int startIndex = xmlString.IndexOf("<iq");
                    int endIndex = xmlString.IndexOf("</iq>") + "</iq>".Length;
                    
                    if (startIndex >= 0 && endIndex > startIndex)
                    {
                        string iqStanza = xmlString.Substring(startIndex, endIndex - startIndex);
                        ProcessIqStanza(iqStanza);
                        
                        xmlBuffer.Remove(startIndex, endIndex - startIndex);
                    }
                }

                // Clear very old data to prevent buffer overflow
                if (xmlBuffer.Length > 50000)
                {
                    xmlBuffer.Clear();
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"XML processing error: {ex.Message}");
            }
        }

        private void ProcessMessageStanza(string stanza)
        {
            try
            {
                XDocument doc = XDocument.Parse(stanza);
                XElement message = doc.Root;

                string from = message.Attribute("from")?.Value;
                string type = message.Attribute("type")?.Value;
                string id = message.Attribute("id")?.Value ?? Guid.NewGuid().ToString();

                if (string.IsNullOrEmpty(from) || type == "error")
                    return;

                // Extract bare JID (without resource)
                string bareJid = ExtractBareJid(from);

                // Check for composing state
                var composing = message.Element(XName.Get("composing", "http://jabber.org/protocol/chatstates"));
                var active = message.Element(XName.Get("active", "http://jabber.org/protocol/chatstates"));
                var paused = message.Element(XName.Get("paused", "http://jabber.org/protocol/chatstates"));

                if (composing != null)
                {
                    OnComposingStateChanged?.Invoke(this, new XMPPComposingEventArgs
                    {
                        FromJid = bareJid,
                        DisplayName = ExtractUsername(bareJid),
                        IsComposing = true
                    });
                    return;
                }

                if (active != null || paused != null)
                {
                    OnComposingStateChanged?.Invoke(this, new XMPPComposingEventArgs
                    {
                        FromJid = bareJid,
                        DisplayName = ExtractUsername(bareJid),
                        IsComposing = false
                    });
                }

                // Check for message body
                XElement body = message.Element("body");
                if (body == null || string.IsNullOrEmpty(body.Value))
                    return;

                string messageBody = body.Value;
                string displayName = ExtractUsername(bareJid);

                var messageItem = new MessageItem(
                    id,
                    bareJid,
                    displayName,
                    DateTime.Now,
                    messageBody,
                    null,
                    null,
                    null,
                    null,
                    bareJid
                );

                _messageHistory.Add(messageItem);
                _recentConversations.Add(bareJid);

                OnMessageReceived?.Invoke(this, new XMPPMessageEventArgs
                {
                    MessageId = id,
                    FromJid = bareJid,
                    FromDisplayName = displayName,
                    Body = messageBody,
                    Timestamp = DateTime.Now,
                    Media = null
                });
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Message processing error: {ex.Message}");
            }
        }

        private void ProcessPresenceStanza(string stanza)
        {
            try
            {
                XDocument doc = XDocument.Parse(stanza);
                XElement presence = doc.Root;

                string from = presence.Attribute("from")?.Value;
                if (string.IsNullOrEmpty(from))
                    return;

                string bareJid = ExtractBareJid(from);
                string type = presence.Attribute("type")?.Value;

                UserConnectionStatus status;
                if (type == "unavailable")
                {
                    status = UserConnectionStatus.Offline;
                }
                else
                {
                    XElement show = presence.Element("show");
                    status = show?.Value switch
                    {
                        "away" => UserConnectionStatus.Away,
                        "dnd" => UserConnectionStatus.DoNotDisturb,
                        "xa" => UserConnectionStatus.Invisible,
                        _ => UserConnectionStatus.Online
                    };
                }

                XElement statusElement = presence.Element("status");
                string statusMessage = statusElement?.Value;

                _presenceCache[bareJid] = status;

                // Update roster item
                var rosterItem = _roster.FirstOrDefault(r => r.Jid == bareJid);
                if (rosterItem != null)
                {
                    rosterItem.Presence = status;
                    rosterItem.StatusMessage = statusMessage;
                }

                OnPresenceReceived?.Invoke(this, new XMPPPresenceEventArgs
                {
                    FromJid = bareJid,
                    Status = status,
                    StatusMessage = statusMessage
                });
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Presence processing error: {ex.Message}");
            }
        }

        private void ProcessIqStanza(string stanza)
        {
            try
            {
                XDocument doc = XDocument.Parse(stanza);
                XElement iq = doc.Root;

                string type = iq.Attribute("type")?.Value;
                
                // Check if this is a roster response
                XElement query = iq.Element(XName.Get("query", "jabber:iq:roster"));
                if (query != null && type == "result")
                {
                    _roster.Clear();

                    foreach (XElement item in query.Elements(XName.Get("item", "jabber:iq:roster")))
                    {
                        string jid = item.Attribute("jid")?.Value;
                        string name = item.Attribute("name")?.Value;
                        string subscription = item.Attribute("subscription")?.Value;

                        if (!string.IsNullOrEmpty(jid))
                        {
                            _roster.Add(new RosterItem
                            {
                                Jid = jid,
                                Name = name,
                                Subscription = subscription,
                                Presence = _presenceCache.ContainsKey(jid) ? _presenceCache[jid] : UserConnectionStatus.Offline
                            });
                        }
                    }

                    OnRosterReceived?.Invoke(this, EventArgs.Empty);
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"IQ processing error: {ex.Message}");
            }
        }

        private async Task SendAsync(string data)
        {
            if (_stream == null || !_isConnected)
                return;

            try
            {
                byte[] bytes = Encoding.UTF8.GetBytes(data);
                await _stream.WriteAsync(bytes, 0, bytes.Length);
                await _stream.FlushAsync();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, $"Send error: {ex.Message}");
                _isConnected = false;
                OnConnectionStateChanged?.Invoke(this, false);
            }
        }

        public void Disconnect()
        {
            try
            {
                _readCancellationTokenSource?.Cancel();
                _readTask?.Wait(1000);

                if (_isConnected && _stream != null)
                {
                    string closeStream = "</stream:stream>";
                    byte[] bytes = Encoding.UTF8.GetBytes(closeStream);
                    _stream.Write(bytes, 0, bytes.Length);
                }

                _stream?.Close();
                _tcpClient?.Close();

                _isConnected = false;
                _isAuthenticated = false;
                OnConnectionStateChanged?.Invoke(this, false);
            }
            catch
            {
                // Ignore errors during disconnect
            }
        }

        private string ExtractBareJid(string fullJid)
        {
            int resourceIndex = fullJid.IndexOf('/');
            return resourceIndex >= 0 ? fullJid.Substring(0, resourceIndex) : fullJid;
        }

        private string ExtractUsername(string jid)
        {
            string bareJid = ExtractBareJid(jid);
            int atIndex = bareJid.IndexOf('@');
            return atIndex >= 0 ? bareJid.Substring(0, atIndex) : bareJid;
        }

        private string EscapeXml(string text)
        {
            if (string.IsNullOrEmpty(text))
                return text;

            return text
                .Replace("&", "&amp;")
                .Replace("<", "&lt;")
                .Replace(">", "&gt;")
                .Replace("\"", "&quot;")
                .Replace("'", "&apos;");
        }

        public void Dispose()
        {
            Disconnect();
            _readCancellationTokenSource?.Dispose();
            _stream?.Dispose();
            _tcpClient?.Dispose();
        }
    }

    // Supporting classes

    public class RosterItem
    {
        public string Jid { get; set; }
        public string Name { get; set; }
        public string Subscription { get; set; }
        public UserConnectionStatus Presence { get; set; }
        public string StatusMessage { get; set; }
    }

    public class XMPPMessageEventArgs : EventArgs
    {
        public string MessageId { get; set; }
        public string FromJid { get; set; }
        public string FromDisplayName { get; set; }
        public string Body { get; set; }
        public DateTime Timestamp { get; set; }
        public byte[] Media { get; set; }
    }

    public class XMPPPresenceEventArgs : EventArgs
    {
        public string FromJid { get; set; }
        public UserConnectionStatus Status { get; set; }
        public string StatusMessage { get; set; }
    }

    public class XMPPComposingEventArgs : EventArgs
    {
        public string FromJid { get; set; }
        public string DisplayName { get; set; }
        public bool IsComposing { get; set; }
    }
}