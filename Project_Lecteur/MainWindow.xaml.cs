using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Project_Lecteur
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Update;
            timer.Start();
        }

        private void Update( object sender, EventArgs e)
        {
            if(player.Source!= null)
            {
                prog.Minimum = 0;
                prog.Maximum = player.NaturalDuration.TimeSpan.TotalSeconds;
                prog.Value = player.Position.TotalSeconds ;
            }
        }

        public MediaPlayer player = new MediaPlayer();
        private void OpenFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Filter = "Mp3 files (*.mp3) |*.mp3|All files (*.*)|*.*";
            if(fileDialog.ShowDialog() == true)
            {
                player.Open(new System.Uri(fileDialog.FileName));
                player.Play();
                FilePath.Text = fileDialog.FileName;
            }
        }

        private void Jouer_Click(object sender, RoutedEventArgs e)
        {
            player.Play();
        }

        private void pause_Click(object sender, RoutedEventArgs e)
        {
            player.Pause();
        }

        private void stop_Click(object sender, RoutedEventArgs e)
        {
            player.Stop();
        }

        private void vol_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            player.Volume = vol.Value / 100;

        }

        private void FilePath_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
