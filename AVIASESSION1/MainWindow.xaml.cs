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

namespace AVIASESSION1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        AVIASESSION1.Session1DataSet session1DataSet;
        // Загрузить данные в таблицу Users. Можно изменить этот код как требуется.
        AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter session1DataSetUsersTableAdapter;
        System.Windows.Data.CollectionViewSource usersViewSource;

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            session1DataSet = ((AVIASESSION1.Session1DataSet)(this.FindResource("session1DataSet")));
            // Загрузить данные в таблицу Users. Можно изменить этот код как требуется.
            session1DataSetUsersTableAdapter = new AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter();
            session1DataSetUsersTableAdapter.Fill(session1DataSet.Users);
            usersViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("usersViewSource")));
            usersViewSource.View.MoveCurrentToFirst();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int? value = session1DataSetUsersTableAdapter.LoginQuery(login.Text, pass.Text);
            if (value != null)
            {
                Admin admin = new Admin();
                admin.Show();
                this.Close();
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }
    }
}
