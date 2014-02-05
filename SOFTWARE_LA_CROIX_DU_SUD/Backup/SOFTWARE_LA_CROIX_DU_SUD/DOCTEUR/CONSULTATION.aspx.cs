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

public partial class CONSULTATION : System.Web.UI.Page
{
    protected void Button_BARCODEREADER_Click(object sender, EventArgs e)
    {
        //TextBox_IDHosp.Text = GridView1.Rows[0].Cells[0].Text;
        try
        {
            //Menu1.Visible = false;
            TextBox_Poids_Du_Patient.Focus();
            TextBox_ID_PATIENT.Text = GridView_NOMPRENOM_PAT_by_IDCons.Rows[0].Cells[4].Text;// GridView_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION.Rows[0].Cells[4].Text;
            Label_LesNOMS.Text = GridView_NOMPRENOM_PAT_by_IDCons.Rows[0].Cells[3].Text;// GridView_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION.Rows[0].Cells[3].Text;
            Label_AGE.Text = GridView_NOMPRENOM_PAT_by_IDCons.Rows[0].Cells[2].Text + " ans.";// GridView_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION.Rows[0].Cells[2].Text;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "Le patient n'a pas payé la consultation!";
        }
        try
        {
            string NoHospitalisation;
            NoHospitalisation = TextBox_IDCONSULTATION.Text.Substring(4, 12);
            TextBox_ID_HOSPITALISATION.Text = NoHospitalisation;
            //GridView_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION.DataBind();
            GridView_NOMPRENOM_PAT_by_IDCons.DataBind();
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");

            MultiView1.ActiveViewIndex = 7;
            //-----INSERT INTO CONSULTATION TABLE.
            //------------------------------------
            //string insertConsult = "exec INSERT_INTO_CONSULTATION_TABLE '"+TextBox_IDCONSULTATION.Text+"','"+TextBox_ID_PATIENT.Text+"','"+TextBox_POIDS.Text+"','"+TextBox_OBSERVATIONS.Text+"'";
            //SqlCommand cmd = new SqlCommand(insertConsult, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //cmd.Dispose();
            //con.Close();
            //Page_Load(sender, e);
            //-----INSERT INTO HOSPITALISATION TABLE.
            //---------------------------------------
            string com = "select dbo.Select_ID_HOSPITALISATION_Max('" + NoHospitalisation + "')";
            SqlCommand comm = new SqlCommand(com, con);
            con.Open();
            string a = comm.ExecuteScalar().ToString();
            comm.Dispose();
            con.Close();
            string re;
            int b = Convert.ToInt32(a);
            //Response.Write(a);
            //Response.Write(b.ToString());
            b = ++b;
            re = b.ToString();
            int len = re.Length;
            for (int i = 0; i < 4 - len; i++)
            {
                re = "0" + re.ToString();
            }
            string ID_hospitalisation = NoHospitalisation + "-" + re;
            TextBox_ID_HOSPITALISATION.Text = ID_hospitalisation;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void CheckBoxList_PLAINTES_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(Label_LesNOMS.Text+" has : "+ CheckBoxList_PLAINTES.SelectedItem.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page_Load(sender, e);
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
            SqlDataSource_PLAINTES_INSERT.Insert();
        }
        catch (Exception ex)
        {
            //Page.Response.Write("Veuillez Sélectionner une plainte pour la confirmer, S.V.P!\n");
            Label_ErrorMsgPlaintes.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ListBox_CONFIRMED_PLAINTES_INSERTED_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(CheckBoxList_LES_PLAINTES.SelectedValue.ToString());
            ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(ListBox_CONFIRMED_PLAINTES_INSERTED.SelectedItem.Text);
            ListBox_CONFIRMED_PLAINTES_INSERTED.SelectedItem.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgPlaintes.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex=3;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_RESULTATS_pour_EXAMEN_a_FAIRE_INSERT.Insert();
            ListBox_EXAMENS_CONFIRMES.Items.Add(ListBox_DES_EXAMENS_A_FAIRE.SelectedItem.Text);
            ListBox_DES_EXAMENS_A_FAIRE.SelectedItem.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            int nbre = ListBox_DES_EXAMENS_A_FAIRE.Items.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (ListBox_EXAMENS_CONFIRMES.SelectedItem.Text == ListBox_DES_EXAMENS_A_FAIRE.Items[i].Text)
                {
                    TextBox_CODE_EXAMEN.Text = ListBox_DES_EXAMENS_A_FAIRE.Items[i].Value.ToString();
                    ListBox_EXAMENS_CONFIRMES.SelectedItem.Enabled = false;
                    ListBox_DES_EXAMENS_A_FAIRE.Items[i].Enabled = true;
                }
            }
            SqlDataSource_RESULTATS_pour_EXAMEN_a_FAIRE_INSERT.Delete();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ListBox_EXAMENS_CONFIRMES_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button_DELETE_EXAMENS_PROPOSES.Visible = true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //if (!IsPostBack)
            //    Menu1.Visible = false;
            TextBox_IDCONSULTATION.Focus();
            Button_DELETE_EXAMENS_PROPOSES.Visible = false;
            Button_ADD_TRAITEMENT.Enabled = false;
            Button_REMOVE_TRAITEMENT.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_ADD_PRESCRIPTION_Click(object sender, EventArgs e)
    {
        try
        {
            ListBox_La_LISTE_des_PRESCRITIONS.Items.Add(ListBox_PRESCRIPTIONS_EXISTANTES.SelectedItem.Text);
        }
        catch (Exception ex)
        {
            Label_ErrorMsgPrescriptions.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        try
        {
            int nbre = ListBox_PRESCRIPTIONS_EXISTANTES.Items.Count;
            for (int i = 0; i < nbre; i++)
            {
                ListBox_La_LISTE_des_PRESCRITIONS.SelectedItem.Enabled = false;
                if (ListBox_La_LISTE_des_PRESCRITIONS.SelectedItem.Text == ListBox_PRESCRIPTIONS_EXISTANTES.Items[i].Text)
                {
                    TextBox_No_PRESCRIPTION.Text = ListBox_PRESCRIPTIONS_EXISTANTES.Items[i].Value.ToString();
                }
            }
            SqlDataSource_PRESCRIPTIONS_INSERT.Insert();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgPrescriptions.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_NOUVELLE_PRESCRIPTION_Click(object sender, EventArgs e)
    {
        try
        {
            ListBox_La_LISTE_des_PRESCRITIONS.Items.Add("-" + TextBox_PRESCRIPTIONS.Text);
            TextBox_PRESCRIPTIONS.Text = "";
            TextBox_PRESCRIPTIONS.Focus();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgPrescriptions.Text = "ERROR MESSAGE : " + ex.Message.ToString();
            //Page.Response.Write("Veuillez Sélectionner les Prescriptions à confirmer, S.V.P!");
        }
    }
    protected void ListBox_CHAMBRE_ORDINAIRE_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox_No_CHAMBRE.Text = ListBox_CHAMBRE_ORDINAIRE.SelectedItem.Text;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgHospitalisation.Text = ex.Message.ToString();
        }
    }
    protected void Button_PRESCRIRE_TRAITEMENTS_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button_TRAITEMENTS_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
    protected void Button_CONFIRM_CHAMBRE_Click(object sender, EventArgs e)
    {
        try
        {
            //--->> CONFIRMER LA CHAMBRE ALLOUEE AU PATIENT
            //_____________________________________________
            SqlDataSource_HOSPITALISATION_INSERT.Insert();
            ListBox_CHAMBRE_ORDINAIRE.SelectedItem.Enabled = false;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgHospitalisation.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_TRANSFERTS_Click(object sender, EventArgs e)
    {
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            ListBox_TRAITEMENT_a_FAIRE.Items.Add(ListBox_LISTE_des_TRAITEMENTS.SelectedItem.ToString());
            ListBox_LISTE_des_TRAITEMENTS.SelectedItem.Enabled = false;
            TextBox_No_TRAITEMENT.Text = ListBox_LISTE_des_TRAITEMENTS.SelectedValue.ToString();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitements.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_REMOVE_TRAITEMENT_Click(object sender, EventArgs e)
    {
        try
        {
            //ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
            int nbre = ListBox_LISTE_des_TRAITEMENTS.Items.Count;
            for (int i = 0; i < nbre; i++)
            {
                if (ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Text == ListBox_LISTE_des_TRAITEMENTS.Items[i].Text)
                {
                    ListBox_LISTE_des_TRAITEMENTS.Items[i].Enabled = true;
                    ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
                }
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitements.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_les_TRAITEMENTS_Click(object sender, EventArgs e)
    {
        try
        {
            ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Enabled = false;
            int nbre1 = ListBox_TRAITEMENT_a_FAIRE.Items.Count;
            int nbre2 = ListBox_LISTE_des_TRAITEMENTS.Items.Count;
            for (int i = 0; i < nbre1; i++)
            {
                for (int j = 0; j < nbre2; j++)
                {
                    if (ListBox_TRAITEMENT_a_FAIRE.SelectedItem.Text == ListBox_LISTE_des_TRAITEMENTS.Items[j].Text)
                        TextBox_No_TRAITEMENT.Text = ListBox_LISTE_des_TRAITEMENTS.Items[j].Value.ToString();
                }
            }
            SqlDataSource_TRAITEMENT_de_CONSULTATION_INSERT.Insert();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgTraitements.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //int NbreDePlaintes=CheckBoxList_LES_PLAINTES.Items.Count;
        //for (int i = 0; i < NbreDePlaintes; i++)
        //{
        //    ListBox_LISTE_PLAINTES_DU_PATIENT.Items.Add(CheckBoxList_LES_PLAINTES.Items[i].Textring());
        //}
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        try
        {
            if (Menu1.SelectedItem.Text == "Consultation")
            {
                //ListBox_CONFIRMED_PLAINTES_INSERTED.Focus();
                MultiView1.ActiveViewIndex = 0;
                //int nbre = ListBox_CONFIRMED_PLAINTES_INSERTED.Items.Count;
                //for (int i = 0; i < nbre; i++)
                //{
                //    ListBox_CONFIRMED_PLAINTES_INSERTED.Focus();
                //}
                TextBox_Poids_Du_Patient.Focus();
            }
            if (Menu1.SelectedItem.Text == "Hospitalisation")
                MultiView1.ActiveViewIndex = 3;
            if (Menu1.SelectedItem.Text == "Examens à faire")
                MultiView1.ActiveViewIndex = 1;
            if (Menu1.SelectedItem.Text == "Résultats")
                MultiView1.ActiveViewIndex = 4;
            if (Menu1.SelectedItem.Text == "Prescriptions")
                MultiView1.ActiveViewIndex = 2;
            if (Menu1.SelectedItem.Text == "Traitement")
                MultiView1.ActiveViewIndex = 5;
            if (Menu1.SelectedItem.Text == "Suivi d'hospitalisation")
            {
                MultiView1.ActiveViewIndex = 6;
                TextBox1.Focus();
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsgBarcode.Text = ex.Message.ToString();
        }
    }
    protected void ListBox_LISTE_des_TRAITEMENTS_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button_ADD_TRAITEMENT.Enabled = true;
    }
    protected void ListBox_TRAITEMENT_a_FAIRE_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button_REMOVE_TRAITEMENT.Enabled = true;
    }
    protected void RadioButtonList_DEPART_DE_LABO_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int nbre = ListBox_EXAMENS_CONFIRMES.Items.Count;
            for (int i = 0; i < nbre; i++)
            {
                ListBox_EXAMENS_CONFIRMES.Items.Remove(ListBox_EXAMENS_CONFIRMES.Items[i].Value);
            }
        }
        catch (Exception ex)
        {
            Label_ErrorMsgExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_OBSERVATIONS_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_CONSULTATION_PARTIE_INSERT.Update();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgResultatsDesExamens.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ListBox_LISTE_PLAINTES_DU_PATIENT_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {
            TextBox_IDCONSULTATION.Text = "";
            TextBox_IDCONSULTATION.Text = GridView_IdConsultationFromHospitalisation.Rows[0].Cells[0].Text;
        }
        catch (Exception ex)
        {
            Label_ErrorMessage.Text = "ERROR MESSAGE : " + ex.Message.ToString();
            //Page.Response.Write("\n Le patient est déjà sorti de la clinique!");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //TextBox_IDCONSULTATION.Text = "";
        //TextBox_IDCONSULTATION.Text = GridView_IdConsultationFromHospitalisation.Rows[0].Cells[0].Text;
    }
    protected void LinkButton_ExamensAFaire_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton_ResultatsDesExamens_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void LinkButton_TraitementsProposes_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
    protected void LinkButtonPrescriptions_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void RadioButtonList_CATEG_CHAMBRES_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource_CONSULTATION_PARTIE_INSERT.Update();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox_IDHosp.Text = GridView1.Rows[0].Cells[0].Text;
            ClientScript.RegisterStartupScript(GetType(), "Message", "<SCRIPT LANGUAGE='javascript'> open('CARTE_de_HOSPITALISATION_ParIdHosp.aspx?paraHOSPIT=" + TextBox_IDHosp.Text + "','new');</script>");
            //Response.Redirect("~/REGISTRATION/CARTE_DU_PATIENT.aspx?para=" + TextBox_ID_PATIENT.Text);
        }
        catch (Exception ex)
        {
            //LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        TextBox_Poids_Du_Patient.Focus();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        //Menu1.Visible = true;
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        //Menu1.Visible = true;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
       // Menu1.Visible = true;
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
        //Menu1.Visible = true;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        //Menu1.Visible = true;
    }
    protected void ImageButton_Retour_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 7;
        //Menu1.Visible = true;
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        //Page_Load(sender,e);
        this.Page_Load(sender, e);
        MultiView1.ActiveViewIndex = 7;
       // Menu1.Visible = true;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 6;
        //Menu1.Visible = true;
    }
}
