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
    /// Логика взаимодействия для AddUser.xaml
    /// </summary>
    public partial class AddUser : Window
    {
        public AddUser()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }
        AVIASESSION1.Session1DataSet session1DataSet;
        // Загрузить данные в таблицу Offices. Можно изменить этот код как требуется.
        AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter session1DataTableAdapter;
        AVIASESSION1.Session1DataSetTableAdapters.TableAdapterManager session1DataOfficeTableAdapter;
        System.Windows.Data.CollectionViewSource officesViewSource;

        private void Window_Loaded_1(object sender, RoutedEventArgs e)
        {

            session1DataSet = ((AVIASESSION1.Session1DataSet)(this.FindResource("session1DataSet")));
            // Загрузить данные в таблицу Offices. Можно изменить этот код как требуется.
            session1DataTableAdapter = new AVIASESSION1.Session1DataSetTableAdapters.UsersTableAdapter();
            officesViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("officesViewSource")));
            officesViewSource.View.MoveCurrentToFirst();
            // Загрузить данные в таблицу Offices. Можно изменить этот код как требуется.
            AVIASESSION1.Session1DataSetTableAdapters.OfficesTableAdapter session1DataSetOfficesTableAdapter = new AVIASESSION1.Session1DataSetTableAdapters.OfficesTableAdapter();
            session1DataSetOfficesTableAdapter.Fill(session1DataSet.Offices);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Admin admin = new Admin();
            admin.Show();
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            session1DataTableAdapter.InsertQuery(2, email.Text, Password.Text, firstname.Text, Lastname.Text, int.Parse(officesComboBox.SelectedValue.ToString()), date.Text, true);
        }

        private void officesComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
