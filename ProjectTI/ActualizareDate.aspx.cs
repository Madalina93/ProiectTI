using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI.Views
{
    public partial class ActualizareDate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void afiseazaAngajati_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString); //@"Data Source=MSUTOI-PC;Initial Catalog=Angajati;Integrated Security=True"
           // string sql = "INSERT INTO student (name) values (@name)";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM DateAngajati", con);
            
          
          //SqlDataAdapter da = new SqlDataAdapter(cmd);
          //DataSet ds = new DataSet();
          //da.Fill(ds, "DateAngajati");
            afiseazaTotiAng.DataSource = cmd.ExecuteReader();
            afiseazaTotiAng.ViewStateMode = ViewStateMode.Enabled;
            afiseazaTotiAng.DataBind();
            if(afiseazaTotiAng.Items.Count > 0)
            {
                totalcount.Text = afiseazaTotiAng.Items.Count.ToString();
            }
            
            con.Close();
            con.Dispose();
        }


    }
}