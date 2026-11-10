/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using System.IO;
using System.IO.Compression;
using System.Net.Http;
using System.Threading.Tasks;

namespace Skymu.Packaging
{
    class Package
    {
        public static async Task<bool> Install(string package_name, string extract_path)
        {
            try
            {
                using (
                    HttpResponseMessage response = await Universal.SkymuHttpClient.GetAsync(
                        Universal.SKYMU_WEBSERVICES_PACKAGE_REPO
                            + "/"
                            + package_name
                            + ".zip",
                        HttpCompletionOption.ResponseHeadersRead
                    )
                )
                {
                    response.EnsureSuccessStatusCode();

                    using (Stream downloadStream = await response.Content.ReadAsStreamAsync())
                    {
                        using (MemoryStream memoryStream = new MemoryStream())
                        {
                            await downloadStream.CopyToAsync(memoryStream);
                            memoryStream.Position = 0;

                            using (ZipArchive archive = new ZipArchive(memoryStream))
                            {
                                archive.ExtractToDirectory(extract_path);
                                return true;
                            }
                        }
                    }
                }
            }
            catch
            {
                return false;
            }
        }
    }
}
