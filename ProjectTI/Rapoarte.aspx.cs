using iTextSharp.text;
using iTextSharp.text.pdf;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ProjectTI
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CustomizeExcelNotVisible();
            CustomizeWordNotVisible();
        }
        protected void CustomizeExcelNotVisible()
        {
            string exportOption = "ExcelOpenXml";
            RenderingExtension extension = ReportViewer1.LocalReport.ListRenderingExtensions().ToList().Find(x => x.Name.Equals(exportOption, StringComparison.CurrentCultureIgnoreCase));
            if (extension != null)
            {
                System.Reflection.FieldInfo fieldInfo = extension.GetType().GetField("m_isVisible", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                fieldInfo.SetValue(extension, false);
            }
        }
        protected void CustomizeWordNotVisible()
        {
            string exportOption = "WordOpenXml";
            RenderingExtension extension = ReportViewer1.LocalReport.ListRenderingExtensions().ToList().Find(x => x.Name.Equals(exportOption, StringComparison.CurrentCultureIgnoreCase));
            if (extension != null)
            {
                System.Reflection.FieldInfo fieldInfo = extension.GetType().GetField("m_isVisible", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                fieldInfo.SetValue(extension, false);
            }
        }

        private void ReportViewer1_Load(object sender, EventArgs e)
        {
            PrinterSettings printerSettings = new PrinterSettings();
            IQueryable<PaperSize> paperSizes = printerSettings.PaperSizes.Cast<PaperSize>().AsQueryable();
            PaperSize a3 = paperSizes.Where(paperSize => paperSize.Kind == PaperKind.A3).FirstOrDefault();

            printerSettings.DefaultPageSettings.PaperSize = a3;

        }

        private void ShowReport()
        {
            ReportViewer1.Reset();

            DataTable dt = GetData();
            ReportDataSource rds = new ReportDataSource("DataSet", dt);

            ReportViewer1.LocalReport.DataSources.Add(rds);

            ReportViewer1.LocalReport.ReportPath = "StatDePlata.rdlc";
            
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


        //protected void ButtonPdf_Click(object sender, EventArgs e)
        //{
            //    LocalReport localReport = new LocalReport();

            //   localReport.ReportPath = "StatDePlata.rdlc";

            //   DataTable dt = new DataTable();

            //    ReportDataSource reportDataSource = new ReportDataSource();

            //   reportDataSource.Value = dt;

            //    reportDataSource.Name = "DataSet";

            //    try
            //    {
            //        Document pdfDoc = new Document(PageSize.A3, 25, 10, 25, 10);
            //        PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            //        pdfDoc.Open();
            //        Paragraph Text = new Paragraph(localReport.ReportPath);
            //        pdfDoc.Add(Text);
            //        pdfWriter.CloseStream = false;
            //        pdfDoc.Close();
            //        Response.Buffer = true;
            //        Response.ContentType = "application/pdf";
            //        Response.AddHeader("content-disposition", "attachment;filename=Example.pdf");
            //        Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //        Response.Write(pdfDoc);
            //        Response.End();
            //    }
            //    catch (Exception ex)
            //    { }
            //}
            // string SelectedData = FirstCalendar.SelectedDate.ToString("dd MMMM yyyy");
       // }
    }
}