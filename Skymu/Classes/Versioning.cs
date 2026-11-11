using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Skymu.Versioning
{
    public class BuildInfo
    {
        // standard release 
        public int Major { get; private set; }
        public int Minor { get; private set; }
        public int Patch { get; private set; }
        public string MajorName { get; private set; }
        public string MinorName { get; private set; }
        // beta release
        public bool IsBeta { get; private set; }
        public int BetaNumber { get; private set; }
        // constructor
        public BuildInfo(int major, int minor, int patch, string major_name, string minor_name, bool is_beta = false, int beta_number = 0)
        {
            Major = major;
            Minor = minor;
            Patch = patch;
            MajorName = major_name;
            MinorName = minor_name;
            IsBeta = is_beta;
            BetaNumber = beta_number;
        }
        public BuildInfo(string tag, string major_name, string minor_name)
        {
            // b1.2.3 or b1.2.3:1
            if (tag.StartsWith("b"))
            {
                IsBeta = true;
                // b1.2.3:1
                if (tag.Contains(":"))
                {
                    int idx = tag.IndexOf(':');
                    BetaNumber = Int32.Parse(tag.Substring(idx + 1));
                    // b1.2.3:1 -> b1.2.3
                    tag = tag.Substring(0, idx);
                }
                // b1.2.3
                else BetaNumber = 0;
            }
            // v1.2.3 or 1.2.3
            else IsBeta = false;

            // v1.2.3 or b1.2.3 -> 1.2.3
            if (tag.StartsWith("b") || tag.StartsWith("v")) tag = tag.Substring(1);

            // 1.2.3 -> 1, 2, 3
            string[] versionNumbers = tag.Split('.');
            Major = Int32.Parse(versionNumbers[0]);
            if (versionNumbers.Length > 1) Minor = Int32.Parse(versionNumbers[1]);
            else Minor = 0;
            if (versionNumbers.Length > 2) Patch = Int32.Parse(versionNumbers[2]);
            else Patch = 0;

            MajorName = major_name;
            MinorName = minor_name;
        }

        public string GetVersionString(bool use_decoration = true)
        {
            string version = string.Empty;
            string suffix = string.Empty;
            if (use_decoration)
            {
                if (IsBeta) { version += "b"; suffix = ":" + BetaNumber; }
                else version += "v";
            }
            return version + Major + "." + Minor + "." + Patch + suffix;
        }

        public string GetCodeName()
        {
            return MajorName + " " + MinorName;
        }

        public bool IsNewerThan(BuildInfo other)
        {
            if (other == null) return true;

            if (Major != other.Major) return Major > other.Major;
            if (Minor != other.Minor) return Minor > other.Minor;
            if (Patch != other.Patch) return Patch > other.Patch;

            // same major.minor.patch: a release is newer than any beta of it
            if (IsBeta != other.IsBeta) return !IsBeta;

            // both betas: higher beta number is newer
            if (IsBeta) return BetaNumber > other.BetaNumber;

            // both releases with identical versions
            return false;
        }
    }

    public static class VersionTools
    {
        private static readonly Regex ValidBuildPattern = new Regex(@"^(?<prefix>[vb]?)(?<nums>[0-9]+(?:\.[0-9]+){0,2})(?::(?<beta>[0-9]+))?\z", RegexOptions.Compiled);
        public static bool Validate(string version)
        {
            if (string.IsNullOrEmpty(version))
                return false;

            Match m = ValidBuildPattern.Match(version);
            if (!m.Success)
                return false;

            if (m.Groups["beta"].Success && m.Groups["prefix"].Value != "b")
                return false;

            int value;
            foreach (string part in m.Groups["nums"].Value.Split('.'))
            {
                if (!int.TryParse(part, NumberStyles.None, CultureInfo.InvariantCulture, out value))
                    return false;
            }
            if (m.Groups["beta"].Success &&
                !int.TryParse(m.Groups["beta"].Value, NumberStyles.None, CultureInfo.InvariantCulture, out value))
                return false;

            return true;
        }
    }
}
