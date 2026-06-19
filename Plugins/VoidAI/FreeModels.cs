using System.Collections.Generic;

namespace VoidAI
{
    // VoidAI does not expose a "this model is free" field anywhere in its API
    // (GET /v1/models returns id/object/created/owned_by only, with no plan
    // or pricing info attached). The Free/Basic/Premium/Pro split is only
    // documented in prose on the Credits & Pricing guide, so this list is
    // hardcoded from that documentation as of mid-2026.
    //
    // If VoidAI changes which models are on the Free plan, this is the only
    // file that needs to be updated. nothing else in the plugin should
    // need to change.
    internal static class FreeModels
    {
        // Display name shown in Skymu's contact/conversation list, paired with
        // the exact model ID VoidAI expects in the "model" field of a chat
        // completion request.
        internal static readonly IReadOnlyList<(string DisplayName, string ModelId)> All =
            new List<(string, string)>
            {
                ("GPT-4.1 Nano",        "gpt-4.1-nano"),
                ("GPT-4o Mini",         "gpt-4o-mini"),
                ("GPT-5.1",             "gpt-5.1"),
                ("o3-mini",             "o3-mini"),
                ("Claude 3.5 Haiku",    "claude-3-5-haiku-20241022"),
                ("Gemini 2.0 Flash",    "gemini-2.0-flash"),
                ("Gemini 2.5 Pro",      "gemini-2.5-pro"),
                ("DeepSeek V3",         "deepseek-v3"),
                ("DeepSeek R1",         "deepseek-r1"),
                ("Lumina",              "lumina"),
            };
    }
}