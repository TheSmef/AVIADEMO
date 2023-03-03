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
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            AVIASESSION1.Session1DataSet session1DataSet = ((AVIASESSION1.Session1DataSet)(this.FindResource("session1DataSet")));
            // Загрузить данные в таблицу Offices. Можно изменить этот код как требуется.
            AVIASESSION1.Session1DataSetTableAdapters.OfficesTableAdapter session1DataSetOfficesTableAdapter = new AVIASESSION1.Session1DataSetTableAdapters.OfficesTableAdapter();
            session1DataSetOfficesTableAdapter.Fill(session1DataSet.Offices);
            System.Windows.Data.CollectionViewSource officesViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("officesViewSource")));
            officesViewSource.View.MoveCurrentToFirst();
        }

        private void officesComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
