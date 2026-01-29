using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace SkymuInstallers
{
    public partial class s7InstallerPg1 : Form
    {
        public s7InstallerPg1()
        {

            InitializeComponent();
            CenterToParent();
        }

        private void Installer_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            panel1.Paint += panel1_Paint;
            header.Text = header.Text.Replace(".", "\u200A.");
            comboBox1.Items.Add("English");
            comboBox1.SelectedIndex = 0;
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

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var page2 = new s7InstallerPg4();
            page2.Show();
        }

    }
}
