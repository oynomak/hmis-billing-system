using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Resources;
using System.Media;
using System.Drawing;


public partial class Finance_Page : System.Web.UI.Page
{
    //private void LogonToReport()

    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    string report = Request.QueryString.ToString();//("CONSULTATIONS");
        //    string path = CrystalReportSource1.AppRelativeTemplateSourceDirectory;
        //    string reppath = Server.MapPath(path);
        //    string reportpath = reppath + " \\ " + report + " .rpt ";
        //    CrystalReportSource1.ReportDocument.Load(reportpath);

        //    CrystalReportViewer1.RefreshReport();

        //    Export to PDF
        //    MemoryStream oStream;
        //    oStream = CrystalReportSource1.ReportDocument.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
        //    Response.Clear();
        //    Response.Buffer = true;
        //    Response.ContentType = "application/pdf";
        //    Response.BinaryWrite(oStream.ToArray());
        //    Response.End();
        //}
        //catch (NullReferenceException nex)
        //{
        //    Response.Write(nex.InnerException.ToString());
        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex.InnerException.ToString());
        //}
    }
}
