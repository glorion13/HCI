using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Browser;
using System.IO; 

namespace Downloader
{
    public partial class MainPage : UserControl
    {
        public MainPage()
        {
            InitializeComponent();
        }

        public void Save(string text)
        {
            SaveFileDialog sfd = new SaveFileDialog()
            {
                DefaultExt = "txt",
                Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*",
                FilterIndex = 1
            };
            if (sfd.ShowDialog() == true)
            {
                // User selected item. Only property we can get to is.
                using (Stream stream = sfd.OpenFile())
                {
                    using (var writer = new StreamWriter(stream))
                    {
                        writer.Write(text);
                        writer.Close();
                    }
                    stream.Close();
                }
            }
        }

        private void Image_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            // set a global variable
            string text = (string)HtmlPage.Window.Invoke("getTextToSave");

            Save(text);
        }
    }
}
