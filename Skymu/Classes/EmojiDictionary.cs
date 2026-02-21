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
            { "1F605", "whew" },
            { "1F60B", "mmm" },
            { "1F60D", "hearteyes" },
            { "1F60E", "cool" },
            { "1F60F", "smirk" },
            { "1F618", "kiss" }, // Most common kiss emoji (face blowing kiss)
            { "1F617", "kiss" },
            { "1F619", "kiss" },
            { "1F61A", "kiss" },
            { "1F609", "wink" },
            { "1F923", "rofl" },
            { "1F929", "stareyes" },
            { "1F970", "inlove" },
            { "1F633", "blush" },
            
            // Smileys & Emotion - Playful/Silly
            { "1F61B", "tongueout" }, // Most common tongue out (plain)
            { "1F61C", "tongueout" },
            { "1F61D", "tongueout" },
            { "1F913", "nerdy" },
            { "1F914", "think" },
            { "1F917", "hug" },
            { "1F644", "sarcastic" },
            
            // Smileys & Emotion - Neutral/Skeptical
            { "2639", "sad" },
            { "1F610", "dull" },
            { "1F611", "unamused" },
            { "1F612", "envy" },
            { "1F636", "speechless" },
            
            // Smileys & Emotion - Negative
            { "1F614", "emo" },
            { "1F61E", "sadness" },
            { "1F61F", "worry" },
            { "1F621", "headbang" }, // Most common angry emoji (pouting face)
            { "1F620", "angry" },
            { "1F62D", "cry" }, // Most common cry emoji (loudly crying face)
            { "1F622", "cry" },
            { "1F926", "facepalm" },
            
            // Smileys & Emotion - Surprised/Concerned
            { "1F628", "fear" },
            { "1F62E", "surprised" },
            { "1F631", "shock" },
            
            // Smileys & Emotion - Sleepy/Sick
            { "1F62A", "tired" },
            { "1F634", "sleepy" },
            { "1F912", "ill" },
            { "1F922", "puke" }, // Most common puke emoji (nauseated face)
            { "1F92E", "puke" },
            { "1F971", "yawn" },
            { "1F974", "drunk" },
            
            // Smileys & Emotion - Other
            { "1F607", "angel" },
            { "1F525", "anger" },
            { "1F608", "devil" },
            { "1F613", "sweat" },
            { "1F910", "lipssealed" },
            { "1F92C", "swear" },
            { "1F92D", "giggle" },
            { "1F976", "shivering" },
            
            // People & Body - Hand gestures
            { "270A", "glassceiling" },
            { "270B", "stop" },
            { "270C", "victory" },
            { "1F442", "listening" },
            { "1F44A", "fistbump" },
            { "1F44B", "hi" },
            { "1F44C", "ok" },
            { "1F44E", "no" },
            { "1F44D", "yes" },
            { "274C", "no" },
            { "2705", "yes" },
            { "1F44F", "clap" },
            { "1F449", "poke" },
            { "1F595", "finger" },
            { "1F64C", "handsinair" },
            { "1F64F", "praying" },
            { "1F918", "headbang" },
            { "1F91A", "talktothehand" },
            { "1F91D", "handshake" },
            { "1F91E", "fingerscrossed" },
            { "1F4AA", "muscle" },
            { "1FAF6", "hearthands" },
            
            // People & Body - Person/Activity
            { "1F468", "man" },
            { "1F469", "woman" },
            { "1F475", "gran" },
            { "1F483", "dance" },
            { "1F57A", "discodancer" },
            { "1F647", "bow" },
            { "1F930", "womanpregnant" },
            { "1F931", "breastfeeding" },
            { "1F933", "selfie" },
            { "1F937-200D-2640", "womanshrug" },
            { "1F937-200D-2642", "manshrug" },
            { "1F977", "ninja" },
            { "1F9B8", "hero" },
            { "1F9D8", "yoga" },
            
            // People & Body - Women activities
            { "1F469-200D-1F33E", "womanfarmer" },
            { "1F469-200D-1F373", "womanchef" },
            { "1F469-200D-1F393", "womangraduate" },
            { "1F469-200D-1F3A8", "womanartist" },
            { "1F469-200D-1F3EB", "womanteacher" },
            { "1F469-200D-1F476", "womanholdingbaby" },
            { "1F469-200D-1F4BB", "womandeveloper" },
            { "1F469-200D-1F527", "womanmechanic" },
            { "1F469-200D-1F52C", "womanscientist" },
            { "1F469-200D-1F680", "womanastronaut" },
            { "1F469-200D-1F692", "womanfirefighter" },
            { "1F469-200D-2695", "womanhealthworker" },
            { "1F469-200D-2696", "womanjudge" },
            { "1F469-200D-2708", "womanpilot" },
            { "1F46E-200D-2640", "womanpoliceofficer" },
            { "1F93A", "womanfencer" },
            { "1F6B4-200D-2640", "womanridingbike" },
            { "1F6C0", "womanbath" },
            
            // People & Body - Other
            { "1F444", "lips" },
            { "1F46A", "family" },
            { "1F484", "makeup" },
            { "1F48B", "womanblowkiss" },
            
            // Animals & Nature - Mammals
            { "1F40F", "sheep" }, // Most common sheep emoji (ewe)
            { "1F411", "lamb" },
            { "1F418", "ganesh" },
            { "1F430", "bunny" },
            { "1F431", "cat" },
            { "1F434", "donkey" },
            { "1F435", "monkey" },
            { "1F436", "dog" },
            { "1F437", "piggybank" },
            { "1F43A", "werewolf" },
            { "1F43B-200D-2744", "polarbear" },
            { "1F984", "unicorn" },
            { "1F98A", "foxhug" },
            { "1F98C", "reindeer" },
            { "1F994", "hedgehog" },
            { "1F9A5", "sloth" },
            
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
            { "1F9DB", "vampire" }, // Most common vampire (neutral)
            { "1F9DB-200D-2642", "dracula" },
            { "1F9D9-200D-2640", "witch" },
            { "1F9DF", "zombie" },
            
            // Food & Drink - Food
            { "1F330", "acorn" },
            { "1F335", "cactuslove" },
            { "1F350", "greatpear" },
            { "1F355", "pizza" },
            { "1F357", "tandoorichicken" },
            { "1F36C", "laddu" },
            { "1F382", "cake" },
            { "1F383", "pumpkin" },
            { "1F951", "avocadolove" },
            { "1F95A", "chicksegg" },
            { "1F967", "pie" },
            { "1F9C0", "cheese" },
            { "1F9C1", "cupcake" },
            
            // Food & Drink - Beverages
            { "2615", "coffee" },
            { "1F375", "chai" },
            { "1F379", "drink" },
            { "1F37A", "beer" },
            { "1F37C", "bottlefeeding" },
            { "1F37E", "champagne" },
            { "1F942", "cheers" },
            
            // Travel & Places - Transport
            { "2708", "plane" },
            { "1F680", "launch" },
            { "1F693", "policecar" },
            { "1F695", "taxi" },
            { "1F697", "car" },
            { "1F6B2", "bike" },
            
            // Travel & Places - Places
            { "1F319", "mooning" },
            { "1F3DD", "island" },
            { "1F3E0", "movinghome" },
            { "1F54C", "eid" },
            { "1F54E", "hanukkah" },
            { "1F5FC", "parislove" },
            { "1F6BD", "ontheloo" },
            
            // Activities - Sport
            { "26BD", "womanfootball" },
            { "26F8", "skate" },
            { "1F3C0", "slamdunk" },
            { "1F3C3", "running" },
            { "1F3C8", "americanfootball" },
            
            // Activities - Entertainment
            { "1F3A4", "dropthemic" },
            { "1F3A7", "headphones" },
            { "1F3AC", "movie" },
            { "1F3AE", "games" },
            { "1F3B5", "music" },
            { "1F4FA", "tvbinge" },
            
            // Activities - Awards
            { "1F3AF", "target" },
            { "1F3C6", "trophy" },
            { "1F947", "goldmedal" },
            { "1F948", "silvermedal" },
            { "1F949", "bronzemedal" },
            
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
            { "1F4A1", "idea" },
            { "1F4A2", "anger" },
            { "1F4A3", "bomb" },
            { "1F4AC", "talk" },
            { "1F4AD", "dream" },
            { "1F4E3", "cheerleader" },
            { "1F4E7", "mail" },
            { "1F48C", "loveletter" },
            
            // Objects - Other
            { "23F0", "time" },
            { "2602", "umbrella" },
            { "1F340", "goodluck" },
            { "1F381", "gift" },
            { "1F389", "party" },
            { "1F511", "key" },
            { "1F514", "bell" },
            { "1F6CD", "shopping" },
            { "1FA74", "chappal" },
            { "1FA94", "diya" },
            { "1F9FF", "nazar" },
            { "1F4DA", "learn" },
            
            // Symbols - Hearts
            { "2764", "heart" },
            { "1F48D", "ring" },
            { "1F494", "brokenheart" },
            { "1F49D", "lovegift" },
            
            // Symbols - Checkmarks/Symbols
            { "1F480", "skull" },
            { "1F4A9", "poop" },
            { "1F534", "red" },
            
            // Symbols - Nature
            { "2600", "sun" },
            { "2744", "snowflake" },
            { "2B50", "star" },
            { "1F308", "rainbow" },
            { "1F327", "rain" },
            { "1F338", "flower" },
            { "1F386", "fireworks" },
            { "1F387", "sparkler" },
            
            // Symbols - Holiday
            { "1F384", "xmastree" },
            { "1F385", "santa" },
        };
}