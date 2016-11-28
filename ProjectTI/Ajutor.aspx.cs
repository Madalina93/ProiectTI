using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = DateTime.Now.ToLongTimeString();
        }

        protected void LinkButtonAdaugare_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adaugare.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ActualizareDate.aspx");
        }

    }
}