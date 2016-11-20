using Microsoft.Reporting.WebForms;
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
    public partial class Stergere : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  DataSetFluturasi
        }

        public void MessageBox(String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "'); </script>"
            );

        }

        private void ShowReport()
        {
            ReportViewer1.Reset();

            DataTable dt = GetData();
            ReportDataSource rds = new ReportDataSource("DataSetFluturasi", dt);

            ReportViewer1.LocalReport.DataSources.Add(rds);

            ReportViewer1.LocalReport.ReportPath = "Fluturasi.rdlc";


            ReportViewer1.LocalReport.Refresh();

        }
        private DataTable GetData()
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);
            con.Open();

            SqlCommand cmdQ = new SqlCommand("SELECT * FROM DateAngajati", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmdQ);
            sda.Fill(dt);

            return dt;
        }

        protected void ButtonCautareF_Click(object sender, EventArgs e)
        {
            ReportViewer1.Reset();

            DataTable dt = new DataTable();
            ReportDataSource rds = new ReportDataSource("DataSetFluturasi", dt);

            ReportViewer1.LocalReport.DataSources.Add(rds);

            ReportViewer1.LocalReport.ReportPath = "Fluturasi.rdlc";

            ReportViewer1.LocalReport.Refresh();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM DateAngajati WHERE Nume = '" + TextBoxCautareF.Text + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

        }

        protected void RenuntaCautareF_Click(object sender, EventArgs e)
        {
            ShowReport();
        }

    }
}