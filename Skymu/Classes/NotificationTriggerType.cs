namespace Skymu.Classes
{
    public enum NotificationTriggerType
    {
        ALL = 1,
        PING = 2,
        DM = 4,
        PDM = PING | DM,
    }
}
