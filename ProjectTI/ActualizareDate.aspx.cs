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
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM DateAngajati", con);


            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "DateAngajati");
            afiseazaTotiAng.DataSource = cmd.ExecuteReader();
            afiseazaTotiAng.ViewStateMode = ViewStateMode.Enabled;
            afiseazaTotiAng.DataBind();
            if (afiseazaTotiAng.Items.Count > 0)
            {
                totalcount.Text = afiseazaTotiAng.Items.Count.ToString();
            }

            con.Close();
            con.Dispose();


        }
       protected void CautaAngajati_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);
            {
                var searchParts = TextBox1.Text.Split(' ');
                var query = String.Format("SELECT * FROM DateAngajati WHERE Nume = '{0}' OR Prenume = '{0}'", searchParts[0]);

                if (searchParts.Count() > 1)
                    query += " OR Nume = '" + searchParts[1] + "' OR Prenume = '" + searchParts[1] + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                try
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    DataTable dt = new DataTable();
                    
                    sda.Fill(dt);
                    afiseazaTotiAng.DataSource = dt;
                    afiseazaTotiAng.DataBind();
                    con.Close();
                    con.Dispose();
                }

                    
                catch (Exception ex)
                { }
            }
        }


        protected void OnEdit(object sender, EventArgs e)
        {
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            this.ToggleElements(item, true);
        }
        private void ToggleElements(RepeaterItem item, bool isEdit)
        {
            //Toggle Buttons.
            item.FindControl("lnkEdit").Visible = !isEdit;
            item.FindControl("lnkUpdate").Visible = isEdit;
            item.FindControl("lnkCancel").Visible = isEdit;
            item.FindControl("lnkDelete").Visible = !isEdit;

            //Toggle Labels.
            item.FindControl("lblNume").Visible = !isEdit;
            item.FindControl("lblPrenume").Visible = !isEdit;
            item.FindControl("lblFunctie").Visible = !isEdit;
            item.FindControl("lblSalarN").Visible = !isEdit;
            item.FindControl("lblSalarR").Visible = !isEdit;
            item.FindControl("lblVechime").Visible = !isEdit;
            item.FindControl("lblSpor").Visible = !isEdit;
            item.FindControl("lblPremii").Visible = !isEdit;
            item.FindControl("lblCompensatie").Visible = !isEdit;
            item.FindControl("lblAvans").Visible = !isEdit;
            item.FindControl("lblRetineri").Visible = !isEdit;


            //Toggle TextBoxes.
            item.FindControl("txtNume").Visible = isEdit;
            item.FindControl("txtPrenume").Visible = isEdit;
            item.FindControl("txtFunctie").Visible = isEdit;
            item.FindControl("txtSalarN").Visible = isEdit;
            item.FindControl("txtSalarR").Visible = isEdit;
            item.FindControl("txtVechime").Visible = isEdit;
            item.FindControl("txtSpor").Visible = isEdit;
            item.FindControl("txtPremii").Visible = isEdit;
            item.FindControl("txtCompensatie").Visible = isEdit;
            item.FindControl("txtAvans").Visible = isEdit;
            item.FindControl("txtRetineri").Visible = isEdit;
        }

        protected void OnUpdate(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int nrCrt = int.Parse((item.FindControl("lblNrCrt") as Label).Text);
            string nume = (item.FindControl("txtNume") as TextBox).Text.Trim();
            string prenume = (item.FindControl("txtPrenume") as TextBox).Text.Trim();
            string functie = (item.FindControl("txtFunctie") as TextBox).Text.Trim();
            string salarNegociat = (item.FindControl("txtSalarN") as TextBox).Text.Trim();
            string salarRealizat = (item.FindControl("txtSalarR") as TextBox).Text.Trim();
            string vechime = (item.FindControl("txtVechime") as TextBox).Text.Trim();
            string spor = (item.FindControl("txtSpor") as TextBox).Text.Trim();
            string premiiBrute = (item.FindControl("txtPremii") as TextBox).Text.Trim();
            string compensatie = (item.FindControl("txtCompensatie") as TextBox).Text.Trim();
            string avans = (item.FindControl("txtAvans") as TextBox).Text.Trim();
            string retineri = (item.FindControl("txtRetineri") as TextBox).Text.Trim();


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);

            using (SqlCommand cmd = new SqlCommand("UPDATE DateAngajati SET Nume=@Nume, Prenume=@Prenume, Functie=@Functie, SalarNegociat=@SalarNegociat, SalarRealizat=@SalarRealizat, Vechime=@Vechime, Spor=@Spor, PremiiBrute=@PremiiBrute, Compensatie=@Compensatie, Avans=@Avans, Retineri=@Retineri WHERE NrCrt=@NrCrt"))
            {
                cmd.Parameters.AddWithValue("@NrCrt", nrCrt);
                cmd.Parameters.AddWithValue("@Nume", nume);
                cmd.Parameters.AddWithValue("@Prenume", prenume);
                cmd.Parameters.AddWithValue("@Functie", functie);
                cmd.Parameters.AddWithValue("@SalarNegociat", salarNegociat);
                cmd.Parameters.AddWithValue("@SalarRealizat", salarRealizat);
                cmd.Parameters.AddWithValue("@Vechime", vechime);
                cmd.Parameters.AddWithValue("@Spor", spor);
                cmd.Parameters.AddWithValue("@PremiiBrute", premiiBrute);
                cmd.Parameters.AddWithValue("@Compensatie", compensatie);
                cmd.Parameters.AddWithValue("@Avans", avans);
                cmd.Parameters.AddWithValue("@Retineri", retineri);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            ToggleElements(item, false);
            afiseazaAngajati_Click(null, null);
        }

        protected void OnDelete(object sender, EventArgs e)
        {
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int customerId = int.Parse((item.FindControl("lblNrCrt") as Label).Text);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM DateAngajati WHERE NrCrt=@NrCrt"))
                {

                    cmd.Parameters.AddWithValue("@NrCrt", customerId);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            afiseazaAngajati_Click(null, null);
        }
        protected void OnCancel(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            this.ToggleElements(item, false);
        }

       
    }
}