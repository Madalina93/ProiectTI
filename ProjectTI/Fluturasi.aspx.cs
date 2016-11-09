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

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString); //@"Data Source=MSUTOI-PC;Initial Catalog=Angajati;Integrated Security=True"
            con.Open();

            SqlCommand cmdQ = new SqlCommand("SELECT * FROM DateAngajati", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmdQ);
            sda.Fill(dt);

            return dt;
        }
    }
}