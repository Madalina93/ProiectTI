using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI.Views
{
    public partial class ActualizareDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void afiseazaAngajati_Click(object sender, EventArgs e)
        {
            
             SqlConnection con = new SqlConnection(@"Data Source=MSUTOI-PC;Initial Catalog=Angajati;Integrated Security=True");
           // string sql = "INSERT INTO student (name) values (@name)";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM DateAngajati", con);
        }
    }
}