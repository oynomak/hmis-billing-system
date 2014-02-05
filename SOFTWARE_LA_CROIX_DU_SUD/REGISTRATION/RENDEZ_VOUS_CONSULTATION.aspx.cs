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

public partial class RENDEZ_VOUS_CONSULTATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click (object sender, EventArgs e)
    {
        ListBox1.Items.Add(TextBox1.Text.ToString());
        TextBox1.Text = "";
        TextBox1.Focus();
    }
    //protected void ListBox1_SelectedIndexChanged (object sender, EventArgs e)
    //{
    //    TextBox2.Text = "";
    //    TextBox2.Text = ListBox1.SelectedItem.Text;
    //    TextBox3.Text = "";
    //}
    protected void Button2_Click (object sender, EventArgs e)
    {
        TextBox2.Text = ListBox1.SelectedItem.Text;
        TextBox3.Text = "KAMONYO AFITE :" + TextBox2.Text;
        ListBox1.SelectedItem.Enabled = false;
        ListBox2.Items.Add(TextBox3.Text);
    }
    protected void Button3_Click (object sender, EventArgs e)
    {
       TextBox4.Text = TextBox4.Text+" --> "+ListBox2.SelectedItem.Text+"\n";
       ListBox2.SelectedItem.Enabled=false;
    }
}
