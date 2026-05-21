using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Automation.Peers;

namespace Skymu.UserControls
{
    public class FastRichTextBox : RichTextBox
    {
        public FastRichTextBox()
        {
            SpellCheck.SetIsEnabled(this, false);
            IsUndoEnabled = false;
        }

        protected override AutomationPeer OnCreateAutomationPeer() => null;
    }
}
