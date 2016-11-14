using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI
{
    public partial class Procente : System.Web.UI.Page 
    {
         string dbPassword;
        
         public void MessageBox(String Message)
         {
             Page.ClientScript.RegisterStartupScript(
                Page.GetType(),
                "MessageBox",
                "<script language='javascript'>alert('" + Message + "'); </script>"
             );

         }

        private string hashedPassword;
        SqlDataAdapter adap;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            DataTable dt = this.GetData();
            hashedPassword= dt.Rows[0]["Parola"].ToString();
                
        }
        private DataTable GetData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);

            using (SqlCommand cmd = new SqlCommand("SELECT ProcenteID, CAS, Sanat, Somaj, Impozit, Parola FROM Procente"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
        
        public class Security
        {
            public static string HashSHA1(string value)
            {
                var sha1 = System.Security.Cryptography.SHA1.Create();
                var inputBytes = Encoding.ASCII.GetBytes(value);
                var hash = sha1.ComputeHash(inputBytes);

                var sb = new StringBuilder();
                for (var i = 0; i < hash.Length; i++)
                {
                    sb.Append(hash[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }

        protected void SalveazaProcente_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);
                con.Open();
                var queryString = String.Format("UPDATE Procente SET CAS={0}, Sanat={1}, Somaj={2}, Impozit={3}, Parola='{4}' WHERE ProcenteID=1",
                    cas.Text, sanatate.Text, somaj.Text, impozit.Text, Security.HashSHA1(parola.Text));
                SqlCommand com = new SqlCommand(queryString, con);
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            { }
        }

        protected void RenuntaProcente_Click(object sender, EventArgs e)
        {
            DataTable dt = this.GetData();

            cas.Text = dt.Rows[0]["CAS"].ToString();
            sanatate.Text = dt.Rows[0]["Sanat"].ToString();
            somaj.Text = dt.Rows[0]["Somaj"].ToString();
            impozit.Text = dt.Rows[0]["Impozit"].ToString();
            parola.Text = dt.Rows[0]["Parola"].ToString();
        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {
        }

        // asd = F10E2821BBBEA527EA02200352313BC059445190
        protected void Continuati_Click(object sender, EventArgs e)
        {
            if (string.Compare(hashedPassword, Security.HashSHA1(TxtPass.Text)) == 0)
            {
                DataTable dt = this.GetData();

                cas.Text = dt.Rows[0]["CAS"].ToString();
                sanatate.Text = dt.Rows[0]["Sanat"].ToString();
                somaj.Text = dt.Rows[0]["Somaj"].ToString();
                impozit.Text = dt.Rows[0]["Impozit"].ToString();
                parola.Text = dt.Rows[0]["Parola"].ToString();

                MessageBox("Parola corecta!");
                TableProcente.Visible = true;
                SalveazaP.Visible = true;
                RenuntaP.Visible = true;
                lblPass.Visible = false;
                TxtPass.Visible = false;
                Button3.Visible = false;
            }
            else
            {
                MessageBox("Parola incorecta!");
            }
        }

    }
}