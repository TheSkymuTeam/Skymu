using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace SeanKypeUniversal
{
    public partial class s7InstallerPg3 : Form
    {
        public s7InstallerPg3()
        {

            InitializeComponent();
        }

        private void Installer_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            panel1.Paint += panel1_Paint;
            header.Text = header.Text.Replace(".", "\u200A.");
            
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

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
