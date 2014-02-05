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

public partial class CAISSIERE_Page_De_Facturation_FACILITATRICE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            MultiView_RAPPORTS.ActiveViewIndex = 0;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView_RAPPORTS.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_des_ASSUREURS_TOTALE.aspx?paramIDAssur=" + DropDownList1.SelectedValue + "&paramDateDEBUT=" + Calendar_DEBUT.SelectedDate + "&paramDateFIN=" + Calendar_FIN.SelectedDate+"','new');</script>");
        //Response.Redirect("FACTURE_des_ASSUREURS_TOTALE.aspx?paramIDAssur=" + DropDownList1.SelectedValue + "&paramDateDEBUT=" + Calendar_DEBUT.SelectedDate + "&paramDateFIN=" + Calendar_FIN.SelectedDate);
    }
    protected void Calendar_DEBUT_SelectionChanged(object sender, EventArgs e)
    {
        HF_DateDebut.Value = Calendar_DEBUT.SelectedDate.ToString();
        //MultiView_RAPPORTS.ActiveViewIndex = 1;
    }
    protected void Calendar_FIN_SelectionChanged(object sender, EventArgs e)
    {
        HF_DateFin.Value = Calendar_FIN.SelectedDate.ToString();
        //MultiView_RAPPORTS.ActiveViewIndex = 1;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HF_IDAssureur.Value = DropDownList1.SelectedValue;
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        HF_IDAssureur.Value= DropDownList1.SelectedValue;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        MultiView_RAPPORTS.ActiveViewIndex = 1;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView_RAPPORTS.ActiveViewIndex = 2;
    }
}
