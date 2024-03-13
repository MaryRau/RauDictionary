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
    /// Логика взаимодействия для DictPage.xaml
    /// </summary>
    public partial class DictPage : Page
    {
        public DictPage()
        {
            InitializeComponent();
            DataGridTesting.ItemsSource = DictEntities.GetContext().Dictionary.ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddPage());
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DictEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                DataGridTesting.ItemsSource = DictEntities.GetContext().Dictionary.ToList();
            }
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var termsForRemoving = DataGridTesting.SelectedItems.Cast<Dictionary>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить записи в количестве {termsForRemoving.Count()} элементов?", "Внимание",
                            MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    DictEntities.GetContext().Dictionary.RemoveRange(termsForRemoving);
                    DictEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные успешно удалены!");

                    DataGridTesting.ItemsSource = DictEntities.GetContext().Dictionary.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
    }
}
