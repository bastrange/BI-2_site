using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_Bastrykova
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected IEnumerable<Group> GetData()
        {
            var row = (from line in data.Group
                       select line).ToArray();
            return row;
        }

        protected string[] GetImages()
        {
            var images = new string[6];
            images[0] = "leva.jpg";
            images[1] = "shura.jpg";
            images[2] = "yan.jpg";
            images[3] = "boris.jpg";
            images[4] = "max.jpg";
            images[5] = "zvonok.jpg";
            return images;
        }
    }
}