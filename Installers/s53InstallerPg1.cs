using System;
using System.Drawing;
using System.Windows.Forms;

namespace SkymuInstallers
{
    public partial class s53InstallerPg1 : Form
    {
        public s53InstallerPg1()
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

    }
}
