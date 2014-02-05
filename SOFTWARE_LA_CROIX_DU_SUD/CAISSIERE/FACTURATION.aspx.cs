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

public partial class CAISSIERE_FACTURATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            TextBox_IDCONSULTATION.Focus();
            Button_DECOCHER_TOUT.Visible = false;
            Button2.Visible = false;
            Button_DECOCHER_TOUS_EXAMS_HOSPIT.Visible = false;
            Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT.Visible = false;
            GridView_PATIENT_CartePerdue.Visible = false;
            //Label_Prix.Visible = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Entrez un numéro valide, S.V.P!";
        }
    }
    protected void RadioButtonList_FACTURATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (RadioButtonList_FACTURATION.SelectedItem.Text == "Consultation")
            {
                MultiView_FACTURATION.ActiveViewIndex = 0;
                Label_PrixTotal_CONSULTATION.Text = GridView_CONSULTATION.Rows[0].Cells[5].Text + "Frw";
            }
            if (RadioButtonList_FACTURATION.SelectedItem.Text == "Hospitalisation")
                MultiView_FACTURATION.ActiveViewIndex = 1;
            if (RadioButtonList_FACTURATION.SelectedItem.Text == "Examens à faire")
                MultiView_FACTURATION.ActiveViewIndex = 2;
            if (RadioButtonList_FACTURATION.SelectedItem.Text == "Traitements")
                MultiView_FACTURATION.ActiveViewIndex = 3;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = ex.Message.ToString();
        }
    }
    protected void GridView_CONSULTATION_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //Label_PrixTotalPaye_CONSULTATION.Text = GridView_CONSULTATION.Rows[0].Cells[3].Text + "Frw";
    }
    protected void Button_SELECTIONNER_TOUT_Click(object sender, EventArgs e)
    {
        int nbreRow = GridView_EXAMENS_A_FAIRE.Rows.Count;
        double Total = 0;
        for (int i = 0; i < nbreRow; i++)
        {
            GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout = true;
            if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
            {
                Button_DECOCHER_TOUT.Visible = true;
            }
            else
            {
                Button_DECOCHER_TOUT.Visible = false;
            }
            Total = Total + (Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text));
        }
        Label_PrixTotal_EXAMENS_A_FAIRE.Text = Total.ToString() + "Frw";
        Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = Total.ToString() + "Frw";
    }
    protected void Button_DECOCHER_TOUT_Click(object sender, EventArgs e)
    {
        int nbreRowCoche = GridView_EXAMENS_A_FAIRE.Rows.Count;
        for (int i = 0; i < nbreRowCoche; i++)
        {
            if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
            {
                GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout = false;
                Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = "0" + "Frw";
            }
        }
        Button_DECOCHER_TOUT.Visible = false;
    }
    protected void GridView_EXAMENS_A_FAIRE_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView_EXAMENS_A_FAIRE.SelectedRow.Font.Strikeout == true)
        {
            GridView_EXAMENS_A_FAIRE.SelectedRow.Font.Strikeout = false;
            double Somme = 0;
            int nbre = GridView_EXAMENS_A_FAIRE.Rows.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
                {
                    Somme = Somme + Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = Somme.ToString() + "Frw";
                }
                else if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == false)
                {
                    //Somme = Somme + Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = Somme.ToString() + "Frw";
                }
            }
        }
        else
        {
            int nbreRows = GridView_EXAMENS_A_FAIRE.Rows.Count;
            double Sum = 0;
            double TotalSum = 0;
            for (int i = 0; i < nbreRows; i++)
            {
                GridView_EXAMENS_A_FAIRE.SelectedRow.Font.Strikeout = true;
                if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
                {
                    Sum = Sum + (Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text));
                    Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = Sum.ToString() + "Frw";
                    Button_DECOCHER_TOUT.Visible = true;
                }
                TotalSum = TotalSum + (Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text));
            }
            Label_PrixTotal_EXAMENS_A_FAIRE.Text = TotalSum.ToString() + "Frw";
        }
    }
    protected void GridView_CONSULTATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        int nbre = GridView_CONSULTATION.Rows.Count;
        for (int i = 0; i < nbre; i++)
        {
            if (GridView_CONSULTATION.Rows[i].Font.Strikeout == true)
            {
                GridView_CONSULTATION.SelectedRow.Font.Strikeout = false;
                Label_PrixTotalPaye_CONSULTATION.Text = "0" + "Frw";
            }
            else if (GridView_CONSULTATION.Rows[i].Font.Strikeout == false)
            {
                GridView_CONSULTATION.SelectedRow.Font.Strikeout = true;
                Label_PrixTotalPaye_CONSULTATION.Text = GridView_CONSULTATION.SelectedRow.Cells[5].Text + "Frw";
            }
        }
    }
    protected void GridView_CONSULTATION_SelectedIndexChanged1(object sender, EventArgs e)
    {
        HF_NoCons.Value = GridView_CONSULTATION.SelectedRow.Cells[0].Text;
        int nbre = GridView_CONSULTATION.Rows.Count;
        for (int i = 0; i < nbre; i++)
        {
            if (GridView_CONSULTATION.Rows[i].Font.Strikeout == true)
            {
                GridView_CONSULTATION.SelectedRow.Font.Strikeout = false;
                HF_NoCons.Value = GridView_CONSULTATION.Rows[i].Cells[0].Text;
                //Label_PrixTotalPaye_CONSULTATION.Text = "0" + "Frw";
                //Label_PrixTotal_CONSULTATION.Text = GridView_CONSULTATION.Rows[i].Cells[3].Text+"Frw";
            }
            else if (GridView_CONSULTATION.Rows[i].Font.Strikeout == false)
            {
                GridView_CONSULTATION.SelectedRow.Font.Strikeout = true;
                //Label_PrixTotalPaye_CONSULTATION.Text = GridView_CONSULTATION.SelectedRow.Cells[3].Text + "Frw";
                //Label_PrixTotal_CONSULTATION.Text = GridView_CONSULTATION.Rows[i].Cells[3].Text + "Frw";
            }
        }
    }
    protected void GridView_TRAITEMENTS_CONSULTATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView_TRAITEMENTS_CONSULTATION.SelectedRow.Font.Strikeout == true)
        {
            GridView_TRAITEMENTS_CONSULTATION.SelectedRow.Font.Strikeout = false;
            double Somme = 0;
            int nbre = GridView_TRAITEMENTS_CONSULTATION.Rows.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == true)
                {
                    Somme = Somme + Convert.ToDouble(GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION.Text = Somme.ToString() + "Frw";
                }
                else if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == false)
                {
                    //Somme = Somme + Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION.Text = Somme.ToString() + "Frw";
                }
            }
        }
        else
        {
            int nbreRows = GridView_TRAITEMENTS_CONSULTATION.Rows.Count;
            double Sum = 0;
            double TotalSum = 0;
            for (int i = 0; i < nbreRows; i++)
            {
                GridView_TRAITEMENTS_CONSULTATION.SelectedRow.Font.Strikeout = true;
                if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == true)
                {
                    Sum = Sum + (Convert.ToDouble(GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[5].Text));
                    Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION.Text = Sum.ToString() + "Frw";
                    Button_DECOCHER_TOUT.Visible = true;
                }
                TotalSum = TotalSum + (Convert.ToDouble(GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[5].Text));
            }
            Label_PrixTotal_TRAITEMENTS_A_FAIRE.Text = TotalSum.ToString() + "Frw";
        }
    }
    protected void GridView_TRAITEMENTS_HOSPITALISATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView_TRAITEMENTS_HOSPITALISATION.SelectedRow.Font.Strikeout == true)
        {
            GridView_TRAITEMENTS_HOSPITALISATION.SelectedRow.Font.Strikeout = false;
            double Somme = 0;
            int nbre = GridView_TRAITEMENTS_HOSPITALISATION.Rows.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
                {
                    Somme = Somme + Convert.ToDouble(GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION.Text = Somme.ToString() + "Frw";
                }
                else if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == false)
                {
                    //Somme = Somme + Convert.ToDouble(GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION.Text = Somme.ToString() + "Frw";
                }
            }
        }
        else
        {
            int nbreRows = GridView_TRAITEMENTS_HOSPITALISATION.Rows.Count;
            double Sum = 0;
            double TotalSum = 0;
            for (int i = 0; i < nbreRows; i++)
            {
                GridView_TRAITEMENTS_HOSPITALISATION.SelectedRow.Font.Strikeout = true;
                if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
                {
                    Sum = Sum + (Convert.ToDouble(GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text));
                    Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION.Text = Sum.ToString() + "Frw";
                    Button_DECOCHER_TOUT.Visible = true;
                }
                TotalSum = TotalSum + (Convert.ToDouble(GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text));
            }
            Label_PrixTotalTraitementsDeHospitalisation.Text = TotalSum.ToString() + "Frw";
        }
    }
    protected void GridView_EXAMENS_FAITS_HOSPITALISATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView_EXAMENS_FAITS_HOSPITALISATION.SelectedRow.Font.Strikeout == true)
        {
            GridView_EXAMENS_FAITS_HOSPITALISATION.SelectedRow.Font.Strikeout = false;
            double Somme = 0;
            int nbre = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
                {
                    Somme = Somme + Convert.ToDouble(GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION.Text = Somme.ToString() + "Frw";
                }
                else if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == false)
                {
                    //Somme = Somme + Convert.ToDouble(GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text);
                    Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION.Text = Somme.ToString() + "Frw";
                }
            }
        }
        else
        {
            int nbreRows = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows.Count;
            double Sum = 0;
            double TotalSum = 0;
            for (int i = 0; i < nbreRows; i++)
            {
                GridView_EXAMENS_FAITS_HOSPITALISATION.SelectedRow.Font.Strikeout = true;
                if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
                {
                    Sum = Sum + (Convert.ToDouble(GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text));
                    Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION.Text = Sum.ToString() + "Frw";
                    Button_DECOCHER_TOUT.Visible = true;
                }
                TotalSum = TotalSum + (Convert.ToDouble(GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text));
            }
            Label_PrixTotal_EXAMENS_FAITS_HOSPITALISATION.Text = TotalSum.ToString() + "Frw";
        }
    }
    protected void GridView_HOSPITALISATION_SelectedIndexChanged(object sender, EventArgs e)
    {
        int nbre = GridView_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbre; i++)
        {
            if (GridView_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                GridView_HOSPITALISATION.SelectedRow.Font.Strikeout = false;
                Label_PrixTotalPaye_HOSPITALISATION.Text = "0";
                Label_PrixTotal_HOSPITALISATION.Text = GridView_HOSPITALISATION.Rows[i].Cells[8].Text + "Frw";
            }
            else if (GridView_HOSPITALISATION.Rows[i].Font.Strikeout == false)
            {
                GridView_HOSPITALISATION.SelectedRow.Font.Strikeout = true;
                Label_PrixTotalPaye_HOSPITALISATION.Text = GridView_HOSPITALISATION.SelectedRow.Cells[8].Text + "Frw";
                Label_PrixTotal_HOSPITALISATION.Text = GridView_HOSPITALISATION.Rows[i].Cells[8].Text + "Frw";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int nbreRow = GridView_EXAMENS_A_FAIRE.Rows.Count;
        double Total = 0;
        for (int i = 0; i < nbreRow; i++)
        {
            GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout = true;
            if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
            {
                Button2.Visible = true;
            }
            else
            {
                Button2.Visible = false;
            }
            Total = Total + (Convert.ToDouble(GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text));
        }
        Label_PrixTotal_EXAMENS_A_FAIRE.Text = Total.ToString() + "Frw";
        Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION.Text = Total.ToString() + "Frw";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int nbreRow = GridView_TRAITEMENTS_CONSULTATION.Rows.Count;
        double Total = 0;
        for (int i = 0; i < nbreRow; i++)
        {
            GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout = true;
            if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == true)
            {
                Button2.Visible = true;
            }
            else
            {
                Button2.Visible = false;
            }
            Total = Total + (Convert.ToDouble(GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[5].Text));
        }
        Label_PrixTotal_TRAITEMENTS_A_FAIRE.Text = Total.ToString() + "Frw";
        Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION.Text = Total.ToString() + "Frw";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        int nbreRowCoche = GridView_TRAITEMENTS_CONSULTATION.Rows.Count;
        for (int i = 0; i < nbreRowCoche; i++)
        {
            if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == true)
            {
                GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout = false;
                Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION.Text = "0" + "Frw";
            }
        }
    }
    protected void Button_DECOCHER_TOUS_EXAMS_HOSPIT_Click(object sender, EventArgs e)
    {
        int nbreRowCoche = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbreRowCoche; i++)
        {
            if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout = false;
                Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION.Text = "0" + "Frw";
            }
        }
    }
    protected void Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT_Click(object sender, EventArgs e)
    {
        int nbreRowCoche = GridView_TRAITEMENTS_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbreRowCoche; i++)
        {
            if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout = false;
                Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION.Text = "0" + "Frw";
            }
        }
    }
    protected void Button_PAYER_TOUS_EXAMS_HOSPIT_Click(object sender, EventArgs e)
    {
        int nbreRow = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows.Count;
        double Total = 0;
        for (int i = 0; i < nbreRow; i++)
        {
            GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout = true;
            if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                Button_DECOCHER_TOUS_EXAMS_HOSPIT.Visible = true;
            }
            else
            {
                Button_DECOCHER_TOUS_EXAMS_HOSPIT.Visible = false;
            }
            Total = Total + (Convert.ToDouble(GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text));
        }
        Label_PrixTotal_EXAMENS_FAITS_HOSPITALISATION.Text = Total.ToString() + "Frw";
        Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION.Text = Total.ToString() + "Frw";
    }
    protected void Button_PAYER_TOUS_TRAITEMENTS_HOSPIT_Click(object sender, EventArgs e)
    {
        int nbreRow = GridView_TRAITEMENTS_HOSPITALISATION.Rows.Count;
        double Total = 0;
        for (int i = 0; i < nbreRow; i++)
        {
            GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout = true;
            if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT.Visible = true;
            }
            else
            {
                Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT.Visible = false;
            }
            Total = Total + (Convert.ToDouble(GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text));
        }
        Label_PrixTotalTraitementsDeHospitalisation.Text = Total.ToString() + "Frw";
        Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION.Text = Total.ToString() + "Frw";
    }
    protected void Button_SAVE_TraitementsConsultation_Click(object sender, EventArgs e)
    {
        try
        {
            int nbreGrid = GridView_TRAITEMENTS_CONSULTATION.Rows.Count;
            for (int i = 0; i < nbreGrid; i++)
            {
                if (GridView_TRAITEMENTS_CONSULTATION.Rows[i].Font.Strikeout == true)
                {
                    TextBox_NomTraitement.Text = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[0].Text;
                    HF_NomTraitement.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[0].Text;
                    HF_AssureurTraitement.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[1].Text;
                    HF_PourcentageTrait.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[2].Text;
                    HF_PrixTotalTrait.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[3].Text;
                    HF_PrixDAssureurTrait.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[4].Text;
                    HF_PrixPatientTrait.Value = GridView_TRAITEMENTS_CONSULTATION.Rows[i].Cells[5].Text;
                    HF_TypeFactureTrait.Value = "2";
                    CheckBox_SetTraitAsPaye.Checked = true;
                    SqlDataSource_Set_Examens_A_Faire_PAYE.Update();
                    SqlDataSource_INSERT_TRAITEMENTS_FACTURE_DETAILS.Insert();
                }
                else
                {
                    Label_ErrorTraitement.Text = "Veuillez sélectionner le traitement à payer! S.V.P!";
                }
            }
        }
        catch (Exception ex)
        {
            //Label_ErrorTraitement.Text = ex.Message.ToString();
            Label_ErrorTraitement.Text = "Veuillez sélectionner le traitement à payer! S.V.P!";
        }
    }
    protected void Button_BARCODEREADER_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 9;
            //GridView_CHAMPS_DE_FACTURE_DETAILS.DataBind();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Le numéro saisi n'est pas valide. Veuillez réessayer S.V.P!";
        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            //Button6.Visible = false;
            Button4.Visible = false;
            Button7.Visible = false;
            TextBox_NOM.Focus();
            MultiView_FACTURATION.ActiveViewIndex = 4;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        try
        {
            Button3.Enabled = false;
            Button_VOIR_FACTURE_Consultation.Enabled = false;
            GridView_IDCONSULTATION.DataBind();
            MultiView_FACTURATION.ActiveViewIndex = 0;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 2;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 3;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 9;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 3;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlDataSource_PATIENT_pour_NOUVELLE_CARTE.DataBind();
            GridView_PATIENT_CartePerdue.DataBind();
            GridView_PATIENT_CartePerdue.Visible = true;
            //Button6.Visible = true;
            Button4.Visible = true;
            Button7.Visible = true;
            //int nbreLignesGrid = GridView_PATIENT_CartePerdue.Rows.Count;
            //GridView_PATIENT_CartePerdue.EmptyDataText="!";
        }
        catch (Exception ex)
        {
            Label30.Text = "Vérifier les noms entrés S.V.P!"; //ex.Message.ToString();
        }
    }
    protected void GridView_PATIENT_CartePerdue_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            GridView_PATIENT_CartePerdue.Visible = true;
            int nbreRow = GridView_PATIENT_CartePerdue.Rows.Count;
            for (int i = 0; i < nbreRow; i++)
            {
                if (GridView_PATIENT_CartePerdue.Rows[i].Font.Strikeout == true)
                {
                    if (GridView_PATIENT_CartePerdue.SelectedRow.Font.Strikeout == true)
                        GridView_PATIENT_CartePerdue.SelectedRow.Font.Strikeout = false;
                    //Label_PrixTotalPaye_HOSPITALISATION.Text = "0";
                    //Label_PrixTotal_HOSPITALISATION.Text = GridView_HOSPITALISATION.Rows[i].Cells[8].Text + "Frw";
                }
                else if (GridView_PATIENT_CartePerdue.Rows[i].Font.Strikeout == false)
                {
                    if (GridView_PATIENT_CartePerdue.SelectedRow.Font.Strikeout == false)
                    {
                        GridView_PATIENT_CartePerdue.SelectedRow.Font.Strikeout = true;
                        //Label_Prix.Visible = true;
                    }
                    //Label_PrixTotalPaye_HOSPITALISATION.Text = GridView_HOSPITALISATION.SelectedRow.Cells[8].Text + "Frw";
                    //Label_PrixTotal_HOSPITALISATION.Text = GridView_HOSPITALISATION.Rows[i].Cells[8].Text + "Frw";
                }
            }
        }
        catch (Exception ex)
        {
            Label30.Text = "Assurez-vous que le patient est bien sélectionné dans la liste!S.V.P!";
        }
    }
    protected void ImageButton_Retour_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            MultiView_FACTURATION.ActiveViewIndex = 9;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Vérifier le numéro saisi et réessayer S.V.P!";
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            GridView_PATIENT_CartePerdue.Visible = true;
            Button4.Enabled = true;
            //Button6.Enabled = true;
            //Label_Prix.Visible = true;
            int nbreGrid = GridView_PATIENT_CartePerdue.Rows.Count;
            for (int i = 0; i < nbreGrid; i++)
            {
                if (GridView_PATIENT_CartePerdue.Rows[i].Font.Strikeout == true)
                {
                    HiddenField_IDPATIENT.Value = GridView_PATIENT_CartePerdue.Rows[i].Cells[0].Text;
                    Label30.Visible = false;
                }
                else if (GridView_PATIENT_CartePerdue.Rows[i].Font.Strikeout == false)
                {
                    //HiddenField_IDPATIENT.Value = "";
                    //if (HiddenField_IDPATIENT.Value == "")
                        Label30.Text = "Veuillez sélectionner un patient, S.V.P!";
                }
            }
        }
        catch (Exception ex)
        {
            Label30.Text = "Sélectionnez un seul patient! S.V.P!";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            ClientScript.RegisterStartupScript(GetType(), "Message", "<SCRIPT LANGUAGE='javascript'> open('CARTE_DU_PATIENT.aspx?para=" + HiddenField_IDPATIENT.Value + "','new','width=1000px,height=500,directories=no,status=no,toolbar=no,menubar=no');</script>");
            //Response.Redirect("~/CAISSIERE/CARTE_DU_PATIENT.aspx?para=" + HiddenField_IDPATIENT.Value);
        }
        catch (Exception ex)
        {
            Label30.Text = "Veuillez sélectionner d'abord le patient correct! S.V.P!";
        }
        //finally
        //{
        //    Response.Redirect("~/REGISTRATION/CARTE_DE_CONSULTATION.aspx?param1=" + TextBox_ID_CONSULTATION.Text);
        //}
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //SqlDataSource_TRAITEMENT_CONSULTATION_INSERT.Insert();
            SqlDataSource_Set_Consultation_PAYE.Update();
            Response.Redirect("~/CAISSIERE/CARTE_DE_CONSULTATION.aspx?param1=" + HF_ID_Consultation.Value);
        }
        catch (Exception ex)
        {
            Label24.Text = "Vérifier si vous avez bien sélectionner le rendez-vous à payer, S.V.P!";
            //LabelErrorMsg_RendezVous.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
        //finally
        //{
        //    Response.Redirect("~/CAISSIERE/CARTE_DE_CONSULTATION.aspx?param1=" + HF_ID_Consultation.Value);
        //}
    }
    public void InsertHF_For_Facture_Details()
    {
        try
        {
            //SqlDataSource_FACTURATION_DE_CONS.DataBind();
            GridView_CHAMPS_DE_FACTURE_DETAILS.DataBind();
            int nbre = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows.Count;
            HF_TypeFacture.Value = "1";
            CheckBox_PayeFactureCons.Checked = true;
            for (int i = 0; i < nbre; i++)
            {
                HF_ActeAFacturer.Value = "Consultation";// GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[0].Text;
                HF_Assureur.Value = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[0].Text;
                HF_Pourcentage.Value = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[2].Text;
                HF_MaximaPaye.Value = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[3].Text;
                HF_PrixPatient.Value = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[4].Text;
                HF_PayeParAssureur.Value = GridView_CHAMPS_DE_FACTURE_DETAILS.Rows[i].Cells[5].Text;
            }
        }
        catch (Exception ex)
        {
            Label24.Text = "Vérifiez si la consultation est sélectionnée correctement, S.V.P!";// ex.Message.ToString();
        }
    }
    protected void Button_SAVE_Consultation_Click(object sender, EventArgs e)
    {
        try
        {
            Button_VOIR_FACTURE_Consultation.Enabled = true;
            Button3.Enabled = true;
            //HF_ID_Consultation.Value = GridView_IDCONSULTATION.Rows[0].Cells[0].Text;
            HF_ID_Consultation.Value = GridView_CONSULTATION.SelectedRow.Cells[0].Text;
            //GridView_FACTURE_POUR_CONS.DataBind();
            //SqlDataSource_FACTURATION_DE_CONS.DataBind();
            int nbr = GridView_CONSULTATION.Rows.Count;
            for (int i = 0; i < nbr; i++)
            {
                if (GridView_CONSULTATION.Rows[i].Font.Strikeout == true)
                {
                    HF_ID_Consultation.Value = GridView_CONSULTATION.SelectedRow.Cells[0].Text;
                }
                else
                {
                    HF_ID_Consultation.Value = GridView_CONSULTATION.SelectedRow.Cells[0].Text;
                    //HF_NoCons.Value = GridView_CONSULTATION.Rows[0].Cells[0].Text;
                }
            }
            //SqlDataSource_FACTURATION_DE_CONS.DataBind();
            SqlDataSource_INSERT_FACTURE_PREMIERE.DataBind();
            SqlDataSource_INSERT_FACTURE_PREMIERE.Insert();
            InsertHF_For_Facture_Details();
            SqlDataSource_INSERT_FACTURE_DETAILS.Insert();
            SqlDataSource_Set_Consultation_PAYE.Update();
        }
        catch (Exception ex)
        {
            Label24.Text = "Vérifiez si la consultation n'a pas été payé!";// ex.Message.ToString();
        }
    }
    protected void Button_VOIR_FACTURE_Consultation_Click(object sender, EventArgs e)
    {
        try
        {
            //SqlDataSource_FACTURATION_DE_CONS.DataBind();
            //GridView_FACTURE_POUR_CONS.DataBind();
            //int nbre = GridView_FACTURE_POUR_CONS.Rows.Count;
            ClientScript.RegisterStartupScript(GetType(), "Message", "<SCRIPT LANGUAGE='javascript'> open('FACTURE_dela_CONSULTATION.aspx?paramID_Cons=" + HF_NoCons.Value + "','new','width=1000px,height=400,directories=no,status=no,toolbar=no,menubar=no');</script>");
            HF_TypeFacture.Value = "1";
            CheckBox_PayeFactureCons.Checked = true;
            //for (int i = 0; i < nbre; i++)
            //{
            //    HF_ActeAFacturer.Value = "Consultation";// GridView_FACTURE_POUR_CONS.Rows[0].Cells[0].Text;
            //    HF_Assureur.Value = GridView_FACTURE_POUR_CONS.Rows[0].Cells[1].Text;
            //    HF_Pourcentage.Value = GridView_FACTURE_POUR_CONS.Rows[0].Cells[2].Text;
            //    HF_MaximaPaye.Value = GridView_FACTURE_POUR_CONS.Rows[0].Cells[3].Text;
            //    HF_PrixPatient.Value = GridView_FACTURE_POUR_CONS.Rows[0].Cells[4].Text;
            //    HF_PayeParAssureur.Value = GridView_FACTURE_POUR_CONS.Rows[0].Cells[5].Text;
            //}
        }
        catch (Exception ex)
        {
            Label24.Text = "La facture n'est pas encore disponible. Veuillez réessayer, S.V.P!";// ex.Message.ToString();
        }
    }
    protected void Button_SAVE_ExamensConsultation_Click(object sender, EventArgs e)
    {
        try
        {
            int nbr = GridView_EXAMENS_A_FAIRE.Rows.Count;
            for (int i = 0; i < nbr; i++)
            {
                if (GridView_EXAMENS_A_FAIRE.Rows[i].Font.Strikeout == true)
                {
                    HF_Nom_EXAMEN.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[0].Text;
                    HF_AssureurExamen.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[1].Text;
                    HF_PourcentageExamen.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[2].Text;
                    HF_PrixTotal.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[3].Text;
                    HF_PrixDelAssureur.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[4].Text;
                    HF_PrixDuPatient.Value = GridView_EXAMENS_A_FAIRE.Rows[i].Cells[5].Text;
                    HF_Type_De_Facture.Value = "3";
                    CheckBox_SetExamenAFaire_As_Payed.Checked = true;
                    SqlDataSource_INSERT_EXAMEN_A_FAIRE_dans_FACTURE_Details.Insert();
                    SqlDataSource_Set_Examens_A_Faire_PAYE.Update();
                }
            }
        }
        catch (Exception ex)
        {
            Label_Error_ExamenAFaire.Text = ex.Message.ToString();
        }
    }
    protected void Button_SAVE_Hospitalisation_Click(object sender, EventArgs e)
    {
        int nbreGrid = GridView_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbreGrid; i++)
        {
            if (GridView_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                HF_NomActeFact.Value= "Hospitalisation";
                HF_AssureurHosp.Value = GridView_HOSPITALISATION.Rows[i].Cells[0].Text;
                HF_PourcentHosp.Value = GridView_HOSPITALISATION.Rows[i].Cells[5].Text;
                HF_PrixTotalHosp.Value = GridView_HOSPITALISATION.Rows[i].Cells[6].Text;
                HF_PrixAssurHosp.Value = GridView_HOSPITALISATION.Rows[i].Cells[7].Text;
                HF_PrixPatientHosp.Value = GridView_HOSPITALISATION.Rows[i].Cells[8].Text;
                CheckBox_SetPayeOK.Checked = true;
                HF_ID_ConsHosp.Value = GridView_ID_Cons_IDHOSP.Rows[0].Cells[0].Text;
                HF_TypeFactHosp.Value = "4";
                SqlDataSource_INSERT_FACT_DETAILS_SEJOUR.Insert();
            }
            else
            {
                Label31.Text = "Sélectionner d'abord pour confirmer l'acte à facturer!";
            }
        }
    }
    protected void Button_SAVE_ExamensHospitalisation_Click(object sender, EventArgs e)
    {
        int nbreGrid = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbreGrid; i++)
        {
            if (GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                TextBox_ActeExamHosp.Text = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[0].Text;
                HF_ActeFactExamHosp.Value = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[0].Text;
                TextBoxAssurExamHosp.Text = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[1].Text;
                HF_PourcentExamHosp.Value = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[2].Text;
                HF_PrixTotExamHosp.Value = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[3].Text;
                HF_PrixAssurExamHosp.Value = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[4].Text;
                HF_PrixPatExamHosp.Value = GridView_EXAMENS_FAITS_HOSPITALISATION.Rows[i].Cells[5].Text;
                HF_TypeFactExamHosp.Value = "6";
                HF_IdCONS_ExamHosp.Value = GridView_IDCons_ExamHosp.Rows[0].Cells[0].Text;
                CheckBox_ExamHosp_SetAsPaye.Checked = true;
                SqlDataSource_SET_EXAM_AS_PAYE_ExamHosp.Update();
                SqlDataSource_INSERT_FACT_DETAIL_EXAM_Hosp.Insert();
            }
        }
    }
    protected void Button_SAVE_TraitementsHospitalisation_Click(object sender, EventArgs e)
    {
        int nbregrid = GridView_TRAITEMENTS_HOSPITALISATION.Rows.Count;
        for (int i = 0; i < nbregrid; i++)
        {
            if (GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Font.Strikeout == true)
            {
                TextBox_ACTFACT_TRAITHOSP.Text = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[0].Text;
                TextBoxASSUR_TRAITHOSP.Text = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[1].Text;
                HF_PourcentTraitHosp.Value = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[2].Text;
                HF_PrixTotTraitHosp.Value = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[3].Text;
                HF_PrixAssurTraitHosp.Value = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[4].Text;
                HF_PrixPatientTraitHosp.Value = GridView_TRAITEMENTS_HOSPITALISATION.Rows[i].Cells[5].Text;
                CheckBox_SetAsPayeTraitHosp.Checked = true;
                HF_IdCOns_TRaitHosp.Value = GridView_IDcONS_par_IDHosp.Rows[0].Cells[0].Text;
                HF_TypeFactTraitHosp.Value = "5";
                SqlDataSource_INSERT_FACT_DETAIL_TraitHosp.Insert();
                SqlDataSource_SET_TRAITEMENT_SUIVI_AS_PAYE.Update();
            }
        }
    }
    protected void Button_VOIR_FACTURE_Hospitalisation_Click(object sender, EventArgs e)
    {
        //ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_dela_CONSULTATION.aspx?paramID_Cons6=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button_VOIR_FACTURE_ExamensDeHospitalisation_Click(object sender, EventArgs e)
    {
        //ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_dela_CONSULTATION.aspx?paramID_Cons5=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button_VOIR_FACTURE_TraitementsHospitalisation_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_des_TRAITEMENTS_FAITS_Hosp.aspx?paramID_Cons4=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button_VOIR_FACTURE_Examens_A_Faire_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_des_EXAMENS_a_FAIRE.aspx?paramID_Cons1=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button_VOIR_FACTURE_TraitementsConsultation_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_des_TRAITEMENTS_a_FAIRE.aspx?paramID_Cons2=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button_VOIR_FACTURE_TraitementsConsultation_Click1(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_des_TRAITEMENTS_a_FAIRE.aspx?paramID_Cons3=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_de_TOUS_les_ACTES_MEDICAUX.aspx?paramID_Cons22=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(GetType(), "Message", "<script language='javascript'> open('FACTURE_de_TOUS_les_ACTES_MEDICAUX.aspx?paramID_Cons22=" + TextBox_IDCONSULTATION.Text + "','new');</script>");
    }
}
