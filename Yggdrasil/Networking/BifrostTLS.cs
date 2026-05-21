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
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;

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

                // Default configurations if shared.xml doesn't exist
                bool isSysCert = false;
                bool useCustom = false;
                string customPath = string.Empty;

                try
                {
                    string appData = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
                    string xmlPath = Path.Combine(appData, "Skymu", "shared.xml");

                    if (File.Exists(xmlPath))
                    {
                        var doc = XDocument.Load(xmlPath);

                        var sysCertEl = doc.Descendants("SysCert").FirstOrDefault();
                        var useCustomCertEl = doc.Descendants("UseCustomCert").FirstOrDefault();
                        var certPathEl = doc.Descendants("CertPath").FirstOrDefault();

                        if (sysCertEl != null) bool.TryParse(sysCertEl.Value, out isSysCert);
                        if (useCustomCertEl != null) bool.TryParse(useCustomCertEl.Value, out useCustom);
                        if (certPathEl != null) customPath = certPathEl.Value;
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[BIFROST-TLS] Failed to parse shared.xml config: {ex.Message}");
                }

                // prefer custom certs over sys
                if (useCustom)
                {
                    isSysCert = false;
                }

                bool chainValid = false;

                if (isSysCert)
                {
                    Debug.WriteLine($"[BIFROST-TLS] Using system certificate chain");
                    using (var chain = new X509Chain())
                    {
                        chain.ChainPolicy.RevocationMode = X509RevocationMode.Online;

                        for (int i = 1; i < dotnetCerts.Count; i++)
                            chain.ChainPolicy.ExtraStore.Add(dotnetCerts[i]);

                        chainValid = chain.Build(leaf);

                        if (!chainValid)
                            foreach (var status in chain.ChainStatus)
                                Debug.WriteLine($"[BIFROST-TLS] Chain error: {status.StatusInformation}");
                    }
                }
                else
                {
                    var trustedThumbprints = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    var pemCerts = new X509Certificate2Collection();

                    try
                    {
                        string appDirRootPem = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "cacert.pem");

                        if (useCustom && !string.IsNullOrWhiteSpace(customPath) && File.Exists(customPath))
                        {
                            Debug.WriteLine($"[BIFROST-TLS] Using custom cacert.pem");
                            using (var fs = File.OpenRead(customPath))
                                LoadPemCerts(fs, trustedThumbprints, pemCerts);
                        }
                        else if (File.Exists(appDirRootPem))
                        {
                            Debug.WriteLine($"[BIFROST-TLS] Using custom cacert.pem");
                            using (var fs = File.OpenRead(appDirRootPem))
                                LoadPemCerts(fs, trustedThumbprints, pemCerts);
                        }
                        else
                        {
                            Debug.WriteLine($"[BIFROST-TLS] Using built-in cacert.pem");
                            var assembly = Assembly.GetExecutingAssembly();
                            string resourceName = assembly.GetManifestResourceNames()
                                .FirstOrDefault(n => n.EndsWith("cacert.pem", StringComparison.OrdinalIgnoreCase));

                            if (resourceName != null)
                            {
                                using (var stream = assembly.GetManifestResourceStream(resourceName))
                                    LoadPemCerts(stream, trustedThumbprints, pemCerts);
                            }
                        }
                    }
                    catch
                    {
                        if (useCustom)
                            throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("Invalid Custom Certificate chain: Could not load the provided cacert.pem file."));
                        else
                            throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("BifrostTLS error: Could not load embedded or localized cacert.pem resources."));
                    }

                    if (trustedThumbprints.Count == 0 && useCustom)
                        throw new TlsFatalAlert(AlertDescription.internal_error, new Exception("Invalid Custom Certificate chain: cacert.pem is empty or invalid."));

                    bool foundTrustedAnchor = false;
                    bool hasFatalErrors = false;

                    try
                    {
                        var bcParser = new Org.BouncyCastle.X509.X509CertificateParser();

                        foreach (var tlsCert in bcCerts)
                        {
                            var serverBcCert = bcParser.ReadCertificate(tlsCert.GetEncoded());
                            var dotNetCert = new X509Certificate2(tlsCert.GetEncoded());

                            if (trustedThumbprints.Contains(dotNetCert.Thumbprint))
                            {
                                foundTrustedAnchor = true;
                                break;
                            }

                            foreach (var pemCert in pemCerts)
                            {
                                if (dotNetCert.Issuer == pemCert.Subject)
                                {
                                    try
                                    {
                                        var pemBcCert = bcParser.ReadCertificate(pemCert.RawData);
                                        serverBcCert.Verify(pemBcCert.GetPublicKey());
                                        foundTrustedAnchor = true;
                                        break;
                                    }
                                    catch (Exception ex)
                                    {
                                        Debug.WriteLine($"[BIFROST-TLS] Fatal chain error: {ex.Message}");
                                        hasFatalErrors = true;
                                    }
                                }
                            }

                            if (foundTrustedAnchor)
                                break;
                        }
                    }
                    catch (Exception ex)
                    {
                        hasFatalErrors = true;
                        Debug.WriteLine($"[BIFROST-TLS] Chain error: {ex.Message}");
                    }

                    chainValid = foundTrustedAnchor && !hasFatalErrors;
                }

                byte[] leafEncodedBytes = bcCerts[0].GetEncoded();
                Org.BouncyCastle.X509.X509Certificate leafX509 =
                    new Org.BouncyCastle.X509.X509CertificateParser().ReadCertificate(leafEncodedBytes);

                (bool, List<string>) certHostInfo = GetCertificateHostInformation(leaf, _host);

                Debug.WriteLine(
                    $"[BIFROST-TLS] Chain={chainValid} HostMatch={certHostInfo.Item1} host={_host}"
                );

                string customText = useCustom ? "Using custom certificate: " : string.Empty;

                if (!chainValid && !certHostInfo.Item1)
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

                else if (!certHostInfo.Item1)
                {
                    throw new TlsFatalAlert(
                        AlertDescription.bad_certificate,
                        new Exception(
                            $"BifrostTLS error: Host is invalid, '{_host}' does "
                                + $"not match certificate [42].\n\nThe certificate is valid for the following domains:\n{string.Join(Environment.NewLine, certHostInfo.Item2.ToArray())}"
                        )
                    );
                }
            }

            private static (bool, List<string>) GetCertificateHostInformation(X509Certificate2 cert, string host)
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
                            Debug.WriteLine($"[BIFROST-TLS] Host matched SAN: {dnsName}");
                            return (true, domains);
                        }
                    }

                    Debug.WriteLine($"[BIFROST-TLS] SANs present but no match for {host}");
                    return (false, domains);
                }

                // fall back to CN if no SAN extension (for older stuff?)
                string cn = cert.GetNameInfo(X509NameType.SimpleName, false);
                domains.Add(cn);
                bool cnMatch = NameMatches(cn, host);
                Debug.WriteLine($"[BIFROST-TLS] CN fallback: CN={cn} match={cnMatch}");
                return (cnMatch, domains);
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

                if (!host.EndsWith(suffix, StringComparison.OrdinalIgnoreCase))
                    return false;

                string leftLabel = host.Substring(0, host.Length - suffix.Length);
                return leftLabel.Length > 0 && leftLabel.IndexOf('.') < 0;
            }
        }
    }
}
