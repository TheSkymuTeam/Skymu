/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System.Collections.Generic;

public static class EmojiDictionary
{
    // These emojis are sorted how they would be arranged in the emoji picker, and are categorized by their groups and subgroups. They are also sorted by their Unicode code points within each subgroup.
    public static readonly Dictionary<string, string> Map =
        new Dictionary<string, string>
        {
            // Smileys & Emotion - Happy/Positive
            { "1F600", "smile" },
            { "1F603", "smile" },
            { "1F604", "happy" },
            { "1F601", "happy" },
            { "1F602", "laugh" }, // Most common laughing emoji (tears of joy)
            { "1F606", "laugh" },
            { "1F923", "rofl" },
            { "1F60D", "hearteyes" },
            { "1F970", "inlove" },
            { "1F618", "kiss" }, // Most common kiss emoji (face blowing kiss)
            { "1F617", "kiss" },
            { "1F619", "kiss" },
            { "1F61A", "kiss" },
            { "1F609", "wink" },
            { "1F60E", "cool" },
            { "1F60F", "smirk" },
            { "1F633", "blush" },
            
            // Smileys & Emotion - Playful/Silly
            { "1F61B", "tongueout" }, // Most common tongue out (plain)
            { "1F61C", "tongueout" },
            { "1F61D", "tongueout" },
            { "1F917", "hug" },
            { "1F913", "nerdy" },
            { "1F644", "sarcastic" },
            { "1F914", "think" },
            
            // Smileys & Emotion - Neutral/Skeptical
            { "1F610", "dull" },
            { "1F611", "unamused" },
            { "1F636", "speechless" },
            { "1F612", "envy" },
            
            // Smileys & Emotion - Negative
            { "1F614", "emo" },
            { "1F61E", "sadness" },
            { "1F61F", "worry" },
            { "1F62D", "cry" }, // Most common cry emoji (loudly crying face)
            { "1F622", "cry" },
            { "1F621", "angry" }, // Most common angry emoji (pouting face)
            { "1F620", "angry" },
            { "1F926", "facepalm" },
            
            // Smileys & Emotion - Surprised/Concerned
            { "1F62E", "surprised" },
            { "1F628", "fear" },
            { "1F631", "shock" },
            
            // Smileys & Emotion - Sleepy/Sick
            { "1F62A", "tired" },
            { "1F634", "sleepy" },
            { "1F971", "yawn" },
            { "1F912", "ill" },
            { "1F922", "puke" }, // Most common puke emoji (nauseated face)
            { "1F92E", "puke" },
            
            // Smileys & Emotion - Other
            { "1F607", "angel" },
            { "1F608", "devil" },
            { "1F92D", "giggle" },
            { "1F613", "sweat" },
            { "1F92C", "swear" },
            { "1F976", "shivering" },
            
            // People & Body - Hand gestures
            { "1F44D", "like" },
            { "1F44F", "clap" },
            { "1F64F", "praying" },
            { "1F64C", "handsinair" },
            { "1F91D", "handshake" },
            { "1F44A", "fistbump" },
            { "270A", "glassceiling" },
            { "1F4AA", "muscle" },
            { "1F44C", "ok" },
            { "270C", "victory" },
            { "1F91E", "fingerscrossed" },
            { "1FAF6", "hearthands" },
            { "270B", "stop" },
            { "1F91A", "talktothehand" },
            { "1F595", "finger" },
            
            // People & Body - Person/Activity
            { "1F647", "bow" },
            { "1F937-200D-2642", "manshrug" },
            { "1F937-200D-2640", "womanshrug" },
            { "1F468", "man" },
            { "1F469", "woman" },
            { "1F933", "selfie" },
            { "1F483", "dance" },
            
            // People & Body - Women activities
            { "1F469-200D-1F393", "womangraduate" },
            { "1F469-200D-1F3EB", "womanteacher" },
            { "1F469-200D-2696", "womanjudge" },
            { "1F469-200D-1F33E", "womanfarmer" },
            { "1F469-200D-1F373", "womanchef" },
            { "1F469-200D-1F527", "womanmechanic" },
            { "1F469-200D-1F692", "womanfirefighter" },
            { "1F46E-200D-2640", "womanpoliceofficer" },
            { "1F469-200D-2708", "womanpilot" },
            { "1F469-200D-1F680", "womanastronaut" },
            { "1F469-200D-1F52C", "womanscientist" },
            { "1F469-200D-1F4BB", "womandeveloper" },
            { "1F469-200D-2695", "womanhealthworker" },
            { "1F469-200D-1F3A8", "womanartist" },
            { "1F93A", "womanfencer" },
            { "1F6B4-200D-2640", "womanridingbike" },
            { "1F9D8", "yoga" },
            { "1F930", "womanpregnant" },
            { "1F931", "breastfeeding" },
            { "1F469-200D-1F476", "womanholdingbaby" },
            { "1F6C0", "womanbath" },
            
            // People & Body - Other
            { "1F46A", "family" },
            { "1F484", "makeup" },
            { "1F444", "lips" },
            { "1F910", "lipssealed" },
            { "1F48B", "womanblowkiss" },
            
            // Animals & Nature - Mammals
            { "1F436", "dog" },
            { "1F431", "cat" },
            { "1F435", "monkey" },
            { "1F430", "bunny" },
            { "1F43A", "werewolf" },
            { "1F43B-200D-2744", "polarbear" },
            { "1F40F", "sheep" }, // Most common sheep emoji (ewe)
            { "1F411", "lamb" },
            { "1F434", "donkey" },
            { "1F98C", "reindeer" },
            { "1F994", "hedgehog" },
            { "1F9A5", "sloth" },
            { "1F984", "unicorn" },
            
            // Animals & Nature - Birds & Flying
            { "1F427", "penguin" },
            { "1F983", "turkey" },
            { "1F987", "batcry" },
            
            // Animals & Nature - Other
            { "1F40C", "snail" },
            { "1F41B", "bug" },
            { "1F421", "stingray" },
            
            // Animals & Nature - Fantasy/Spooky
            { "1F47B", "ghost" },
            { "1F9DF", "zombie" },
            { "1F9DB", "vampire" }, // Most common vampire (neutral)
            { "1F9DB-200D-2642", "dracula" },
            { "1F9D9-200D-2640", "witch" },
            
            // Food & Drink - Food
            { "1F355", "pizza" },
            { "1F382", "cake" },
            { "1F9C1", "cupcake" },
            { "1F967", "pie" },
            { "1F9C0", "cheese" },
            { "1F951", "avocadolove" },
            { "1F383", "pumpkin" },
            { "1F330", "acorn" },
            
            // Food & Drink - Beverages
            { "2615", "coffee" },
            { "1F379", "drink" },
            { "1F37A", "beer" },
            { "1F37E", "champagne" },
            
            // Travel & Places - Transport
            { "1F697", "car" },
            { "1F695", "taxi" },
            { "1F693", "policecar" },
            { "1F6B2", "bike" },
            { "2708", "plane" },
            
            // Travel & Places - Places
            { "1F3DD", "island" },
            
            // Activities - Sport
            { "1F3C3", "running" },
            { "1F3C8", "americanfootball" },
            { "26F8", "skate" },
            
            // Activities - Entertainment
            { "1F3AE", "games" },
            { "1F3AC", "movie" },
            { "1F3B5", "music" },
            { "1F3A7", "headphones" },
            
            // Activities - Awards
            { "1F3C6", "trophy" },
            { "1F947", "goldmedal" },
            { "1F948", "silvermedal" },
            { "1F949", "bronzemedal" },
            { "1F3AF", "target" },
            
            // Objects - Technology
            { "1F4BB", "computer" },
            { "1F4F1", "phone" },
            { "1F4F7", "camera" },
            
            // Objects - Money
            { "1F4B5", "cash" }, // Most common cash emoji (dollar banknote)
            { "1F4B0", "cash" },
            { "1F4B2", "cash" },
            { "1FA99", "cash" },
            
            // Objects - Mail/Communication
            { "1F4E7", "mail" },
            { "1F48C", "loveletter" },
            
            // Objects - Other
            { "1F381", "gift" },
            { "1F389", "party" },
            { "1F514", "bell" },
            { "1F511", "key" },
            { "1F4A3", "bomb" },
            { "23F0", "time" },
            { "2602", "umbrella" },
            { "1F6CD", "shopping" },
            
            // Symbols - Hearts
            { "2764", "heart" },
            { "1F494", "brokenheart" },
            { "1F49D", "lovegift" },
            { "1F48D", "ring" },
            
            // Symbols - Checkmarks/Symbols
            { "2705", "yes" },
            { "274C", "no" },
            { "1F4A9", "poop" },
            { "1F480", "skull" },
            
            // Symbols - Nature
            { "2B50", "star" },
            { "1F338", "flower" },
            { "1F308", "rainbow" },
            { "2600", "sun" },
            { "1F327", "rain" },
            { "2744", "snowflake" },
            { "1F386", "fireworks" },
            { "1F387", "sparkler" },
            
            // Symbols - Holiday
            { "1F385", "santa" },
            { "1F384", "xmastree" },
        };
}