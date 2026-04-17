/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;

namespace Skymu
{
    public class DateHeaderItem
    {
        public string DateText { get; set; }
    }

    public class CategoryHeaderItem
    {
        public string CategoryName { get; set; }
    }

    public class CompactRecentsHelper
    {
        public static ObservableCollection<object> GroupByDate(
            ObservableCollection<Conversation> conversations
        )
        {
            var result = new ObservableCollection<object>();
            if (conversations == null || conversations.Count == 0)
                return result;

            var sorted = conversations.OrderByDescending(c => c.LastMessageTime).ToList();
            var groups = sorted
                .GroupBy(c => GetDateKey(c.LastMessageTime))
                .ToDictionary(g => g.Key, g => g.ToList());

            var sortedKeys = groups
                .Keys.OrderByDescending(k => ParseDateKey(k, sorted[0].LastMessageTime))
                .ToList();

            foreach (var key in sortedKeys)
            {
                result.Add(new DateHeaderItem { DateText = key });
                foreach (var convo in groups[key])
                    result.Add(convo);
            }

            return result;
        }

        private static string GetDateKey(DateTime dt)
        {
            var today = DateTime.Today;
            var dateOnly = dt.Date;

            if (dateOnly == today)
                return Universal.Lang["sTODAY"];
            if (dateOnly == today.AddDays(-1))
                return Universal.Lang["sYESTERDAY"];
            return dt.ToString("dddd, MMMM d, yyyy", CultureInfo.CurrentCulture);
        }

        private static DateTime ParseDateKey(string key, DateTime reference)
        {
            var today = DateTime.Today;

            if (key == Universal.Lang["sTODAY"])
                return today;
            if (key == Universal.Lang["sYESTERDAY"])
                return today.AddDays(-1);
            if (
                DateTime.TryParseExact(
                    key,
                    "dddd, MMMM d, yyyy",
                    CultureInfo.CurrentCulture,
                    DateTimeStyles.None,
                    out DateTime parsed
                )
            )
                return parsed;

            return reference;
        }
    }

    public class ServerChannelHelper
    {
        public static ObservableCollection<object> GroupByCategory(
            ServerChannel[] channels,
            Dictionary<string, string> categoryMap
        )
        {
            var result = new ObservableCollection<object>();
            if (channels == null || channels.Length == 0)
                return result;

            var uncategorized = channels
                .Where(c => string.IsNullOrEmpty(c.CategoryID))
                .OrderBy(c => c.Position);

            foreach (var channel in uncategorized)
                result.Add(channel);

            var categorized = channels
                .Where(c => !string.IsNullOrEmpty(c.CategoryID))
                .GroupBy(c => c.CategoryID)
                .Select(g => new
                {
                    CategoryId = g.Key,
                    Channels = g.OrderBy(c => c.Position).ToList(),
                    Position = g.Min(c => c.Position),
                })
                .OrderBy(g => g.Position);

            foreach (var group in categorized)
            {
                string categoryName =
                    categoryMap != null && categoryMap.TryGetValue(group.CategoryId, out var name)
                        ? name
                        : "Unknown Category";

                result.Add(new CategoryHeaderItem { CategoryName = categoryName });

                foreach (var channel in group.Channels)
                    result.Add(channel);
            }

            return result;
        }
    }
}
