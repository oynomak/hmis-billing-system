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

public partial class REGISTRATION_PATIENTS : System.Web.UI.Page
{
    public string controlToEdit;
    public string isPostBack;

    public REGISTRATION_PATIENTS()
    {
        LoadComplete += new EventHandler(Page_LoadComplete);
    }

    protected void Page_Load (object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            controlToEdit = Request.QueryString["controlID"];
            Session.Add("controlToEdit", controlToEdit);
            isPostBack = Request.QueryString["isPostBack"];
            Session.Add("isPostBack", isPostBack);


            // Cast first day of the week from web.config file.  Set it to the calendar
            Calendar1.FirstDayOfWeek = (System.Web.UI.WebControls.FirstDayOfWeek)Convert.ToInt32(ConfigurationManager.AppSettings["FirstDayOfWeek"]);

            // Select the Correct date for Calendar from query string
            // If fails, pick the current date on Calendar
            try
            {
                Calendar1.SelectedDate = Calendar1.VisibleDate = Convert.ToDateTime(lblDate.Text);
            }
            catch
            {
                Calendar1.SelectedDate = Calendar1.VisibleDate = DateTime.Today;
            }

            // Fills in correct values for the dropdown menus
            FillCalendarChoices();
            SelectCorrectValues();
        }
        else
        {

            if (Session["controlToEdit"] != null)
                controlToEdit = (string)Session["controlToEdit"];


            if (Session["isPostBack"] != null)
                isPostBack = (string)Session["isPostBack"];
        }
        try
        {
            string ConnStr = "Data Source=TRAC-HQ070;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True";
            SqlConnection Conn = new SqlConnection(ConnStr);
            Conn.Open();
            //DATE_SETTING_IN_TEXTBOX.DATE_SET kamonyo = new DATE_SETTING_IN_TEXTBOX.DATE_SET();
            DATE_SETTING_IN_TEXTBOX.DATE_SET kamonyo = new DATE_SETTING_IN_TEXTBOX.DATE_SET();
            //DATE_FORMAT_DATETIME.DATE_SET_FORMAT_DATETIME KAM = new DATE_FORMAT_DATETIME.DATE_SET_FORMAT_DATETIME();
            DATE_FORMAT_DATETIME.DATE_SET_FORMAT_DATETIME kam = new DATE_FORMAT_DATETIME.DATE_SET_FORMAT_DATETIME();
            //Label_DATE_ENREGISTREMENT.Text = KAM.La_Date().ToShortDateString();
            Label_DATE_ENREGISTREMENT.Text = kam.La_Date().ToShortDateString();
            //DateTime ka = DateTime.Today;
            //Label_DATE_ENREGISTREMENT.Text = ka.ToShortDateString();
            //string dateToday = KAM.La_Date().ToString();
            //TextBox_DATE_d_ENREGISTRE.Text = kamonyo.La_Date();
            TextBox_DATE_d_ENREGISTRE.Text = kamonyo.La_Date();
            TextBox_ID_PATIENT.Focus();
            //Calendar1.Visible = false;
            //Label_MERCI.Visible = false;
            TextBox_NATIONALITE.Visible = false;
            Label19.Visible = false;
            RadioButtonList_PAYS_LIMITROPHES.Visible = false;
            //Label_DISTRICT.Visible = false;
            //Label_PROVINCE.Visible = false;
            //DropDownList_PROVINCE.Visible = false;
            //DropDownList_DISTRICT.Visible = false;
            TextBox_CONJOINT.Visible = false;
            Label_CONJOINT.Visible = false;
            Button_PAGE7.Visible = false;
            //POUR L'ETAT CIVIL:
            //==================
            District_De_Province();
            FN_RADIO_BUTTON_LIST_ETAT_CIVIL();
            //DropDownList_DISTRICT.Items.Add(DataSet_LA_CROIX_DU_SUD.DataTable_DISTRICTS_by_PROVINCEDataTable.Equals(DropDownList_PROVINCE.SelectedValue));
        }
        catch (Exception ex)
        {
            Label_ErrorMsgIdPatient.Text = "ERROR MESSAGE : "+ex.Message.ToString();
        }
    }

    void Page_LoadComplete(object sender, System.EventArgs e)
    {
        //OKButton.OnClientClick = "javascript:window.opener.SetControlValue('" + this.controlToEdit + "','" + lblDate.Text + "','" + this.isPostBack + "');";
    }

    #region DateCalendar
    protected void FillCalendarChoices()
    {
        DateTime thisdate = (DateTime.Now).AddYears(0); ;

        // Fills in month values
        for (int x = 0; x < 12; x++)
        {
            // Loops through 12 months of the year and fills in each month value
            ListItem li = new ListItem(thisdate.ToString("MMMM"), thisdate.Month.ToString());
            MonthSelect.Items.Add(li);
            thisdate = thisdate.AddMonths(1);
        }

        // Fills in year values and change y value to other years if necessary
        for (int y = 1900; y <= thisdate.Year; y++)
        {
            YearSelect.Items.Add(y.ToString());
        }
    }
    protected void SelectCorrectValues()
    {
        lblDate.Text = Calendar1.SelectedDate.ToShortDateString();
        TextBox_DATE_DE_NAISSANCE.Text = lblDate.Text;
        MonthSelect.SelectedIndex = MonthSelect.Items.IndexOf(MonthSelect.Items.FindByValue(Calendar1.SelectedDate.Month.ToString()));
        YearSelect.SelectedIndex = YearSelect.Items.IndexOf(YearSelect.Items.FindByValue(Calendar1.SelectedDate.Year.ToString()));
    }
    protected void Cal_SelectionChanged(object sender, System.EventArgs e)
    {
        Calendar1.VisibleDate = Calendar1.SelectedDate;
        SelectCorrectValues();
    }
    protected void MonthSelect_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        Calendar1.SelectedDate = Calendar1.VisibleDate
            = new DateTime(Convert.ToInt32(YearSelect.SelectedItem.Value),
                           Convert.ToInt32(MonthSelect.SelectedItem.Value), 1); ;
        SelectCorrectValues();
    }

    protected void YearSelect_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        Calendar1.SelectedDate = Calendar1.VisibleDate
            = new DateTime(Convert.ToInt32(YearSelect.SelectedItem.Value),
                           Convert.ToInt32(MonthSelect.SelectedItem.Value), 1); ;
        SelectCorrectValues();
    }
    #endregion
    protected void TextBox_DATE_DE_NAISSANCE_TextChanged (object sender, EventArgs e)
    {

    }
    #region CALENDAR
    protected void Calendar1_SelectionChanged (object sender, EventArgs e)
    {
        //try
        //{
        //    TextBox_DATE_DE_NAISSANCE.Text = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + TextBox_DATE_DE_NAISSANCE.Text;
        //}
        //catch (Exception ex)
        //{
        //    LabelErrorMsg_DOB.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        //}
    }
    protected void Calendar_DATE_DE_RENDEZ_VOUS_SelectionChanged (object sender, EventArgs e)
    {
        try
        {
            DateTime dateDaujourdhui = new DateTime();
            dateDaujourdhui = DateTime.Today;
            if (Calendar_DATE_DE_RENDEZ_VOUS.SelectedDate == dateDaujourdhui)
            {
                LabelErrorMsg_RendezVous.Visible = false;
                TextBox_DATE_de_CONSULTATION.Text = Calendar_DATE_DE_RENDEZ_VOUS.SelectedDate.ToShortDateString().ToString();
            }
            if (Calendar_DATE_DE_RENDEZ_VOUS.SelectedDate > dateDaujourdhui)
            {
                LabelErrorMsg_RendezVous.Visible = false;
                TextBox_DATE_de_CONSULTATION.Text = Calendar_DATE_DE_RENDEZ_VOUS.SelectedDate.ToShortDateString().ToString();
            }
            if (Calendar_DATE_DE_RENDEZ_VOUS.SelectedDate < dateDaujourdhui)
            {
                LabelErrorMsg_RendezVous.Visible = true;
                LabelErrorMsg_RendezVous.Text = "ERROR MESSAGE : La date de rendez-vous ne doit pas etre inferieure à la date d'aujourd'hui!";
            }
            //Generate_ID_Consultation();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgIdPatient.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
        finally
        {
            Calendar_DATE_DE_RENDEZ_VOUS.Visible = false;
        }
    }
    #endregion
    #region RADIO_BUTTONLISTS
    protected void RadioButtonList_NATIONALITE_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            if (RadioButtonList_NATIONALITE.SelectedValue == "Rwandaise")
            {
                TextBox_NATIONALITE.Text = "Rwandaise";
                Label_DISTRICT.Visible = true;
                Label_PROVINCE.Visible = true;
                Label_DISTRICT.Visible = true;
                Label_PROVINCE.Visible = true;
                RadioButtonList_PAYS_LIMITROPHES.Visible = false;
                DropDownList_PROVINCE.Visible = true;
                DropDownList_DISTRICT.Visible = true;
            }
            else if (RadioButtonList_NATIONALITE.SelectedValue == "Autres pays")
            {
                TextBox_NATIONALITE.Visible = true;
                TextBox_NATIONALITE.Focus();
                Label19.Visible = true;
                Label_DISTRICT.Visible = false;
                Label_PROVINCE.Visible = false;
                DropDownList_PROVINCE.Visible = false;
                DropDownList_PROVINCE.Enabled = false;
                DropDownList_DISTRICT.Visible = false;
            }
            else if (RadioButtonList_NATIONALITE.SelectedValue == "Pays voisins")
            {
                RadioButtonList_PAYS_LIMITROPHES.Visible = true;
                //RadioButtonList_NATIONALITE.Visible = false;
                Label_DISTRICT.Visible = false;
                Label_PROVINCE.Visible = false;
                DropDownList_PROVINCE.Visible = false;
                DropDownList_DISTRICT.Visible = false;
            }
        }
        catch (Exception ex)
        {
            LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = Convert.ToInt32(RadioButtonList1.SelectedValue);
        TextBox_NOM.Focus();
        //if (RadioButtonList1.SelectedIndex == 1)
        //    TextBox_ID_PATIENT.Focus();
    }
    #endregion
    #region BUTTONS

    protected void Button2_Click (object sender, EventArgs e)
    {

    }
    protected void ButtonPAGE4_Click (object sender, EventArgs e)
    {
        //TextBox1_IDPatientParamater.Text = TextBox_ID_PATIENT.Text;
    }
    protected void Button3_Click (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
    protected void ButtonPAGE1_Click (object sender, EventArgs e)
    {

        try
        {
            MultiView1.ActiveViewIndex = 1;
            TextBox_DATE_DE_NAISSANCE.Focus();
            Generate_ID_Patient();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgIdPatient.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void ButtonPAGE2_Click (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void ButtonPAGE3_Click (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        Button_VERIFIER.Visible = false;
        Button4.Visible = false;
    }
    protected void Button1_Click1 (object sender, EventArgs e)
    {
        //TextBox_DISTRICT.Text = DropDownList_DISTRICT.Text.ToString();
        try
        {
            SqlDataSource_PATIENT_INSERT.Insert();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
        Button_VERIFIER.Visible = true;
        Button4.Visible = true;
    }
    protected void Button_RENDEZ_VOUS_INSERT_Click (object sender, EventArgs e)
    {
        //Button_PAGE7.Visible = true;
        try
        {
            //DATE_SETTING_IN_TEXTBOX.DATE_SET kamonyo = new DATE_SETTING_IN_TEXTBOX.DATE_SET();
            //TextBox_DATE_d_ENREGISTRE.Text = kamonyo.La_Date();

            Generate_ID_Consultation();
            SqlDataSource_RENDEZ_VOUS_INSERT.Insert();
            SqlDataSource_RENDEZ_VOUS_INSERT.Dispose();
            //SqlDataSource_TRAITEMENT_CONSULTATION_INSERT.Insert();
            SqlDataSource_INSERT_CONSULTATION_BIEN_AVANT.Insert();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_RendezVous.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_PAGE7_Click (object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 6;
        try
        {
            Generate_ID_Consultation();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_RendezVous.Text="ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_CONFIRMER_PAIEMENT_Click (object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_PAYER_RENDEZ_VOUS_CONSULTATION_UPDATE.Update();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_ConfirmerPaiement.Text= "ERROR MESSAGE : " +ex.Message.ToString();
        }
    }
    protected void Button_MAKE_IDpATIENT_Click (object sender, EventArgs e)
    {
        try
        {
            Generate_ID_Patient();
        }
        catch (Exception ex)
        {
            Label_ErrorMsgIdPatient.Text= "ERROR MESSAGE : "+ex.Message.ToString();
        }
    }
    #endregion
    #region DROP_DOWNLISTS
    protected void DropDownList_PROVINCE_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            DropDownList_DISTRICT.Enabled = true;
            District_De_Province();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void DropDownList_DISTRICT_SelectedIndexChanged (object sender, EventArgs e)
    {
        TextBox_DISTRICT.Text = DropDownList_DISTRICT.Text.ToString();
    }
    #endregion
    #region FONCTIONS

    private void District_De_Province ( )
    {
        if (DropDownList_PROVINCE.Text == "Ville de Kigali")
        {
            DropDownList_DISTRICT.Items.Clear();
            DropDownList_DISTRICT.Items.Add("Gasabo");
            DropDownList_DISTRICT.Items.Add("Kicukiro");
            DropDownList_DISTRICT.Items.Add("Nyarugenge");
            DropDownList_DISTRICT.SelectedValue = DropDownList_DISTRICT.SelectedItem.ToString();
        }
        else if (DropDownList_PROVINCE.Text == "Eastern Province")
        {
            DropDownList_DISTRICT.Items.Clear();
            DropDownList_DISTRICT.Items.Add("Bugesera");
            DropDownList_DISTRICT.Items.Add("Gatsibo");
            DropDownList_DISTRICT.Items.Add("Kayonza");
            DropDownList_DISTRICT.Items.Add("Ngoma");
            DropDownList_DISTRICT.Items.Add("Nyagatare");
            DropDownList_DISTRICT.Items.Add("Rwamagana");
            DropDownList_DISTRICT.Items.Add("Kirehe");
            DropDownList_DISTRICT.SelectedValue = DropDownList_DISTRICT.SelectedItem.ToString();
        }
        else if (DropDownList_PROVINCE.Text == "Northern Province")
        {
            DropDownList_DISTRICT.Items.Clear();
            DropDownList_DISTRICT.Items.Add("Burera");
            DropDownList_DISTRICT.Items.Add("Gakenke");
            DropDownList_DISTRICT.Items.Add("Gicumbi");
            DropDownList_DISTRICT.Items.Add("Musanze");
            DropDownList_DISTRICT.Items.Add("Rulindo");
            DropDownList_DISTRICT.SelectedValue = DropDownList_DISTRICT.SelectedItem.ToString();
        }
        else if (DropDownList_PROVINCE.Text == "Southern Province")
        {
            DropDownList_DISTRICT.Items.Clear();
            DropDownList_DISTRICT.Items.Add("Gisagara");
            DropDownList_DISTRICT.Items.Add("Huye");
            DropDownList_DISTRICT.Items.Add("Kamonyi");
            DropDownList_DISTRICT.Items.Add("Muhanga");
            DropDownList_DISTRICT.Items.Add("Nyamagabe");
            DropDownList_DISTRICT.Items.Add("Nyanza");
            DropDownList_DISTRICT.Items.Add("Nyaruguru");
            DropDownList_DISTRICT.Items.Add("Ruhango");
            DropDownList_DISTRICT.SelectedValue = DropDownList_DISTRICT.SelectedItem.ToString();
        }
        else if (DropDownList_PROVINCE.Text == "Western Province")
        {
            DropDownList_DISTRICT.Items.Clear();
            DropDownList_DISTRICT.Items.Add("Karongi");
            DropDownList_DISTRICT.Items.Add("Ngororero");
            DropDownList_DISTRICT.Items.Add("Nyamasheke");
            DropDownList_DISTRICT.Items.Add("Nyabihu");
            DropDownList_DISTRICT.Items.Add("Rubavu");
            DropDownList_DISTRICT.Items.Add("Rusizi");
            DropDownList_DISTRICT.Items.Add("Rutsiro");
        }
    }
    private void FN_RADIO_BUTTON_LIST_ETAT_CIVIL ( )
    {
        try
        {
            if (RadioButtonList_ETAT_CIVIL.Text == "Célibataire" ||
                RadioButtonList_ETAT_CIVIL.Text == "Divorcé(e)" ||
                RadioButtonList_ETAT_CIVIL.Text == "Veuf(ve)")
            {
                TextBox_CONJOINT.Visible = false;
                TextBox_TELEPHONE.Focus();
                Label_CONJOINT.Visible = false;
            }
            else if (RadioButtonList_ETAT_CIVIL.Text == "Marié(e)")
            {
                //TextBox_CONJOINT.BackColor.Equals("#1e90ff");
                TextBox_CONJOINT.Visible = true;
                TextBox_CONJOINT.Focus();
                Label_CONJOINT.Visible = true;
            }
        }
        catch (Exception ex)
        {
            LabelErrorMsg_EtatCivil.Text="ERROR MESSAGE : " + ex.Message.ToString();
        }

    }
    private void Generate_ID_Consultation ( )
    {
        try
        {
            string ID_Patient, ServiceName, DateConsultation, NoConsultation;
            ID_Patient = TextBox_ID_PATIENT.Text.Substring(0, 2) + TextBox_ID_PATIENT.Text.Substring(3, 2) +
                          TextBox_ID_PATIENT.Text.Substring(6, 4) + TextBox_ID_PATIENT.Text.Substring(11, 4);
            ServiceName = RadioButtonList_ID_SERVICE.SelectedItem.ToString().Substring(0, 3).ToUpper();
            DateConsultation = TextBox_DATE_de_CONSULTATION.Text.Substring(0, 2) +
                                  TextBox_DATE_de_CONSULTATION.Text.Substring(3, 2) +
                                    TextBox_DATE_de_CONSULTATION.Text.Substring(8, 2);
            NoConsultation = ServiceName + "-" + ID_Patient + "-" + DateConsultation;
            //Response.Write(NoConsultation);
            string com = "select dbo.Select_ID_CONSULTATION_Max('" + NoConsultation + "')";
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
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
            for (int i = 0; i < 3 - len; i++)
            {
                re = "0" + re.ToString();
            }
            TextBox_ID_CONSULTATION.Text = NoConsultation + "-" + re;
        }
        catch (Exception ex)
        {
            LabelErrorMsg_RendezVous.Text="ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    private void Generate_ID_Patient ( )
    {
        try
        {
            string nom, prenom, dates, total;
            nom = TextBox_NOM.Text.Substring(0, 2).ToUpper();
            prenom = TextBox_PRENOM.Text.Substring(0, 2).ToUpper();
            dates = Label_DATE_ENREGISTREMENT.Text.Substring(0, 2) + Label_DATE_ENREGISTREMENT.Text.Substring(8, 2);
            total = nom + "-" + prenom + "-" + dates;
            string com = "select dbo.Select_IDPATIENT_Max('" + total + "')";
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=LA_CROIX_DU_SUD;Integrated Security=True");
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
            TextBox_ID_PATIENT.Text = total + "-" + re;
        }
        catch (Exception ex)
        {
            Label_ErrorMsgIdPatient.Text= "ERROR MESSAGE : "+ex.Message.ToString();
        }
    }
    #endregion
    protected void RadioButtonList_ID_SERVICE_SelectedIndexChanged (object sender, EventArgs e)
    {
        //Generate_ID_Consultation();

    }
    protected void LinkButton1_Click (object sender, EventArgs e)
    {
        //Response.Redirect("~/REGISTRATION/PRINT_Carte_de_CONSULTATION.aspx?param1=" + TextBox_ID_PATIENT.Text);
    }
    protected void LinkButton1_Click1 (object sender, EventArgs e)
    {
        //Response.Redirect("~/REGISTRATION/PRINT_Carte_de_CONSULTATION.aspx?param1="+TextBox_ID_PATIENT.Text);
    }
    protected void Button3_Click1 (object sender, EventArgs e)
    {
        try
        {
            SqlDataSource_TRAITEMENT_CONSULTATION_INSERT.Insert();
        }
        catch (Exception ex)
        {
            LabelErrorMsg_RendezVous.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
        finally
        {
            Response.Redirect("~/REGISTRATION/CARTE_DE_CONSULTATION.aspx?param1=" + TextBox_ID_CONSULTATION.Text);
        }
    }
    public string Gak;
    protected void TextBox_ID_PATIENT_TextChanged (object sender, EventArgs e)
    {
        Gak = TextBox_ID_PATIENT.Text;
    }
    protected void Button4_Click (object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/REGISTRATION/CARTE_DU_PATIENT.aspx?para=" + TextBox_ID_PATIENT.Text);
        }
        catch (Exception ex)
        {
            LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    //String MDYToDMY (String input)
    //{
    //    return Regex.Replace(input,
    //        "\\b(?<month>\\d{1,2})/(?<day>\\d{1,2})/(?<year>\\d{2,4})\\b",
    //        "${day}-${month}-${year}");
    //}
    protected void RadioButtonList_PAYS_LIMITROPHES_SelectedIndexChanged (object sender, EventArgs e)
    {
        try
        {
            TextBox_NATIONALITE.Text = RadioButtonList_PAYS_LIMITROPHES.SelectedValue;
        }
        catch (Exception ex)
        {
            LabelErrorMsg_Enregistrer.Text = "ERROR MESSAGE : " + ex.Message.ToString();
        }
    }
    protected void Button_Back_To_0_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button_Back_To_1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button_Back_To_2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void TextBox_DATE_de_CONSULTATION_TextChanged(object sender, EventArgs e)
    {
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Calendar_DATE_DE_RENDEZ_VOUS.Visible = true;
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        TextBox_DATE_DE_NAISSANCE.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}
