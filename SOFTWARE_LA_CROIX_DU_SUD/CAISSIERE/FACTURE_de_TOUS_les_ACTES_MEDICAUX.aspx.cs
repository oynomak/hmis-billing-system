using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class CAISSIERE_FACTURE_de_TOUS_les_ACTES_MEDICAUX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_ID_CONSULTATION.Text = Request.Params["paramID_Cons22"].ToString();
        SqlConnection cnn = new SqlConnection("Data Source=TRAC-HQ070;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "FACTURE_de_TOUS_les_ACTES_MEDICAUX_de_CONSULTATION_Patient";
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
        string rptFile = Server.MapPath("~/REPORTS/CrystalReport_FACTURE_de_TOUS_les_ACTES_MEDICAUX_Cons.rpt");
        report.Load(rptFile);
        report.SetDataSource(dsCustomers.Tables[0]);
        this.CrystalReportViewer1.ReportSource = report;
    }
}
