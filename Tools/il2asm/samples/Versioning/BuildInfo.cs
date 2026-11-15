// Verbatim subset of Skymu/Classes/Versioning.cs (BuildInfo only, minus the
// tag-parsing constructor). Kept textually identical to the repo so the
// transpiled IL is the real thing and not a paraphrase.
//
// Copyright (c) The Skymu Team. AGPL-3.0-or-later.

using System;

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

        public string GetCodeName()
        {
            return MajorName + " " + MinorName;
        }
    }
}
