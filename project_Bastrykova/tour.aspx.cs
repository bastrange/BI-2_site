    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_Bastrykova
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.GetCurrent(Page).RegisterPostBackControl(DropDownList1);
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("Все месяцы");
                DropDownList1.Items.Add("Июнь");
                DropDownList1.Items.Add("Август");
                DropDownList1.Items.Add("Сентябрь");
                DropDownList1.Items.Add("Октябрь");
            }
        }

        protected IEnumerable<Concert> GetData(string month)
        {
            if (month == "Все месяцы")
            {
                var row = (from line in data.Concert
                           select line).ToArray();
                return row;
            }
            else
            {
                var row = (from line in data.Concert
                           where line.month.Equals(month)
                           select line).ToArray();
                return row;
            }
        }
    }
}