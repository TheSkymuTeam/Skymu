/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Windows.Forms;

namespace SkymuInstallers
{
    public partial class installselector : Form
    {
        public installselector()
        {
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void loader(object sender, EventArgs e)
        {
            comboBox1.Items.Add("Select your era");
            comboBox1.Items.Add("Skype 5.3");
            comboBox1.Items.Add("Skype 7.0");
            comboBox1.SelectedIndex = 0;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 1)
            {
                s53InstallerPg1 form = new s53InstallerPg1();
                form.Show();

            }

            else if (comboBox1.SelectedIndex == 2)
            {
                s7InstallerPg1 form = new s7InstallerPg1();
                form.Show();
            }

            else
            {
                MessageBox.Show("They love crushing loaf. However, you have no DIAMOND ARMOR, FULL SET.\n\n(Please select an Era first before continuing)");
            }
        }
    }
}
