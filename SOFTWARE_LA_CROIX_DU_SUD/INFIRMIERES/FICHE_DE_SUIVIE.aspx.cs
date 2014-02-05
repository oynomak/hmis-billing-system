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

public partial class INFIRMIERES_NURSE_FICHE_DE_SUIVIE : System.Web.UI.Page
{
    protected void Page_Load (object sender, EventArgs e)
    {
        Button_CONFIRMER_la_SORTIE.Visible = false;
        Label_la_DATE_de_SORTIE.Visible = false;
        Label_NOMBRE_de_JOURS.Visible = false;
        Label_PRIX_du_SEJOUR.Visible = false;
        Label10.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Button_ADD_TRAITEMENT.Enabled = false;
        Button_REMOVE_TRAITEMENT.Enabled = false;
        TextBox_IDCONSULTATION.Focus();
    }
    protected void Button_BARCODEREADER_Click (object sender, EventArgs e)
    {
        try
        {
            if (TextBox_IDCONSULTATION.Text == "")
                Label_ErrorMsgHospitalisationSuivi.Text = "ERROR MESSAGE : " + "Veuillez entrer le numéro de Consultation S.V.P!";
            else
            {
                TextBox_ID_CONSULTATION_FROM_IDhospitalisation.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_HOSPITALISER.Rows[0].Cells[0].Text;
                Label_LesNOMS.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_HOSPITALISER.Rows[0].Cells[2].Text;
                Label_No_CHAMBRE.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_HOSPITALISER.Rows[0].Cells[3].Text;
                //TextBox_ID_HOSPITALISATION.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_HOSPITALISER.Rows[0].Cells[4].Text;
                MultiView1.ActiveViewIndex = 0;
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsgHospitalisationSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void LinkButton_PROPOSER_TRAITEMENT_Click (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click (object sender, EventArgs e)
    {
        try
        {
            ListBox_TRAITEMENT_a_FAIRE.Items.Add(ListBox_LISTE_des_TRAITEMENTS.SelectedItem.ToString());
            ListBox_LISTE_des_TRAITEMENTS.SelectedItem.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitementsDeSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_REMOVE_TRAITEMENT_Click (object sender, EventArgs e)
    {
        try
        {
            string removedItems;
            removedItems = ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Text.ToString();
            ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
            int nbreTraitementsExistants = ListBox_LISTE_des_TRAITEMENTS.Items.Count;
            for (int i = 0; i < nbreTraitementsExistants; i++)
            {
                if (removedItems == ListBox_LISTE_des_TRAITEMENTS.Items[i].Text.ToString())
                {
                    ListBox_LISTE_des_TRAITEMENTS.Items[i].Enabled = true;
                }
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitementsDeSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_les_TRAITEMENTS_Click (object sender, EventArgs e)
    {
        try
        {
            string ToInsertValue;
            ToInsertValue = ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Text;
            //TextBox_No_TRAITEMENT.Text = ListBox_LISTE_des_TRAITEMENTS.SelectedValue.ToString();
            //ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
            int nbreTraitExistants = ListBox_LISTE_des_TRAITEMENTS.Items.Count;
            for (int i = 0; i < nbreTraitExistants; i++)
            {
                if (ToInsertValue == ListBox_LISTE_des_TRAITEMENTS.Items[i].Text.ToString())
                {
                    TextBox_No_TRAITEMENT.Text = ListBox_LISTE_des_TRAITEMENTS.Items[i].Value.ToString();
                }
            }
            ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
            SqlDataSource_INSERT_into_TRAITEMENT_SUIVI.Insert();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitementsDeSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_les_DONNEES_Click (object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_FICHE_de_SUIVI_INSERT.Insert();
            SqlDataSource_FICHE_de_SUIVI_INSERT.DataBind();
            SqlDataSource_FICHE_de_SUIVI_INSERT.Dispose();
            TextBox_ID_SUIVI.Text = GridView_ID_SUIVI_MAX_SELECTED.Rows[0].Cells[0].Text;
            if (RadioButtonList_SIGNES_VITAUX.SelectedValue == "1" || RadioButtonList_SIGNES_VITAUX.SelectedValue == "2"
                || RadioButtonList_SIGNES_VITAUX.SelectedValue == "4")
            {
                //Button_CONFIRMER_la_SORTIE.Visible = true;
                MultiView1.ActiveViewIndex = 1;

            }
            else
            {
                Button_CONFIRMER_la_SORTIE.Visible = true;
                MultiView1.ActiveViewIndex = 2;
            }

        }
        catch (Exception ex)
        {
            Label_ErrorMsgSignesVitauxSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button1_Click (object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_FICHE_de_SUIVI_INSERT.Update();
            SqlDataSource_HOSPITALISATION_SORTIE_UPDATE.Update();
            SqlDataSource_UPDATE_HOSPIT_By_IDHosp.Update();
            Label_la_DATE_de_SORTIE.Visible = true;
            Label_NOMBRE_de_JOURS.Visible = true;
            Label_PRIX_du_SEJOUR.Visible = true;
            Label10.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label_la_DATE_de_SORTIE.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_SORTIE.Rows[0].Cells[2].Text;
            Label_NOMBRE_de_JOURS.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_SORTIE.Rows[0].Cells[4].Text;
            Label_PRIX_du_SEJOUR.Text = GridView_LES_DONNEES_NECESSAIRES_POUR_SORTIE.Rows[0].Cells[6].Text;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgSortieDHospitalisation.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void RadioButtonList2_SelectedIndexChanged (object sender, EventArgs e)
    {
        if (RadioButtonList_SIGNES_VITAUX_de_SORTIE.SelectedValue == "1" || RadioButtonList_SIGNES_VITAUX_de_SORTIE.SelectedValue == "2"
            || RadioButtonList_SIGNES_VITAUX_de_SORTIE.SelectedValue == "4")
        {
            Button_CONFIRMER_la_SORTIE.Visible = true;
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Button_CONFIRMER_la_SORTIE.Visible = false;
            MultiView1.ActiveViewIndex = 2;
        }
    }
    protected void ListBox_LISTE_des_TRAITEMENTS_SelectedIndexChanged (object sender, EventArgs e)
    {
        Button_ADD_TRAITEMENT.Enabled = true;
    }
    protected void ListBox_TRAITEMENT_a_FAIRE_SelectedIndexChanged (object sender, EventArgs e)
    {

        Button_REMOVE_TRAITEMENT.Enabled = true;
    }
    protected void LinkButton1_Click (object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex = 1;
    }
    protected void Button5_Click1 (object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged (object sender, EventArgs e)
    {

    }
    protected void RadioButtonList_CATEG_SERVICE_RENDU_SelectedIndexChanged (object sender, EventArgs e)
    {
        //if(RadioButtonList_CATEG_SERVICE_RENDU.SelectedValue.ToString()==102)
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Menu1_MenuItemClick (object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedItem.Text == "Fiche de suivi")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        if (Menu1.SelectedItem.Text == "Les plaintes")
            MultiView1.ActiveViewIndex = 3;
        if (Menu1.SelectedItem.Text == "Examens à faire")
        {
            MultiView1.ActiveViewIndex = 2;
            //RadioButtonList_CATEG_SERVICE_RENDU.SelectedItem.Text = "Examens";
        }
        if (Menu1.SelectedItem.Text == "Résultats")
            MultiView1.ActiveViewIndex = 4;
        if (Menu1.SelectedItem.Text == "Prescriptions")
            MultiView1.ActiveViewIndex = 2;
        if (Menu1.SelectedItem.Text == "Traitement")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        if (Menu1.SelectedItem.Text == "Sortie")
            MultiView1.ActiveViewIndex = 1;
    }
    protected void RadioButtonList_SIGNES_VITAUX_SelectedIndexChanged (object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void ListBox_CONFIRMED_PLAINTES_INSERTED_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            //ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(CheckBoxList_LES_PLAINTES.SelectedValue.ToString());
            ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(ListBox_CONFIRMED_PLAINTES_INSERTED.SelectedItem.Text);
            ListBox_CONFIRMED_PLAINTES_INSERTED.SelectedItem.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgPlaintesDeSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRM_PLAINTE_Click (object sender, EventArgs e)
    {
        //Page_Load(sender, e);
        try
        {
            int nbre = ListBox_CONFIRMED_PLAINTES_INSERTED.Items.Count;
            int nbre1 = ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Count;
            for (int i = 0; i < nbre1; i++)
            {
                for (int j = 0; j < nbre; j++)
                {
                    if (ListBox_LISTE_PLAINTES_DU_PATIENT.SelectedItem.Text == ListBox_CONFIRMED_PLAINTES_INSERTED.Items[j].Text)
                    {
                        TextBox_ID_PLAINTE.Text = ListBox_CONFIRMED_PLAINTES_INSERTED.Items[j].Value.ToString();
                    }
                }
            }
            ListBox_LISTE_PLAINTES_DU_PATIENT.SelectedItem.Enabled = false;
            SqlDataSource_LES_PLAINTES_de_SUIVI_INSERT.Insert();
        }
        catch (Exception ex)
        {
            //Page.Response.Write("Veuillez Sélectionner une plainte pour la confirmer, S.V.P!");
            Label_ErrorMsgPlaintesDeSuivi.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button6_Click (object sender, EventArgs e)
    {

    }
    protected void ListBox_LISTE_PLAINTES_DU_PATIENT_SelectedIndexChanged (object sender, EventArgs e)
    {

    }
}
