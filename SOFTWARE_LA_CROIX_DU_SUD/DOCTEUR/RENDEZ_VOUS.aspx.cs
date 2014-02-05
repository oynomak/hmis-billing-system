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

public partial class DOCTEUR_RENDEZ_VOUS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_DATE_AUJOURDHUI.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox_DATE_AUJOURDHUI.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
    }
}
