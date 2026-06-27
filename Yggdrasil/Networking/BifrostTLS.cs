/*==========================================================*/
// Copyright © OmegaAOL and EAZY BLACK.
/*==========================================================*/
// License: https://spdx.org/licenses/AGPL-3.0-or-later
// SPDX-License-Identifier: AGPL-3.0-or-later
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

namespace OmegaAOL.Bifrost.Tls
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
            BifrostLog.Write(string.Format("[BIFROST-TLS] Opening connection to {0}:{1}", host, port));

            bool useDualMode = RuntimeInformation.IsOSPlatform(OSPlatform.Windows)
                && Environment.OSVersion.Version.Build >= 6000;

            Socket socket = useDualMode
                ? new Socket(AddressFamily.InterNetworkV6, SocketType.Stream, ProtocolType.Tcp) { NoDelay = true }
                : new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp) { NoDelay = true };

            if (useDualMode)
                socket.DualMode = true;

            TaskCompletionSource<bool> connectTcs = new TaskCompletionSource<bool>();
            using (ct.Register(() => connectTcs.TrySetCanceled()))
            {
                IAsyncResult ar = socket.BeginConnect(host, port, null, null);
                Task connectTask = Task.Factory.FromAsync(ar, socket.EndConnect);

                if (await Task.WhenAny(connectTask, connectTcs.Task).ConfigureAwait(false)
                    == connectTcs.Task)
                {
                    socket.Dispose();
                    ct.ThrowIfCancellationRequested();
                }

                await connectTask.ConfigureAwait(false);
            }

            BifrostLog.Write(string.Format("[BIFROST-TLS] TCP connected to {0}:{1}", host, port));

            Stream stream = new NetworkStream(socket, ownsSocket: true);

            if (!isHttps)
                return stream;

            TlsClientProtocol protocol = new TlsClientProtocol(stream);

            Task handshakeTask = Task.Run(() =>
            {
                protocol.Connect(new BifrostTLSClient(host));
                BifrostLog.Write(string.Format("[BIFROST-TLS] TLS handshake complete with {0}", host));
            });

            using (CancellationTokenSource timeoutCts = CancellationTokenSource.CreateLinkedTokenSource(ct))
            {
                timeoutCts.CancelAfter(TimeSpan.FromSeconds(15));
                Task delay = Task.Delay(Timeout.Infinite, timeoutCts.Token)
                    .ContinueWith(_ => { }, TaskContinuationOptions.OnlyOnCanceled);

                if (await Task.WhenAny(handshakeTask, delay).ConfigureAwait(false) != handshakeTask)
                {
                    stream.Dispose(); // kills socket & unblocks protocol.Connect inside task run
                    ct.ThrowIfCancellationRequested(); 
                    throw new TimeoutException(string.Format("TLS handshake with {0} timed out", host));
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
            ProtocolVersion[] versions = base.GetProtocolVersions();
            // debug to check if tls 1.3 is working for you (it should be)
            BifrostLog.Write(string.Format("[BIFROST-TLS] Advertising TLS versions: {0}", string.Join(", ", versions.Select(v => v.ToString())))); 
            return versions;
        }

        public override IDictionary<int, byte[]> GetClientExtensions()
        {
            IDictionary<int, byte[]> extensions = base.GetClientExtensions() ?? new Dictionary<int, byte[]>();
            byte[] nameBytes = System.Text.Encoding.UTF8.GetBytes(_host);
            ServerName serverName = new ServerName(NameType.host_name, nameBytes);
            TlsExtensionsUtilities.AddServerNameExtensionClient(extensions, new[] { serverName });

            return extensions;
        }

        public override void NotifySelectedCipherSuite(int selectedCipherSuite)
        {
            base.NotifySelectedCipherSuite(selectedCipherSuite);
            BifrostLog.Write(string.Format("[BIFROST-TLS] Cipher suite: 0x{0:X4}", selectedCipherSuite));
        }

        public override void NotifyServerVersion(ProtocolVersion serverVersion)
        {
            base.NotifyServerVersion(serverVersion);
            BifrostLog.Write(string.Format("[BIFROST-TLS] Negotiated TLS version: {0}", serverVersion));
        }

        public override void NotifyAlertReceived(short alertLevel, short alertDescription)
        {
            BifrostLog.Write(string.Format("[BIFROST-TLS] Alert received, level {0}, description {1}: {2}", alertLevel, alertDescription, AlertDescription.GetText(alertDescription)));
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
                TlsCertificate[] bcCerts = serverCert.Certificate.GetCertificateList();
                if (bcCerts == null || bcCerts.Length == 0)
                    throw new TlsFatalAlert(AlertDescription.bad_certificate, new Exception("BifrostTLS error: The server did not provide any certificates [42]"));

                X509Certificate2Collection dotnetCerts = new X509Certificate2Collection();
                foreach (TlsCertificate bcCert in bcCerts)
                    dotnetCerts.Add(new X509Certificate2(bcCert.GetEncoded()));

                X509Certificate2 leaf = dotnetCerts[0];

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
                        XDocument doc = XDocument.Load(xmlPath);
                        XElement certStoreEl = doc.Root.Element("CertificateStore");
                        XElement certPathEl = doc.Root.Element("CertPath");
                        if (certStoreEl != null && Enum.TryParse<CertStore>(certStoreEl.Value, true, out CertStore certStore))
                        {
                            isSysCert = certStore == CertStore.System;
                            useCustom = certStore == CertStore.Custom;
                        }
                        if (certPathEl != null) customPath = certPathEl.Value;
                        XElement cnFallbackEl = doc.Root.Element("EnableCNFallback");
                        if (cnFallbackEl != null && bool.TryParse(cnFallbackEl.Value, out bool cnFallback))
                            enableCnFallback = cnFallback;
                    }
                }
                catch (Exception ex)
                {
                    BifrostLog.Write(string.Format("[BIFROST-TLS] Failed to parse Ratatoskr config: {0}", ex.Message));
                }

                DateTime now = DateTime.UtcNow;
                if (now < leaf.NotBefore || now > leaf.NotAfter)
                    throw new TlsFatalAlert(AlertDescription.certificate_expired,
                        new Exception(string.Format("BifrostTLS error: Server certificate for '{0}' has expired or is not yet valid [45]", _host)));

                bool chainValid = false;

                if (useCustom)
                {
                    HashSet<string> trustedThumbprints = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    X509Certificate2Collection pemCerts = new X509Certificate2Collection();

                    try
                    {
                        if (!string.IsNullOrWhiteSpace(customPath) && File.Exists(customPath))
                        {
                            BifrostLog.Write("[BIFROST-TLS] Using custom cacert.pem");
                            using (FileStream fs = File.OpenRead(customPath))
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
                    BifrostLog.Write("[BIFROST-TLS] Using system certificate chain");
                    using (X509Chain chain = new X509Chain())
                    {
                        chain.ChainPolicy.RevocationMode = X509RevocationMode.Online;

                        for (int i = 1; i < dotnetCerts.Count; i++)
                            chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                        chainValid = chain.Build(leaf);

                        if (!chainValid)
                            foreach (X509ChainStatus status in chain.ChainStatus)
                                BifrostLog.Write(string.Format("[BIFROST-TLS] Chain error: {0}", status.StatusInformation));
                    }
                }
                else
                {
                    HashSet<string> trustedThumbprints = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    X509Certificate2Collection pemCerts = new X509Certificate2Collection();

                    try
                    {
                        BifrostLog.Write("[BIFROST-TLS] Using built-in cacert.pem");
                        Assembly assembly = Assembly.GetExecutingAssembly();
                        string resourceName = assembly.GetManifestResourceNames()
                            .FirstOrDefault(n => n.EndsWith("cacert.pem", StringComparison.OrdinalIgnoreCase));

                        if (resourceName != null)
                        {
                            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
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
                        BifrostLog.Write(string.Format("[BIFROST-TLS] Embedded bundle failed for {0}, falling back to system store", _host));
                        using (X509Chain chain = new X509Chain())
                        {
                            chain.ChainPolicy.RevocationMode = X509RevocationMode.Online;

                            for (int i = 1; i < dotnetCerts.Count; i++)
                                chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                            chainValid = chain.Build(leaf);

                            if (!chainValid)
                                foreach (X509ChainStatus status in chain.ChainStatus)
                                    BifrostLog.Write(string.Format("[BIFROST-TLS] System chain error: {0}", status.StatusInformation));
                        }
                    }
                }

                byte[] leafEncodedBytes = bcCerts[0].GetEncoded();
                Org.BouncyCastle.X509.X509Certificate leafX509 =
                    new Org.BouncyCastle.X509.X509CertificateParser().ReadCertificate(leafEncodedBytes);

                (bool hostMatch, List<string> domains) = GetCertificateHostInformation(leaf, _host, enableCnFallback);

                BifrostLog.Write(
                    string.Format("[BIFROST-TLS] Chain={0} HostMatch={1} host={2}", chainValid, hostMatch, _host)
                );

                string customText = useCustom ? "Using custom certificate: " : string.Empty;

                if (!chainValid && !hostMatch)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(
                            string.Format("BifrostTLS error: {0}Certificate chain is invalid. In addition, host is also invalid, '{1}' does"
                                + " not match certificate [42].\n\nCertificate information:\n{2}", customText, _host, leaf.GetNameInfo(X509NameType.SimpleName, false))
                        )
                    );
                }

                if (!chainValid)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(string.Format("BifrostTLS error: {0}Certificate chain is invalid [42]", customText))
                    );
                }

                else if (!hostMatch)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(
                            string.Format("BifrostTLS error: Host is invalid, '{0}' does "
                                + "not match certificate [42].\n\nThe certificate is valid for the following domains:\n{1}", _host, string.Join(Environment.NewLine, domains.ToArray()))
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
                Org.BouncyCastle.X509.X509CertificateParser bcParser = new Org.BouncyCastle.X509.X509CertificateParser();
                DateTime now = DateTime.UtcNow;

                List<Org.BouncyCastle.X509.X509Certificate> serverChain = new List<Org.BouncyCastle.X509.X509Certificate>();
                foreach (TlsCertificate tlsCert in bcCerts)
                    serverChain.Add(bcParser.ReadCertificate(tlsCert.GetEncoded()));

                List<Org.BouncyCastle.X509.X509Certificate> storeChain = new List<Org.BouncyCastle.X509.X509Certificate>();
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
                    BifrostLog.Write(string.Format("[BIFROST-TLS] Chain walk exceeded max depth ({0})", maxDepth));
                    return false;
                }

                if (now < cert.NotBefore.ToUniversalTime() || now > cert.NotAfter.ToUniversalTime())
                {
                    BifrostLog.Write(string.Format("[BIFROST-TLS] Cert expired or not yet valid: {0}", cert.SubjectDN));
                    return false;
                }

                X509Certificate2 dotNetCert = new X509Certificate2(cert.GetEncoded());
                if (trustedThumbprints.Contains(dotNetCert.Thumbprint))
                {
                    BifrostLog.Write(string.Format("[BIFROST-TLS] Found trusted anchor: {0}", cert.SubjectDN));
                    return true;
                }

                IEnumerable<Org.BouncyCastle.X509.X509Certificate> candidates = serverChain
                    .Where(c => !ReferenceEquals(c, cert))
                    .Concat(storeChain)
                    .Where(c => c.SubjectDN.Equivalent(cert.IssuerDN));

                foreach (Org.BouncyCastle.X509.X509Certificate issuer in candidates)
                {
                    try
                    {
                        cert.Verify(issuer.GetPublicKey());
                    }
                    catch
                    {
                        BifrostLog.Write(string.Format("[BIFROST-TLS] Signature verification failed: {0} signed by {1}", cert.SubjectDN, issuer.SubjectDN));
                        continue;
                    }

                    if (WalkChainRecursive(issuer, serverChain, storeChain, trustedThumbprints, now, depth + 1, maxDepth))
                        return true;
                }

                BifrostLog.Write(string.Format("[BIFROST-TLS] No valid issuer found for: {0}", cert.SubjectDN));
                return false;
            }

            private static (bool, List<string>) GetCertificateHostInformation(X509Certificate2 cert, string host, bool enableCnFallback)
            {
                List<string> domains = new List<string>();

                // check SAN extension for domain names
                Org.BouncyCastle.X509.X509Certificate bcCert = DotNetUtilities.FromX509Certificate(cert);
                Asn1OctetString sanRaw = bcCert.GetExtensionValue(X509Extensions.SubjectAlternativeName);
                if (sanRaw != null)
                {
                    GeneralNames san = GeneralNames.GetInstance(Asn1Object.FromByteArray(sanRaw.GetOctets()));

                    foreach (GeneralName name in san.GetNames())
                    {
                        if (name.TagNo != GeneralName.DnsName) continue;

                        string dnsName = name.Name.ToString();
                        domains.Add(dnsName);

                        if (NameMatches(dnsName, host))
                        {
                            BifrostLog.Write(string.Format("[BIFROST-TLS] Host matched SAN: {0}", dnsName));
                            return (true, domains);
                        }
                    }

                    BifrostLog.Write(string.Format("[BIFROST-TLS] SANs present but no match for {0}", host));
                    return (false, domains);
                }

                // fall back to CN if no SAN extension (for older stuff?)
                if (enableCnFallback)
                {
                    string cn = cert.GetNameInfo(X509NameType.SimpleName, false);
                    domains.Add(cn);
                    bool cnMatch = NameMatches(cn, host);
                    BifrostLog.Write(string.Format("[BIFROST-TLS] CN fallback: CN={0} match={1}", cn, cnMatch));
                    return (cnMatch, domains);
                }

                BifrostLog.Write(string.Format("[BIFROST-TLS] No SAN extension found for {0}, rejecting", host));
                return (false, domains);
            }

            private void LoadPemCerts(Stream stream, HashSet<string> thumbprints, X509Certificate2Collection extraStore)
            {
                if (stream == null) return;

                Org.BouncyCastle.X509.X509CertificateParser parser = new Org.BouncyCastle.X509.X509CertificateParser();
                IList<Org.BouncyCastle.X509.X509Certificate> certs = parser.ReadCertificates(stream);

                foreach (Org.BouncyCastle.X509.X509Certificate c in certs)
                {
                    X509Certificate2 dotNetCert = new X509Certificate2(c.GetEncoded());
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
