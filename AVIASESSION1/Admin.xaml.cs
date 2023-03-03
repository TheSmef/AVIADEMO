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
using System.Windows.Shapes;

namespace AVIASESSION1
{
    /// <summary>
    /// Логика взаимодействия для Admin.xaml
    /// </summary>
    public partial class Admin : Window
    {
        public Admin()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            AVIASESSION1.Session1DataSet session1DataSet = ((AVIASESSION1.Session1DataSet)(this.FindResource("session1DataSet")));
            // Загрузить данные в таблицу Users. Можно изменить этот код как требуется.
            AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter session1DataSetUsersTableAdapter = new AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter();
            session1DataSetUsersTableAdapter.Fill(session1DataSet.Users);
            System.Windows.Data.CollectionViewSource usersViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("usersViewSource")));
            usersViewSource.View.MoveCurrentToFirst();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            AddUser add = new AddUser();
            add.Show();
            this.Close();
        }
    }
}
