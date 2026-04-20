using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
