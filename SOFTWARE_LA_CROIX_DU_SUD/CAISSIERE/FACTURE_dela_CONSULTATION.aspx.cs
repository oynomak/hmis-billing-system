using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.IO;

public partial class CAISSIERE_FACTURE_dela_CONSULTATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_ID_CONSULTATION.Text = Request.Params["paramID_Cons"].ToString();    
        SqlConnection cnn = new SqlConnection("Data Source=TRAC-HQ070;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "FACTURE_dela_CONSULTATION_Patient";
        cmd.Parameters.Add("@ID_CONSULTATION", SqlDbType.NVarChar).Value = TextBox_ID_CONSULTATION.Text;
        cnn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cnn.Close();
        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
        DataSet dsCustomers = new DataSet();
        da.Fill(dsCustomers);
        CrystalDecisions.CrystalReports.Engine.ReportDocument report;
        report = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
        string rptFile = Server.MapPath("~/REPORTS/CrystalReport_FACTURE_dela_CONSULTATION.rpt");
        report.Load(rptFile);
        report.SetDataSource(dsCustomers.Tables[0]);
        this.CrystalReportViewer2.ReportSource = report;
    }
}
