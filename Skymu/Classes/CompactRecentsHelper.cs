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

    public class CompactRecentsHelper
    {
        public static ObservableCollection<object> GroupByDate(ObservableCollection<Conversation> conversations)
        {
            var result = new ObservableCollection<object>();
            if (conversations == null || conversations.Count == 0)
                return result;

            var sorted = conversations.OrderByDescending(c => c.LastMessageTime).ToList();
            var groups = new Dictionary<string, List<Conversation>>();

            foreach (var convo in sorted)
            {
                string key = GetDateKey(convo.LastMessageTime);
                if (!groups.ContainsKey(key))
                    groups[key] = new List<Conversation>();
                groups[key].Add(convo);
            }

            var sortedKeys = groups.Keys
                .OrderByDescending(k => ParseDateKey(k, sorted[0].LastMessageTime))
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
            if (DateTime.TryParseExact(key, "dddd, MMMM d, yyyy", CultureInfo.CurrentCulture, DateTimeStyles.None, out DateTime parsed))
                return parsed;

            return reference;
        }
    }
}
