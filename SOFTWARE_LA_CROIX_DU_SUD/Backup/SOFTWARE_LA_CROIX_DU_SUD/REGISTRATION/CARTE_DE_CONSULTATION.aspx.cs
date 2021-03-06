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
using Neodynamic.WebControls.BarcodeProfessional;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.IO;

public partial class REGISTRATION_CARTE_DE_CONSULTATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_ID_CONSULTATION.Text = Request.Params["param1"].ToString();
        //Getting Customers from DB
        SqlConnection cnn = new SqlConnection("Data Source=TRAC-HQ070;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SELECT_ALL_RENDEZ_VOUS_CONSULTATION";
        cmd.Parameters.Add("@ID_Consultation", SqlDbType.NVarChar).Value = TextBox_ID_CONSULTATION.Text;
        //cnn.Open();
        //cmd.ExecuteNonQuery();
        //cmd.Dispose();
        //cnn.Close();
        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
        DataSet dsCustomers = new DataSet();
        da.Fill(dsCustomers);

        //Create an instance of Barcode Professional
        BarcodeProfessional bcp = new BarcodeProfessional();
        //Barcode settings
        bcp.Symbology = Symbology.Code39;
        bcp.Extended = true;
        bcp.AddChecksum = false;
        bcp.BarHeight = 0.4f;
        bcp.QuietZoneWidth = 0;

        //Update Customers DataTable with barcode image
        foreach (DataRow row in dsCustomers.Tables[0].Rows)
        {
            //Set the value to encode
            bcp.Code = row["NoConsultation"].ToString();
            //Generate the barcode image and store it into the Barcode Column
            row["NoEnBarcode"] = bcp.GetBarcodeImage(System.Drawing.Imaging.ImageFormat.Png);
        }

        //Create a report object
        //and set its data source with the DataSet
        CrystalDecisions.CrystalReports.Engine.ReportDocument report;
        report = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
        string rptFile = Server.MapPath("~/REPORTS/CrystalReport_CARTE_de_CONSULTATION.rpt");
        report.Load(rptFile);
        report.SetDataSource(dsCustomers.Tables[0]);
        this.CrystalReportViewer1.ReportSource = report;
    }
    protected void Button_retour_Click(object sender, EventArgs e)
    {

    }
}
