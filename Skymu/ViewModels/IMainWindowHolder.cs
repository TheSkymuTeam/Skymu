/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

// TODO get the fucking rid of this 

using System;
using System.Threading.Tasks;

namespace Skymu.ViewModels
{
    public interface IMainWindowHolder
    {
        void Show();
        Task BeginLoading();
        event EventHandler Ready;
    }
}
