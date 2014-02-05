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

public partial class DOCTEUR_HOSPITALISATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
        //DATE_SETTING_IN_TEXTBOX.DATE_SET kamonyo = new DATE_SETTING_IN_TEXTBOX.DATE_SET();
        //TextBox_DATE.Text=kamonyo.La_Date();
        DATE_SETTING_IN_TEXTBOX.DATE_SET kamonyo = new DATE_SETTING_IN_TEXTBOX.DATE_SET();
        TextBox_DATE.Text = kamonyo.La_Date();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ObjectDataSource1.Update();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = Convert.ToInt32(RadioButtonList1.SelectedValue);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataSource_HOSPITALISATION_INSERT.Insert();
    }
    protected void DropDownList_IDHOSPITALISATION_VIEW2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //SqlDataSource_UPDATEHOSPITALISATION.Select();
    }
    protected void Button_UPDATE_HOSPIT_Click(object sender, EventArgs e)
    {
        SqlDataSource_UPDATEHOSPITALISATION.Update();
    }
}
