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
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Praktika2012.Pages
{
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void BLogin_Click(object sender, RoutedEventArgs e)
        {
            var loggedUser = App.DB.Employee.FirstOrDefault(x => x.Login == TBLogin.Text && x.Password == TBPassword.Text && x.SecretWord == TBSecretWord.Text);
            if (loggedUser == null)
            {
                MessageBox.Show("Error");
                return;
            }
            NavigationService.Navigate(new MasterMainPage());
            var encoder = new MessagingToolkit.QRCode.Codec.QRCodeEncoder();
            var image = encoder.Encode($"{loggedUser.Name} {loggedUser.Phonenumber}");

            QRCodeImage.Source = Imaging.CreateBitmapSourceFromHBitmap(image.GetHbitmap(),
                                                                        IntPtr.Zero,
                                                                        Int32Rect.Empty,
                                                                        BitmapSizeOptions.FromEmptyOptions());
            QRCodeImage.Source = null;
            //if (loggedUser.IdRole == 2)
            //    NavigationService.Navigate(new MasterMainPage());
            //if (loggedUser.IdRole == 4)
            //    NavigationService.Navigate(new CallCenterMainPage());

        }
    }
}
