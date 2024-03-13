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

namespace СловарьТестировщика
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class AddPage : Page
    {
        private Dictionary _currentDict = new Dictionary();

        public AddPage()
        {
            InitializeComponent();

            DataContext = _currentDict;
        }

        private void ButtonSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(Term.Text))
                errors.AppendLine("Укажите понятие!");
            if (string.IsNullOrWhiteSpace(Opr.Text))
                errors.AppendLine("Укажите определение!");
            if (string.IsNullOrWhiteSpace(Sou.Text))
                errors.AppendLine("Укажите источник!");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentDict.id == 0)
                DictEntities.GetContext().Dictionary.Add(_currentDict);

            try
            {
                DictEntities.GetContext().SaveChanges();
                MessageBox.Show("Данные успешно сохранены!");
                NavigationService.Navigate(new DictPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new DictPage());
        }


    }
}
