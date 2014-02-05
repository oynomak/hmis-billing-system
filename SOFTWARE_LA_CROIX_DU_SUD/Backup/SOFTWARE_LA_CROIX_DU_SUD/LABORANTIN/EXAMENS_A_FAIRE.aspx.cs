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

public partial class LABORANTIN_EXAMENS_A_FAIRE : System.Web.UI.Page
{

    protected void Button_BARCODEREADER_Click (object sender, EventArgs e)
    {
        try
        {
            Label_LesNOMS.Text = GridView_NOMS_et_AGE_du_PATIENT.Rows[0].Cells[3].Text;
            Label_AGE_du_PATIENT.Text = GridView_NOMS_et_AGE_du_PATIENT.Rows[0].Cells[2].Text+" ans.";
            Page_Load(sender, e);
            TextBox_UniteMesure.Text = "";
            TextBox_ValeurNormale.Text = "";
            TextBox_RESULTATS.Text = "";
            Button_CONFIRMER_RESULTATS.Text = "CONFIRMER";
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button2_Click (object sender, EventArgs e)
    {
        try
        {
            MultiView1.ActiveViewIndex = 1;
            Page_Load(sender, e);
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ListeDesExamensFaire.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_RESULTATS_Click (object sender, EventArgs e)
    {
        try
        {
            if (Button_CONFIRMER_RESULTATS.Text == "CONFIRMER")
            {
                ListBox_EXAMENS_a_FAIRE.SelectedItem.Enabled = false;
                //THEN INSERT VALUES INTO RESULTATS_EXAMENS TABLE!
                //------------------------------------------------
                SqlDataSource_INSERT_INTO_RESULTATS_EXAMENS_Table.Update();
            }
            if (Button_CONFIRMER_RESULTATS.Text == "MODIFIER")
            {
                //UPDATE TYPEdECHANTILLON Field & RESULTATS field IN RESULTATS_EXAMENS TABLE
                //--------------------------------------------------------------------------
                SqlDataSource_INSERT_INTO_RESULTATS_EXAMENS_Table.Update();
            }
            TextBox_RESULTATS.Text = "";
            TextBox_ValeurNormale.Text = "";
            TextBox_UniteMesure.Text = "";
            TextBox_EXAMEN_NOM.Text = "";
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ListeDesExamensFaire.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void LinkButton_RETOUR_a_la_PRECEDENTE_Click (object sender, EventArgs e)
    {
        try
        {
            TextBox_IDCONSULTATION.Text = "";
            TextBox_IDCONSULTATION.Focus();
            TextBox_EXAMEN_NOM.Text = "";
            TextBox_RESULTATS.Text = "";
            TextBox_UniteMesure.Text = "";
            TextBox_ValeurNormale.Text = "";
            Page_Load(sender, e);
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ResultatsDesExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ListBox_EXAMENS_a_FAIRE_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            TextBox_RESULTATS.Text = "";
            TextBox_RESULTATS.Focus();
            TextBox_EXAMEN_NOM.Text = ListBox_EXAMENS_a_FAIRE.SelectedItem.Text;
            TextBox_CODE_EXAMEN.Text = ListBox_EXAMENS_a_FAIRE.SelectedValue.ToString();
            int parcourir_Grid = GridView_DETAILS_EXAM.Rows.Count;
            for (int i = 0; i < parcourir_Grid; i++)
            {
                if (ListBox_EXAMENS_a_FAIRE.SelectedItem.Text == GridView_DETAILS_EXAM.Rows[i].Cells[4].Text)
                {
                    if (GridView_DETAILS_EXAM.Rows[i].Cells[2].Text == "&nbsp;")
                    {
                        //TextBox_EXAMEN_NOM.Text = ListBox_EXAMENS_a_FAIRE.SelectedItem.Text;
                        TextBox_UniteMesure.Text = "";//GridView_EXAMENS_PROPOSES.Rows[i].Cells[4].Text;
                    }
                    if (GridView_DETAILS_EXAM.Rows[i].Cells[2].Text != "&nbsp;")
                    {
                        //TextBox_EXAMEN_NOM.Text = ListBox_EXAMENS_a_FAIRE.SelectedItem.Text;
                        TextBox_UniteMesure.Text = GridView_DETAILS_EXAM.Rows[i].Cells[2].Text;
                    }
                    if (GridView_DETAILS_EXAM.Rows[i].Cells[3].Text == "&nbsp;")
                    {
                        //TextBox_EXAMEN_NOM.Text = ListBox_EXAMENS_a_FAIRE.SelectedItem.Text;
                        TextBox_ValeurNormale.Text = "";// GridView_Examen_A_Faire.Rows[i].Cells[4].Text;
                    }
                    if (GridView_DETAILS_EXAM.Rows[i].Cells[3].Text != "&nbsp;")
                    {
                        //TextBox_EXAMEN_NOM.Text = ListBox_EXAMENS_a_FAIRE.SelectedItem.Text;
                        TextBox_ValeurNormale.Text = GridView_DETAILS_EXAM.Rows[i].Cells[3].Text;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ListeDesExamensFaire.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void DropDownList_TYPE_D_ECHANTILLON_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            TextBox_RESULTATS.Text = "";
            TextBox_RESULTATS.Focus();
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ListeDesExamensFaire.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Page_Load (object sender, EventArgs e)
    {
        TextBox_IDCONSULTATION.Focus();
    }
    protected void TextBox_EXAMEN_NOM_TextChanged (object sender, EventArgs e)
    {
    //    if (RequiredFieldValidator1.Visible == true)
    //    {
    //        Label6.Visible = false;
    //    }
    //    else
    //    {
    //        Label6.Visible = true;
    //    }
    }
    protected void LinkButton1_Click (object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_SET_EXAM_asNotYet_EXAMINE.Update();
            Page_Load(sender, e);
            MultiView1.ActiveViewIndex = 0;
            Button_CONFIRMER_RESULTATS.Text = "MODIFIER";
            TextBox_EXAMEN_NOM.Text = TextBox_EXAM.Text;
            TextBox_RESULTATS.Text = "";
            TextBox_UniteMesure.Text = "";
            TextBox_ValeurNormale.Text = "";
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ResultatsDesExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ListBox1_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            TextBox1.Text = ListBox1.SelectedValue.ToString();
            TextBox_EXAM.Text = GridView_EXAM_NOM.Rows[0].Cells[0].Text;
        }
        catch (Exception ex)
        {
            Label_ErrorMsg_ResultatsDesExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
}
