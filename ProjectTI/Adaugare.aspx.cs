﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI.Views
{
    public partial class Adaugare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void MessageBox(String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "'); </script>"
            );

        }


        protected void adauga_Click(object sender, EventArgs e)
            {
             SqlConnection con = new SqlConnection(@"Data Source=MSUTOI-PC;Initial Catalog=Angajati;Integrated Security=True");
           // string sql = "INSERT INTO student (name) values (@name)";
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO DateAngajati(Nume,Prenume,Functie,SalarNegociat,SalarRealizat,Vechime,Spor,PremiiBrute,Compensatie,Avans,Retineri) VALUES(@Nume,@Prenume,@Functie,@SalarNegociat,@SalarRealizat,@Vechime,@Spor,@PremiiBrute,@Compensatie,@Avans,@Retineri)", con);
            cmd.Parameters.AddWithValue("@Nume", nume.Text);
            cmd.Parameters.AddWithValue("@Prenume", prenume.Text);
            cmd.Parameters.AddWithValue("@Functie", functie.Text);
            cmd.Parameters.AddWithValue("@SalarNegociat", salarN.Text);
            cmd.Parameters.AddWithValue("@SalarRealizat", salarR.Text);
            cmd.Parameters.AddWithValue("@Vechime", vechime.Text);
            cmd.Parameters.AddWithValue("@Spor", spor.Text);
            cmd.Parameters.AddWithValue("@PremiiBrute", spor.Text);
            cmd.Parameters.AddWithValue("@Compensatie", compensatie.Text);
            cmd.Parameters.AddWithValue("@Avans", avans.Text);
            cmd.Parameters.AddWithValue("@Retineri", retineri.Text);
           // cmd.Parameters.Add("@Data", dataDateTimePicker.Value);
            int n = cmd.ExecuteNonQuery();
            if (n > 0)
            {
                MessageBox("Salvare reusita!");
                ClearTextBoxes();
            }
            else
            {
                MessageBox("Salvare nereusita!");
            }

        }
        public void ClearTextBoxes()
        {
            nume.Text = string.Empty;
            prenume.Text = string.Empty;
            functie.Text = string.Empty;
            salarN.Text = string.Empty;
            salarR.Text = "100";
            vechime.Text = "0";
            spor.Text = "0";
            compensatie.Text = "0";
            avans.Text = "0";
            retineri.Text = "0";
        }
    }
}