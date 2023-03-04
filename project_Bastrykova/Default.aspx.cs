using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace project_Bastrykova
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var user = (from u in data.User
                        where u.login.Equals(Login.Text)
                        select u).ToArray();
            if (user.Count() > 0)
            {
                FormsAuthentication.RedirectFromLoginPage(Login.Text, true);
            }
            else
            {
                Label1.Text = "Вы ввели неверные данные";
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                User user = new project_Bastrykova.User();
                user.login = TextBox1.Text;
                user.password = TextBox2.Text;

                data.GetTable<User>().InsertOnSubmit(user);
                data.SubmitChanges();
                Label3.Text = "Регистрация прошла успешно!";
            }
            catch
            {
                Label3.Text = "Что-то пошло не так...";
            }
        }
    }
}