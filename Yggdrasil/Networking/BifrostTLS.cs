/*==========================================================*/
// Yggdrasil is copyrighted by The Skymu Team, 2026.
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
using Org.BouncyCastle.Tls.Crypto;
using Org.BouncyCastle.Tls.Crypto.Impl.BC;
using Org.BouncyCastle.Asn1.X509;
using Org.BouncyCastle.Asn1;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Yggdrasil.Networking
{
    public enum CertStore
    {
        Embedded,
        System,
        Custom
    }

    internal static class BifrostLog
    {
        [System.Diagnostics.Conditional("DEBUG")]
        public static void Write(string message)
        {
            Debug.WriteLine(message);
        }
    }

    internal static class BifrostTLS
    {
        public static async Task<Stream> OpenAsync(
            string host, int port, bool isHttps, CancellationToken ct)
        {
            BifrostLog.Write($"[BIFROST-TLS] Opening connection to {host}:{port}");

            bool useDualMode = RuntimeInformation.IsOSPlatform(OSPlatform.Windows)
                && Environment.OSVersion.Version.Build >= 6000;

            var socket = useDualMode
                ? new Socket(AddressFamily.InterNetworkV6, SocketType.Stream, ProtocolType.Tcp) { NoDelay = true }
                : new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp) { NoDelay = true };

            if (useDualMode)
                socket.DualMode = true;

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

            BifrostLog.Write($"[BIFROST-TLS] TCP connected to {host}:{port}");

            Stream stream = new NetworkStream(socket, ownsSocket: true);

            if (!isHttps)
                return stream;

            var protocol = new TlsClientProtocol(stream);

            var handshakeTask = Task.Run(() =>
            {
                protocol.Connect(new BifrostTLSClient(host));
                BifrostLog.Write($"[BIFROST-TLS] TLS handshake complete with {host}");
            });

            using (var timeoutCts = CancellationTokenSource.CreateLinkedTokenSource(ct))
            {
                timeoutCts.CancelAfter(TimeSpan.FromSeconds(15));
                var delay = Task.Delay(Timeout.Infinite, timeoutCts.Token)
                    .ContinueWith(_ => { }, TaskContinuationOptions.OnlyOnCanceled);

                if (await Task.WhenAny(handshakeTask, delay).ConfigureAwait(false) != handshakeTask)
                {
                    stream.Dispose(); // kills socket & unblocks protocol.Connect inside task run
                    ct.ThrowIfCancellationRequested(); 
                    throw new TimeoutException($"TLS handshake with {host} timed out");
                }
            }

            await handshakeTask.ConfigureAwait(false); // propagate exception

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
            BifrostLog.Write($"[BIFROST-TLS] Advertising TLS versions: {string.Join(", ", versions.Select(v => v.ToString()))}"); // debug to check if tls 1.3 is working for you (it should be)
            return versions;
        }

        public override System.Collections.Generic.IDictionary<int, byte[]> GetClientExtensions()
        {
            var extensions = base.GetClientExtensions() ?? new System.Collections.Generic.Dictionary<int, byte[]>();
            byte[] nameBytes = System.Text.Encoding.UTF8.GetBytes(_host);
            var serverName = new ServerName(NameType.host_name, nameBytes);
            TlsExtensionsUtilities.AddServerNameExtensionClient(extensions, new[] { serverName });

            return extensions;
        }

        public override void NotifySelectedCipherSuite(int selectedCipherSuite)
        {
            base.NotifySelectedCipherSuite(selectedCipherSuite);
            BifrostLog.Write($"[BIFROST-TLS] Cipher suite: 0x{selectedCipherSuite:X4}");
        }

        public override void NotifyServerVersion(ProtocolVersion serverVersion)
        {
            base.NotifyServerVersion(serverVersion);
            BifrostLog.Write($"[BIFROST-TLS] Negotiated TLS version: {serverVersion}");
        }

        public override void NotifyAlertReceived(short alertLevel, short alertDescription)
        {
            BifrostLog.Write($"[BIFROST-TLS] Alert received, level {alertLevel}, description {alertDescription}: {AlertDescription.GetText(alertDescription)}");
            base.NotifyAlertReceived(alertLevel, alertDescription);
        }

        public override TlsAuthentication GetAuthentication()
            => new BouncyCertAuth(_host);

        private sealed class BouncyCertAuth : TlsAuthentication
        {
            private readonly string _host;

            public BouncyCertAuth(string host)
            {
                _host = host;
            }

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

                // Default configurations if shared.xml doesn't exist
                bool isSysCert = false;
                bool useCustom = false;
                string customPath = string.Empty;
                bool enableCnFallback = false;

                try
                {
                    string xmlPath = Path.Combine(
                        Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
                        "Yggdrasil",
                        "ratatoskr.xml"
                    );
                    if (File.Exists(xmlPath))
                    {
                        var doc = XDocument.Load(xmlPath);
                        var certStoreEl = doc.Root.Element("CertificateStore");
                        var certPathEl = doc.Root.Element("CertPath");
                        if (certStoreEl != null && Enum.TryParse<CertStore>(certStoreEl.Value, true, out var certStore))
                        {
                            isSysCert = certStore == CertStore.System;
                            useCustom = certStore == CertStore.Custom;
                        }
                        if (certPathEl != null) customPath = certPathEl.Value;
                        var cnFallbackEl = doc.Root.Element("EnableCNFallback");
                        if (cnFallbackEl != null && bool.TryParse(cnFallbackEl.Value, out var cnFallback))
                            enableCnFallback = cnFallback;
                    }
                }
                catch (Exception ex)
                {
                    BifrostLog.Write($"[BIFROST-TLS] Failed to parse Ratatoskr config: {ex.Message}");
                }

                var now = DateTime.UtcNow;
                if (now < leaf.NotBefore || now > leaf.NotAfter)
                    throw new TlsFatalAlert(AlertDescription.certificate_expired,
                        new Exception($"BifrostTLS error: Server certificate for '{_host}' has expired or is not yet valid [45]"));

                bool chainValid = false;

                if (useCustom)
                {
                    var trustedThumbprints = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    var pemCerts = new X509Certificate2Collection();

                    try
                    {
                        if (!string.IsNullOrWhiteSpace(customPath) && File.Exists(customPath))
                        {
                            BifrostLog.Write($"[BIFROST-TLS] Using custom cacert.pem");
                            using (var fs = File.OpenRead(customPath))
                                LoadPemCerts(fs, trustedThumbprints, pemCerts);
                        }
                        else
                        {
                            throw new TlsFatalAlert(AlertDescription.internal_error,
                                new Exception("Invalid Custom Certificate chain: CertStore is Custom but CertPath is missing or the file does not exist."));
                        }
                    }
                    catch (TlsFatalAlert)
                    {
                        throw;
                    }
                    catch
                    {
                        throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("Invalid Custom Certificate chain: Could not load the provided cacert.pem file."));
                    }

                    if (trustedThumbprints.Count == 0)
                        throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("Invalid Custom Certificate chain: cacert.pem is empty or invalid."));

                    chainValid = WalkChain(bcCerts, trustedThumbprints, pemCerts);
                }
                else if (isSysCert)
                {
                    BifrostLog.Write($"[BIFROST-TLS] Using system certificate chain");
                    using (var chain = new X509Chain())
                    {
                        chain.ChainPolicy.RevocationMode = X509RevocationMode.Online;

                        for (int i = 1; i < dotnetCerts.Count; i++)
                            chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                        chainValid = chain.Build(leaf);

                        if (!chainValid)
                            foreach (var status in chain.ChainStatus)
                                BifrostLog.Write($"[BIFROST-TLS] Chain error: {status.StatusInformation}");
                    }
                }
                else
                {
                    var trustedThumbprints = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    var pemCerts = new X509Certificate2Collection();

                    try
                    {
                        BifrostLog.Write($"[BIFROST-TLS] Using built-in cacert.pem");
                        var assembly = Assembly.GetExecutingAssembly();
                        string resourceName = assembly.GetManifestResourceNames()
                            .FirstOrDefault(n => n.EndsWith("cacert.pem", StringComparison.OrdinalIgnoreCase));

                        if (resourceName != null)
                        {
                            using (var stream = assembly.GetManifestResourceStream(resourceName))
                                LoadPemCerts(stream, trustedThumbprints, pemCerts);
                        }
                    }
                    catch (TlsFatalAlert)
                    {
                        throw;
                    }
                    catch
                    {
                        throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("BifrostTLS error: Could not load embedded or localized cacert.pem resources."));
                    }

                    chainValid = WalkChain(bcCerts, trustedThumbprints, pemCerts);

                    if (!chainValid)
                    {
                        BifrostLog.Write($"[BIFROST-TLS] Embedded bundle failed for {_host}, falling back to system store");
                        using (var chain = new X509Chain())
                        {
                            chain.ChainPolicy.RevocationMode = X509RevocationMode.Online;

                            for (int i = 1; i < dotnetCerts.Count; i++)
                                chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                            chainValid = chain.Build(leaf);

                            if (!chainValid)
                                foreach (var status in chain.ChainStatus)
                                    BifrostLog.Write($"[BIFROST-TLS] System chain error: {status.StatusInformation}");
                        }
                    }
                }

                byte[] leafEncodedBytes = bcCerts[0].GetEncoded();
                Org.BouncyCastle.X509.X509Certificate leafX509 =
                    new Org.BouncyCastle.X509.X509CertificateParser().ReadCertificate(leafEncodedBytes);

                (bool hostMatch, List<string> domains) = GetCertificateHostInformation(leaf, _host, enableCnFallback);

                BifrostLog.Write(
                    $"[BIFROST-TLS] Chain={chainValid} HostMatch={hostMatch} host={_host}"
                );

                string customText = useCustom ? "Using custom certificate: " : string.Empty;

                if (!chainValid && !hostMatch)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(
                            $"BifrostTLS error: {customText}Certificate chain is invalid. In addition, host is also invalid, '{_host}' does"
                                + $" not match certificate [42].\n\nCertificate information:\n{leaf.GetNameInfo(X509NameType.SimpleName, false)}"
                        )
                    );
                }

                if (!chainValid)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception($"BifrostTLS error: {customText}Certificate chain is invalid [42]")
                    );
                }

                else if (!hostMatch)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(
                            $"BifrostTLS error: Host is invalid, '{_host}' does "
                                + $"not match certificate [42].\n\nThe certificate is valid for the following domains:\n{string.Join(Environment.NewLine, domains.ToArray())}"
                        )
                    );
                }

            }

            private static bool WalkChain(
                TlsCertificate[] bcCerts,
                HashSet<string> trustedThumbprints,
                X509Certificate2Collection pemCerts,
                int maxDepth = 10)
            {
                var bcParser = new Org.BouncyCastle.X509.X509CertificateParser();
                var now = DateTime.UtcNow;

                var serverChain = new List<Org.BouncyCastle.X509.X509Certificate>();
                foreach (var tlsCert in bcCerts)
                    serverChain.Add(bcParser.ReadCertificate(tlsCert.GetEncoded()));

                var storeChain = new List<Org.BouncyCastle.X509.X509Certificate>();
                foreach (X509Certificate2 pemCert in pemCerts)
                    storeChain.Add(bcParser.ReadCertificate(pemCert.RawData));

                return WalkChainRecursive(serverChain[0], serverChain, storeChain, trustedThumbprints, now, 0, maxDepth);
            }

            private static bool WalkChainRecursive(
                Org.BouncyCastle.X509.X509Certificate cert,
                List<Org.BouncyCastle.X509.X509Certificate> serverChain,
                List<Org.BouncyCastle.X509.X509Certificate> storeChain,
                HashSet<string> trustedThumbprints,
                DateTime now,
                int depth,
                int maxDepth)
            {
                if (depth > maxDepth)
                {
                    BifrostLog.Write($"[BIFROST-TLS] Chain walk exceeded max depth ({maxDepth})");
                    return false;
                }

                if (now < cert.NotBefore.ToUniversalTime() || now > cert.NotAfter.ToUniversalTime())
                {
                    BifrostLog.Write($"[BIFROST-TLS] Cert expired or not yet valid: {cert.SubjectDN}");
                    return false;
                }

                var dotNetCert = new X509Certificate2(cert.GetEncoded());
                if (trustedThumbprints.Contains(dotNetCert.Thumbprint))
                {
                    BifrostLog.Write($"[BIFROST-TLS] Found trusted anchor: {cert.SubjectDN}");
                    return true;
                }

                var candidates = serverChain
                    .Where(c => !ReferenceEquals(c, cert))
                    .Concat(storeChain)
                    .Where(c => c.SubjectDN.Equivalent(cert.IssuerDN));

                foreach (var issuer in candidates)
                {
                    try
                    {
                        cert.Verify(issuer.GetPublicKey());
                    }
                    catch
                    {
                        BifrostLog.Write($"[BIFROST-TLS] Signature verification failed: {cert.SubjectDN} signed by {issuer.SubjectDN}");
                        continue;
                    }

                    if (WalkChainRecursive(issuer, serverChain, storeChain, trustedThumbprints, now, depth + 1, maxDepth))
                        return true;
                }

                BifrostLog.Write($"[BIFROST-TLS] No valid issuer found for: {cert.SubjectDN}");
                return false;
            }

            private static (bool, List<string>) GetCertificateHostInformation(X509Certificate2 cert, string host, bool enableCnFallback)
            {
                var domains = new List<string>();

                // check SAN extension for domain names
                var bcCert = DotNetUtilities.FromX509Certificate(cert);
                var sanRaw = bcCert.GetExtensionValue(X509Extensions.SubjectAlternativeName);
                if (sanRaw != null)
                {
                    var san = GeneralNames.GetInstance(Asn1Object.FromByteArray(sanRaw.GetOctets()));

                    foreach (var name in san.GetNames())
                    {
                        if (name.TagNo != GeneralName.DnsName) continue;

                        var dnsName = name.Name.ToString();
                        domains.Add(dnsName);

                        if (NameMatches(dnsName, host))
                        {
                            BifrostLog.Write($"[BIFROST-TLS] Host matched SAN: {dnsName}");
                            return (true, domains);
                        }
                    }

                    BifrostLog.Write($"[BIFROST-TLS] SANs present but no match for {host}");
                    return (false, domains);
                }

                // fall back to CN if no SAN extension (for older stuff?)
                if (enableCnFallback)
                {
                    string cn = cert.GetNameInfo(X509NameType.SimpleName, false);
                    domains.Add(cn);
                    bool cnMatch = NameMatches(cn, host);
                    BifrostLog.Write($"[BIFROST-TLS] CN fallback: CN={cn} match={cnMatch}");
                    return (cnMatch, domains);
                }

                BifrostLog.Write($"[BIFROST-TLS] No SAN extension found for {host}, rejecting");
                return (false, domains);
            }

            private void LoadPemCerts(Stream stream, HashSet<string> thumbprints, X509Certificate2Collection extraStore)
            {
                if (stream == null) return;

                var parser = new Org.BouncyCastle.X509.X509CertificateParser();
                var certs = parser.ReadCertificates(stream);

                foreach (Org.BouncyCastle.X509.X509Certificate c in certs)
                {
                    var dotNetCert = new X509Certificate2(c.GetEncoded());
                    thumbprints.Add(dotNetCert.Thumbprint);
                    extraStore.Add(dotNetCert);
                }
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

                int dotCount = suffix.Count(c => c == '.');
                if (dotCount < 2)
                    return false;

                if (!host.EndsWith(suffix, StringComparison.OrdinalIgnoreCase))
                    return false;

                string leftLabel = host.Substring(0, host.Length - suffix.Length);
                return leftLabel.Length > 0 && leftLabel.IndexOf('.') < 0;
            }
        }
    }
}
