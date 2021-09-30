using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form1 : Form
    {
        public event EventHandler Click;
        public Form1()
        {
            InitializeComponent();
            for (int i = 1; i < 41; i++)
            {
                napszam.Items.Add(i);
            }
            hozzaad.Enabled = false;
        }
        int[,] tomb = new int[40, 2];
        private void buttonisclicked(object sender, EventArgs e)
        {
            int nap =Convert.ToInt32( napszam.SelectedItem);
            for (int i = 0; i < nap; i++)
            {
                napszam.Items.Remove(i+1);
            }

            tomb[nap-1, 0] =Convert.ToInt32( elkeszitett.Text);
            tomb[nap-1, 1] = Convert.ToInt32(eladott.Text);

            richTextBox1.Clear();
            int keszleten = 0;
            for (int i = 0; i < 40; i++)
            {
                keszleten += tomb[i, 0] - tomb[i, 1];
                richTextBox1.Text += (i+1) + ".nap: +"+tomb[i,0]+" -"+tomb[i,1]+" ="+keszleten+"\n";
            }
            
        }

        private void elkeszitett_TextChanged(object sender, EventArgs e)
        {
            int.TryParse(elkeszitett.Text, out int szam);
            if (szam<0)
            {
                label4.Text="Meghalsz!";
            }
        }

        private void eladott_TextChanged(object sender, EventArgs e)
        {
            int nap = Convert.ToInt32(napszam.SelectedItem);
            int keszleten = 0;
            for (int i = 0; i < nap; i++)
            {
                keszleten += tomb[i, 0] - tomb[i, 1];
                int.TryParse(elkeszitett.Text, out int szam);
                if (szam>keszleten)
                {
                    label4.Text = "Hülye vagy!";
                    hozzaad.Enabled = true;
                }
                else
                {
                    label4.Text = "Az adat megfelelő!";
                }
            }
        }
    }
}
