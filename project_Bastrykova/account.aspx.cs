using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Threading;

namespace project_Bastrykova
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
         
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                User user = (from u in data.User
                             where u.login.Equals(Login.Text)
                             select u).Single<User>();

                data.GetTable<User>().DeleteOnSubmit(user);
                data.SubmitChanges();
                Label1.Text = "Пользователь успешно удален!";
                FormsAuthentication.SignOut();

                string url = HttpContext.Current.Request.Url.AbsoluteUri;

                String dataurl = url.Split('?')[1].Split('=')[1];
                //string url = Request.QueryString["url"];
                Response.Redirect(dataurl);
                //Response.Redirect("main_page.aspx");

            }
            catch (Exception exp)
            {
                Label1.Text = "Что-то пошло не так....";
            }
        }
    }
}