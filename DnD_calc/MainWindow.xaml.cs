using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
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

namespace DnD_calc
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        StringBuilder PositiveSkillsBuilder = new StringBuilder();
        StringBuilder NiggativeSkillsBuilder = new StringBuilder();

        public Classes.TraitsData localdata;
        public MainWindow()
        {
            InitializeComponent();
            //PositiveListView.ItemsSource = Data.DnD_DBEntities.GetContext().Positive.ToList();
            //NiggativeListView.ItemsSource = Data.DnD_DBEntities.GetContext().Niggative.ToList();


            string filePath = Directory.GetCurrentDirectory() + @"\dnd_data.json";
            if (File.Exists(filePath))
            {
                string json = File.ReadAllText(filePath);
                localdata = JsonConvert.DeserializeObject<Classes.TraitsData>(json);
                PositiveListView.ItemsSource = localdata.Positive.ToList();
                NiggativeListView.ItemsSource = localdata.Niggative.ToList();

            }
            else
            {
                MessageBox.Show("База Данных не найдена!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                
            }

        }

        private void Positive_Check_Checked(object sender, RoutedEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.PositiveTrait selectedItem)
            {
                int score = Int32.Parse(PointScore.Text);
                score = score - selectedItem.Point_Pos;
                PointScore.Text = score.ToString();

                PositiveSkillsBuilder.AppendLine($"{selectedItem.Char_Pos}");
                UpdateSkillLists();
            }
        }

        private void Niggative_Check_Checked(object sender, RoutedEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.NegativeTrait selectedItem)
            {
                int score = Int32.Parse(PointScore.Text);
                score = score + selectedItem.Point_Nigg;
                PointScore.Text = score.ToString();

                NiggativeSkillsBuilder.AppendLine($"{selectedItem.Char_Nigg}");
                UpdateSkillLists();
            }
        }

        private void UpdateSkillLists()
        {
            GoodSkillList.Text = PositiveSkillsBuilder.ToString();
            BadSkillList.Text = NiggativeSkillsBuilder.ToString();
            if (Int32.Parse(PointScore.Text) >= 0)
            {
                PointScore.Foreground = Brushes.Green;
            }
            else
            {
                PointScore.Foreground = Brushes.Crimson;
            }
        }

        private void Niggative_Check_Unchecked(object sender, RoutedEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.NegativeTrait selectedItem)
            {
                int score = Int32.Parse(PointScore.Text);
                score = score - selectedItem.Point_Nigg;
                PointScore.Text = score.ToString();

                var skillString = $"{selectedItem.Char_Nigg}" + Environment.NewLine;
                NiggativeSkillsBuilder.Replace(skillString, string.Empty);
                UpdateSkillLists();
            }
        }

        private void Positive_Check_Unchecked(object sender, RoutedEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.PositiveTrait selectedItem)
            {
                int score = Int32.Parse(PointScore.Text);
                score = score + selectedItem.Point_Pos;
                PointScore.Text = score.ToString();

                var skillString = $"{selectedItem.Char_Pos}" + Environment.NewLine;
                PositiveSkillsBuilder.Replace(skillString, string.Empty);
                UpdateSkillLists();
            }
        }

        private void Positive_Check_MouseEnter(object sender, MouseEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.PositiveTrait selectedItem)
            {
                DescriptionBox.Text = selectedItem.Desc_Pos;
            }
        }

        private void Niggative_Check_MouseEnter(object sender, MouseEventArgs e)
        {
            if ((sender as CheckBox)?.DataContext is Classes.NegativeTrait selectedItem)
            {
                DescriptionBox.Text = selectedItem.Desc_Nigg;
            }
        }
    }
}

//private static DnD_DBEntities _context;

//public static DnD_DBEntities GetContext()
//{
//    if (_context == null)
//    {
//        _context = new DnD_DBEntities();
//    }
//    return _context;
//}