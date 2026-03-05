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
using System.Drawing;
using System.Windows.Forms;

namespace SkymuInstallers
{
    public partial class s53InstallerPg3 : Form
    {
        public s53InstallerPg3()
        {
            //this.Opacity = 0.5;

            InitializeComponent();
            CenterToParent();
        }

        private void InstallerPg1_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            panel1.Paint += panel1_Paint;
            comboBox1.Items.Add("English");
            comboBox1.SelectedIndex = 0;
            this.Text = "Skype\u2122 - Install";
            this.AcceptButton = button1;
        }
        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            Color borderColor = ColorTranslator.FromHtml("#dadada");
            int borderWidth = 1;

            using (Pen pen = new Pen(borderColor, borderWidth))
            {
                Rectangle rect = panel1.ClientRectangle;
                rect.Width -= 1;
                rect.Height -= 1;
                e.Graphics.DrawRectangle(pen, rect);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

    }
}
