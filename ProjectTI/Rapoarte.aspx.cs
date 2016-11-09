using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void ReportViewer1_Load(object sender, EventArgs e)
        {
            PrinterSettings printerSettings = new PrinterSettings();
            IQueryable<PaperSize> paperSizes = printerSettings.PaperSizes.Cast<PaperSize>().AsQueryable();
            PaperSize a3 = paperSizes.Where(paperSize => paperSize.Kind == PaperKind.A3).FirstOrDefault();

            printerSettings.DefaultPageSettings.PaperSize = a3;

        }
        //protected void BtnArata_Click(object sender, EventArgs e)
        //{
          
        //    ShowReport();
        //}

        //protected void FirstCalendar_SelectionChanged(object sender, EventArgs e)
        //{
        //    TextBoxFirstCalendar.Text = FirstCalendar.SelectedDate.ToString();
        //}

        //protected void SecondCalendar_SelectionChanged(object sender, EventArgs e)
        //{
        //    TextBoxSecondCalendar.Text = SecondCalendar.SelectedDate.ToString();
        //}


        private void ShowReport()
        {
            ReportViewer1.Reset();

            DataTable dt = GetData();
            ReportDataSource rds = new ReportDataSource("DataSet", dt);

            ReportViewer1.LocalReport.DataSources.Add(rds);

            ReportViewer1.LocalReport.ReportPath = "StatDePlata.rdlc";

         //   ReportParameter[] rptParams = new ReportParameter[] {
               // new ReportParameter("fromDate", TextBoxFirstCalendar.Text),
              //  new ReportParameter("toDate", TextBoxSecondCalendar.Text)
          //  };

         //   ReportViewer1.LocalReport.SetParameters(rptParams);
            ReportViewer1.LocalReport.Refresh();
            
        }
        private DataTable GetData()
        {
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AngajatiConnectionString1"].ConnectionString); //@"Data Source=MSUTOI-PC;Initial Catalog=Angajati;Integrated Security=True"
            con.Open();
            //SqlCommand cmd = new SqlCommand("GetEmployeeBetweenDates", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@FromDate", SqlDbType.DateTime).Value = fromDate;
            //cmd.Parameters.Add("@ToDate", SqlDbType.DateTime).Value = toDate;

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //sda.Fill(dt);

            SqlCommand cmdQ = new SqlCommand("SELECT * FROM DateAngajati", con);
            ///cmd.CommandType = CommandType.Text
            SqlDataAdapter sda = new SqlDataAdapter(cmdQ);
            sda.Fill(dt);

            return dt;
        }
       // string SelectedData = FirstCalendar.SelectedDate.ToString("dd MMMM yyyy");
        
       
    }
}