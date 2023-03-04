using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace project_Bastrykova
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected bool IsAuthenticated()
        {
            var check = false;
            if ((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                check = true;
            return check;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsAuthenticated())
            {
                try
                {
                    MailMessage msg = new MailMessage();
                    string name = Name.Text;
                    string email = Email.Text;
                    msg.From = new MailAddress("no_rep.ly_no@mail.ru");
                    msg.To.Add("no_rep.ly_no@mail.ru");
                    msg.Subject = "Анкета обратной связи";
                    msg.Body = "Обратная связь от: " + name + "\nE-mail: " + email
                        + "\nПожелания и замечания: " + Comment.Text;
                    SmtpClient sc = new SmtpClient("smtp.mail.ru");
                    sc.Port = 25;
                    sc.Credentials = new NetworkCredential("no_rep.ly_no@mail.ru", "UdIAUdaot33*");
                    sc.EnableSsl = true;
                    sc.Send(msg);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Сообщение успешно отправлено!');", true);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
                Label1.Text = "Отправка сообщения доступна только авторизованным пользователям!";
        }
    }
}