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

public partial class CAISSIERE_FACTURE_des_ASSUREURS_TOTALE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_ID_CONSULTATION.Text = Request.Params["paramIDAssur"].ToString();
        TextBox_DateDEBUT.Text = Request.Params["paramDateDEBUT"].ToString();
        TextBox_DateFIN.Text = Request.Params["paramDateFIN"].ToString();
        SqlConnection cnn = new SqlConnection("Data Source=TRAC-HQ070;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "FACTURE_de_CHEZ_L_Assureur_TOTAL";
        cmd.Parameters.Add("@ID_ASSUREUR", SqlDbType.Int).Value=Convert.ToInt32(TextBox_ID_CONSULTATION.Text);
        cmd.Parameters.Add("@DATE_Debut", SqlDbType.DateTime).Value=Convert.ToDateTime(TextBox_DateDEBUT.Text);
        cmd.Parameters.Add("@DATE_Fin",SqlDbType.DateTime).Value=Convert.ToDateTime(TextBox_DateFIN.Text);
        cnn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cnn.Close();
        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
        DataSet dsCustomers = new DataSet();
        da.Fill(dsCustomers);
        CrystalDecisions.CrystalReports.Engine.ReportDocument report;
        report = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
        string rptFile = Server.MapPath("~/REPORTS/CrystalReport_FACTURE_des_ASSUREURS_TOTALE.rpt");
        report.Load(rptFile);
        report.SetDataSource(dsCustomers.Tables[0]);
        this.CrystalReportViewer2.ReportSource = report;
    }
}
