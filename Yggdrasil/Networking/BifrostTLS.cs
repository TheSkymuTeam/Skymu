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
// BifrostTLS owns raw socket creation and the Bouncy Castle
// TLS handshake. Both BifrostEngine and BifrostWebSocket
// call OpenAsync() to get a ready-to-use Stream, then layer
// their own protocol on top of it. Truly based
/*==========================================================*/

using Org.BouncyCastle.Security;
using Org.BouncyCastle.Tls;
using Org.BouncyCastle.Tls.Crypto.Impl.BC;
using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Threading.Tasks;

namespace Yggdrasil.Networking
{
    internal static class BifrostTLS
    {
        public static async Task<Stream> OpenAsync(
            string host, int port, bool isHttps, CancellationToken ct)
        {
            Debug.WriteLine($"[BIFROST-TLS] Opening connection to {host}:{port}");

            var socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp)
            {
                NoDelay = true
            };

            var connectTcs = new TaskCompletionSource<bool>();
            using (ct.Register(() => connectTcs.TrySetCanceled()))
            {
                var ar = socket.BeginConnect(host, port, null, null);
                var connectTask = Task.Factory.FromAsync(ar, socket.EndConnect);

                if (await Task.WhenAny(connectTask, connectTcs.Task).ConfigureAwait(false)
                    == connectTcs.Task)
                {
                    socket.Dispose();
                    ct.ThrowIfCancellationRequested();
                }

                await connectTask.ConfigureAwait(false);
            }

            Debug.WriteLine($"[BIFROST-TLS] TCP connected to {host}:{port}");

            Stream stream = new NetworkStream(socket, ownsSocket: true);

            if (!isHttps)
                return stream;

            var protocol = new TlsClientProtocol(stream);

            await Task.Run(() =>
            {
                ct.ThrowIfCancellationRequested();
                protocol.Connect(new BifrostTLSClient(host));
                Debug.WriteLine($"[BIFROST-TLS] TLS handshake complete with {host}");
            }, ct).ConfigureAwait(false);

            return protocol.Stream;
        }
    }

    internal sealed class BifrostTLSClient : DefaultTlsClient
    {
        private readonly string _host;

        public BifrostTLSClient(string host)
            : base(new BcTlsCrypto(new SecureRandom()))
        {
            _host = host;
        }

        public override ProtocolVersion[] GetProtocolVersions()
        {
            var versions = base.GetProtocolVersions();
            Debug.WriteLine($"[BIFROST-TLS] Advertising TLS versions: {string.Join(", ", versions.Select(v => v.ToString()))}"); // debug to check if tls 1.3 is working for you (it should be)
            return versions;
        }

        public override void NotifySelectedCipherSuite(int selectedCipherSuite)
        {
            base.NotifySelectedCipherSuite(selectedCipherSuite);
            Debug.WriteLine($"[BIFROST-TLS] Cipher suite: 0x{selectedCipherSuite:X4}");
        }

        public override void NotifyServerVersion(ProtocolVersion serverVersion)
        {
            base.NotifyServerVersion(serverVersion);
            Debug.WriteLine($"[BIFROST-TLS] Negotiated TLS version: {serverVersion}");
        }

        public override void NotifyAlertReceived(short alertLevel, short alertDescription)
        {
            Debug.WriteLine($"[BIFROST-TLS] Alert received, level {alertLevel}, description {alertDescription}: {AlertDescription.GetText(alertDescription)}");
            base.NotifyAlertReceived(alertLevel, alertDescription);
        }

        public override TlsAuthentication GetAuthentication()
            => new BouncyCertAuth(_host);

        private sealed class BouncyCertAuth : TlsAuthentication
        {
            private readonly string _host;

            public BouncyCertAuth(string host) => _host = host;

            public TlsCredentials GetClientCredentials(CertificateRequest req) => null;

            public void NotifyServerCertificate(TlsServerCertificate serverCert)
            {
                var bcCerts = serverCert.Certificate.GetCertificateList();
                if (bcCerts == null || bcCerts.Length == 0)
                    throw new TlsFatalAlert(AlertDescription.bad_certificate, new Exception("BifrostTLS error: The server did not provide any certificates [42]"));

                var dotnetCerts = new X509Certificate2Collection(); 
                foreach (var bcCert in bcCerts)
                    dotnetCerts.Add(new X509Certificate2(bcCert.GetEncoded()));

                var leaf = dotnetCerts[0];

                bool chainValid;
                using (var chain = new X509Chain())
                {
                    chain.ChainPolicy.RevocationMode = X509RevocationMode.Offline;

                    for (int i = 1; i < dotnetCerts.Count; i++)
                        chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                    chainValid = chain.Build(leaf);

                    if (!chainValid)
                    {
                        foreach (var status in chain.ChainStatus)
                            Debug.WriteLine($"[BIFROST-TLS] Chain error: {status.StatusInformation}");
                    }
                }

                bool hostValid = HostMatchesCert(leaf, _host);

                Debug.WriteLine(
                    $"[BIFROST-TLS] Chain={chainValid} HostMatch={hostValid} host={_host}");

                if (!chainValid && !hostValid)
                    throw new TlsFatalAlert(AlertDescription.bad_certificate, new Exception("BifrostTLS error: Both certificate chain and host are invalid [42]"));

                if (!chainValid)
                    throw new TlsFatalAlert(AlertDescription.bad_certificate, new Exception("BifrostTLS error: Certificate chain is invalid [42]"));

                if (!hostValid)
                    throw new TlsFatalAlert(AlertDescription.bad_certificate, new Exception($"BifrostTLS error: Host is invalid, '{_host}' does not match certificate [42]"));
            }

            private static bool HostMatchesCert(X509Certificate2 cert, string host)
            {
                var sanExt = cert.Extensions["2.5.29.17"];
                if (sanExt != null)
                {
                    string sanText = sanExt.Format(true);
                    foreach (var line in sanText.Split(new[] { '\r', '\n' }, StringSplitOptions.RemoveEmptyEntries))
                    {
                        string entry = null;
                        if (line.StartsWith("DNS Name=", StringComparison.OrdinalIgnoreCase))
                            entry = line.Substring("DNS Name=".Length).Trim();
                        else if (line.StartsWith("DNS:", StringComparison.OrdinalIgnoreCase))
                            entry = line.Substring("DNS:".Length).Trim();

                        if (entry == null) continue;

                        if (NameMatches(entry, host))
                        {
                            Debug.WriteLine($"[BIFROST-TLS] Host matched SAN: {entry}");
                            return true;
                        }
                    }

                    Debug.WriteLine($"[BIFROST-TLS] SANs present but no match for {host}");
                    return false;
                }

                string cn = cert.GetNameInfo(X509NameType.SimpleName, false);
                bool cnMatch = NameMatches(cn, host);
                Debug.WriteLine($"[BIFROST-TLS] CN fallback: CN={cn} match={cnMatch}");
                return cnMatch;
            }

            private static bool NameMatches(string pattern, string host)
            {
                if (string.IsNullOrEmpty(pattern) || string.IsNullOrEmpty(host))
                    return false;

                if (string.Equals(pattern, host, StringComparison.OrdinalIgnoreCase))
                    return true;

                if (!pattern.StartsWith("*.") || pattern.Length < 3)
                    return false;

                string suffix = pattern.Substring(1);

                if (!host.EndsWith(suffix, StringComparison.OrdinalIgnoreCase))
                    return false;

                string leftLabel = host.Substring(0, host.Length - suffix.Length);
                return leftLabel.Length > 0 && leftLabel.IndexOf('.') < 0;
            }
        }
    }
}
