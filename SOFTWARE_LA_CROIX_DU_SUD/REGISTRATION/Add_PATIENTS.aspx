<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_RECEPTION.master"
    AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="Add_PATIENTS.aspx.cs"
    Inherits="REGISTRATION_PATIENTS" Title="LE PATIENT" Culture="auto" UICulture="auto" %>

<%@ Register Assembly="Neodynamic.WebControls.BarcodeProfessional" Namespace="Neodynamic.WebControls.BarcodeProfessional"
    TagPrefix="neobarcode" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center style="text-align: center;">
        <table>
            <tr>
                <td rowspan="2" style="padding-left: 10px; vertical-align: top; width: 100px;">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                        Font-Underline="True" Style="text-indent: 10px; text-align: left" Text="    Sélectionner la tâche à faire"
                        Width="190px"></asp:Label>
                    <br />
                    <asp:Label ID="Label_DATE_ENREGISTREMENT" runat="server" Font-Size="XX-Small" Width="180px"
                        Visible="False"></asp:Label><br />
                    <br />
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                        ForeColor="DodgerBlue" Style="font-weight: bold; font-size: x-small; text-transform: capitalize;
                        color: #1e90ff; font-family: Verdana; text-indent: 10px;" Text="Le numéro du patient"
                        Width="192px" Height="2px"></asp:Label></td>
                <td rowspan="2" style="vertical-align: top; width: 100px;">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Style="font-weight: bold;
                        font-size: xx-small; text-transform: capitalize; color: black; font-family: Verdana;
                        text-align: left; vertical-align: top;" Width="238px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                        Height="33px">
                        <asp:ListItem Value="0">Enregistrement du Patient</asp:ListItem>
                        <asp:ListItem Value="4">Prise de Rendez-vous</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:TextBox ID="TextBox_ID_PATIENT" runat="server" BackColor="AliceBlue" Font-Bold="True"
                        Font-Names="Verdana" Font-Size="Small" ForeColor="#1e90ff" Style="font-weight: bold;
                        font-size: x-small; text-transform: uppercase; color: #1e90ff; font-family: Verdana;
                        text-align: right;" Width="236px" OnTextChanged="TextBox_ID_PATIENT_TextChanged"
                        Height="15px"></asp:TextBox></td>
                <td rowspan="2" style="width: 100px">
                    <asp:Button ID="Button_MAKE_IDpATIENT" runat="server" BackColor="#1e90ff" Font-Bold="True"
                        Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="MAKE" Width="78px"
                        OnClick="Button_MAKE_IDpATIENT_Click" Visible="False" /></td>
                <td rowspan="2" style="width: 100px">
                    <asp:Image runat="server" ImageUrl="../IMAGES_PROJET/HOSPITAL38.jpg" Style="width: 121px;
                        height: 92px" ID="Image1" /></td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="4" rowspan="1" style="padding-left: 10px; vertical-align: top; height: 14px;">
                    <asp:Label ID="Label_ErrorMsgIdPatient" runat="server" Font-Bold="True" Font-Names="Verdana"
                        Font-Size="X-Small" ForeColor="Red" Height="7px" Width="675px"></asp:Label></td>
            </tr>
        </table>
        <hr style="font-weight: bold; color: #1e90ff; width: 864px;" />
    </center>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="font-weight: bold; font-size: x-small; color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="width: 3px; height: 24px; text-align: right;">
                        <asp:Label ID="Label3" runat="server" Text="   Nom du patient" Style="text-align: right;
                            text-indent: 10px;" Width="127px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; height: 22px; padding-left: 10px;">
                        <asp:TextBox ID="TextBox_NOM" runat="server" Style="text-transform: uppercase" Font-Bold="False"
                            Font-Names="Verdana" Font-Size="XX-Small" ForeColor="#400040" Width="197px"></asp:TextBox><asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_NOM" ErrorMessage="Entrer le nom du Patient !"
                                SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: right;">
                        <asp:Label ID="Label4" runat="server" Text="    Prénom du patient" Style="text-align: right;
                            text-indent: 10px;" Width="130px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; height: 22px; padding-left: 10px;">
                        <asp:TextBox ID="TextBox_PRENOM" runat="server" Style="text-transform: capitalize"
                            Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="#400040"
                            Width="197px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server" ControlToValidate="TextBox_PRENOM" ErrorMessage="Entrer le prénom du Patient !"
                                SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: right;">
                        <asp:Label ID="Label6" runat="server" Text="Autres noms" Style="text-align: right;
                            text-indent: 10px;" Height="5px" Width="126px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; height: 22px;">
                        <asp:TextBox ID="TextBox_AUTRENOM" runat="server" Style="text-transform: capitalize;
                            list-style-position: outside; list-style-type: square;" Font-Bold="False" Font-Names="Verdana"
                            Font-Size="XX-Small" ForeColor="#400040" Width="196px"></asp:TextBox></td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; vertical-align: top; text-align: right;">
                        <asp:Label ID="Label5" runat="server" Text="L'assureur" Style="text-align: right;
                            text-indent: 10px;" Width="126px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; height: 46px; vertical-align: top; text-align: left;">
                        <asp:RadioButtonList ID="RadioButtonList_ASSUREUR" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_ASSUREUR" DataTextField="NOM_ASSUREUR" DataValueField="ID_ASSUREUR"
                            RepeatColumns="3" RepeatDirection="Horizontal" Width="451px" Font-Names="Verdana"
                            Font-Size="XX-Small" Style="font-weight: bold; font-size: xx-small; text-transform: none;
                            color: black; font-family: Verdana; vertical-align: top; text-align: left;">
                        </asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="RadioButtonList_ASSUREUR" ErrorMessage="Sélectionnez l'assureur S.V.P!"
                            SetFocusOnError="True">?</asp:RequiredFieldValidator></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; height: 46px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: left; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label7" runat="server" Text="Profession" Style="text-align: right;
                            text-indent: 10px;" Width="126px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; height: 46px; vertical-align: top; text-align: left;">
                        <asp:DropDownList ID="DropDownList_PROFESSION" runat="server" AutoPostBack="True"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Width="201px">
                            <asp:ListItem>Agent de l'&#233;tat</asp:ListItem>
                            <asp:ListItem>Etudiant(e)</asp:ListItem>
                            <asp:ListItem>Sans emploi</asp:ListItem>
                            <asp:ListItem>Secteur priv&#233;</asp:ListItem>
                            <asp:ListItem>M&#233;decin</asp:ListItem>
                            <asp:ListItem>Militaire</asp:ListItem>
                            <asp:ListItem>Police</asp:ListItem>
                            <asp:ListItem>Retrait&#233;</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: left; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label8" runat="server" Text="Sexe" Style="text-align: right; text-indent: 10px;"
                            Width="127px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; height: 46px; padding-left: 10px; vertical-align: top; text-align: left;">
                        <asp:DropDownList ID="DropDownList_SEXE" runat="server" Width="201px" AutoPostBack="True"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Style="text-transform: capitalize">
                            <asp:ListItem Value="M">Masculin</asp:ListItem>
                            <asp:ListItem Value="F">F&#233;minin</asp:ListItem>
                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="DropDownList_SEXE" ErrorMessage="Sélectionner le Sexe !" SetFocusOnError="True">!</asp:RequiredFieldValidator></td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: left; padding-left: 10px; vertical-align: top;">
                        <asp:TextBox ID="TextBox_PROFESSION" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Width="89px" Visible="False"></asp:TextBox></td>
                    <td style="width: 2px; height: 46px; padding-left: 10px; vertical-align: top; text-align: left;">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="345px" />
                    </td>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 24px; text-align: right;">
                    </td>
                    <td style="padding-left: 10px; width: 2px; height: 24px">
                        <asp:SqlDataSource ID="SqlDataSource_ASSUREUR" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT [ID_ASSUREUR], [NOM_ASSUREUR] FROM [ASSUREUR] ORDER BY [NOM_ASSUREUR]">
                        </asp:SqlDataSource>
                    </td>
                    <td style="padding-left: 10px; width: 2px; height: 24px">
                        <asp:Button ID="ButtonPAGE1" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="ButtonPAGE1_Click" Text="Next>>" /></td>
                </tr>
            </table>
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="font-weight: bold; font-size: x-small; color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            ForeColor="Black" Style="text-align: left" Text="Date de naissance" Width="172px"></asp:Label></td>
                    <td rowspan="1" style="padding-left: 10px; width: 3px">
                    </td>
                    <td rowspan="1" style="vertical-align: top; width: 2px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label30" runat="server" ForeColor="Black" Style="text-align: left"
                            Text="SAISISSEZ L'ANNEE D'ABORD!" Width="172px" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="XX-Small"></asp:Label>
                        <asp:DropDownList ID="YearSelect" runat="server" OnSelectedIndexChanged="YearSelect_SelectedIndexChanged"
                            Width="65px" AutoPostBack="True" Font-Size="X-Small">
                        </asp:DropDownList><asp:DropDownList ID="MonthSelect" runat="server" OnSelectedIndexChanged="MonthSelect_SelectedIndexChanged"
                            Width="89px" AutoPostBack="True" Font-Size="X-Small">
                        </asp:DropDownList></td>
                    <td rowspan="3" style="width: 3px; padding-left: 10px;">
                        <asp:Calendar ID="Calendar1" runat="server" Height="65px" Style="font-size: xx-small;
                            text-transform: capitalize; font-family: Verdana" Width="98px" EnableTheming="True"
                            SelectMonthText="&gt;" OnSelectionChanged="Calendar1_SelectionChanged1" ShowNextPrevMonth="False"
                            ShowTitle="False">
                            <SelectedDayStyle BackColor="DodgerBlue" ForeColor="White" />
                            <WeekendDayStyle BackColor="AliceBlue" />
                            <OtherMonthDayStyle ForeColor="White" />
                        </asp:Calendar>
                        <asp:TextBox ID="TextBox_DATE_DE_NAISSANCE" runat="server" Font-Bold="False" Font-Names="Verdana"
                            Font-Size="XX-Small" ForeColor="Black" OnTextChanged="TextBox_DATE_DE_NAISSANCE_TextChanged"
                            Width="147px" Style="text-align: right"></asp:TextBox></td>
                    <td rowspan="5" style="vertical-align: top; width: 2px; text-align: left">
                        <asp:Label ID="LabelErrorMsg_DOB" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="177px" Width="222px"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="2" style="padding-left: 10px; vertical-align: top; width: 3px">
                        &nbsp;
                        <asp:Label ID="lblDate" runat="server" Text="Label" Width="119px" Visible="False"></asp:Label></td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:Label ID="Label10" runat="server" Text="No de la carte d'identité" Style="text-align: left"
                            Width="163px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:TextBox ID="TextBoxNo_CARTE_IDENTITE" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Width="176px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:Label ID="Label11" runat="server" Text="Religion" Style="text-align: left" Width="161px"
                            Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:DropDownList ID="DropDownList_RELIGION" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="XX-Small" Width="180px" AutoPostBack="True">
                            <asp:ListItem>Aucune</asp:ListItem>
                            <asp:ListItem>Catholique</asp:ListItem>
                            <asp:ListItem>Protestante</asp:ListItem>
                            <asp:ListItem>Musulmane</asp:ListItem>
                            <asp:ListItem>Adventiste</asp:ListItem>
                            <asp:ListItem>Traditionnelle</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td rowspan="1" style="vertical-align: top; width: 2px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                        <asp:Button ID="Button_Back_To_0" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="Button_Back_To_0_Click" Text="<< Back" /></td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td rowspan="1" style="vertical-align: top; width: 2px; text-align: left">
                        <asp:Button ID="ButtonPAGE2" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="ButtonPAGE2_Click" Text="Next>>" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="font-weight: bold; font-size: x-small; color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label2" runat="server" Text="Etat civil" Style="text-align: left"
                            Width="145px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:RadioButtonList ID="RadioButtonList_ETAT_CIVIL" runat="server" AutoPostBack="True"
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Width="332px" Font-Names="Verdana"
                            Font-Size="XX-Small" Style="color: black; font-family: Cambria; vertical-align: middle; text-align: left;">
                            <asp:ListItem>C&#233;libataire</asp:ListItem>
                            <asp:ListItem>Mari&#233;(e)</asp:ListItem>
                            <asp:ListItem>Divorc&#233;(e)</asp:ListItem>
                            <asp:ListItem>Veuf(ve)</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label_CONJOINT" runat="server" Text="Nom du conjoint" Style="text-align: left"
                            Width="147px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:TextBox ID="TextBox_CONJOINT" runat="server" Style="text-transform: uppercase"
                            Font-Names="Verdana" Font-Size="XX-Small" Width="197px"></asp:TextBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label14" runat="server" Text="No de téléphone" Style="text-align: left"
                            Width="145px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:TextBox ID="TextBox_TELEPHONE" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Width="198px"></asp:TextBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label15" runat="server" Text="Contact d'urgence" Style="text-align: left"
                            Width="145px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:TextBox ID="TextBox_CONTACT_URGENCE" runat="server" TextMode="MultiLine" Width="198px"
                            Height="52px" Style="text-transform: capitalize;"></asp:TextBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:Label ID="Label16" runat="server" Text="No de la carte d'assurance" Style="text-align: left"
                            Width="145px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top;">
                        <asp:TextBox ID="TextBox_NoCARTE_DASSURANCE" runat="server" Font-Names="Verdana"
                            Font-Size="XX-Small" Width="198px"></asp:TextBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px; vertical-align: top">
                        <asp:Label ID="LabelErrorMsg_EtatCivil" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="44px" Width="507px"></asp:Label></td>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; height: 14px;">
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; height: 14px;">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; height: 14px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px">
                        <asp:Button ID="Button_Back_To_1" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="Button_Back_To_1_Click" Text="<< Back" /></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; text-align: right;">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 2px; text-align: right">
                        <asp:Button ID="ButtonPAGE3" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="ButtonPAGE3_Click" Text="Next >>" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="font-weight: bold; font-size: x-small; color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="width: 2px; height: 22px; padding-left: 10px;">
                        <asp:Label ID="Label17" runat="server" Text="Catégorie du patient" Style="text-align: left"
                            Width="138px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; height: 32px; padding-left: 10px;">
                        <asp:DropDownList ID="DropDownList_CATEG_PATIENT" runat="server" Width="173px" AutoPostBack="True"
                            DataSourceID="SqlDataSource_CATEG_PATIENT" DataTextField="DESCRIPTION_PATIENT"
                            DataValueField="ID_CATEGORY_PATIENT" Font-Names="Verdana" Font-Size="XX-Small">
                        </asp:DropDownList></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; vertical-align: top; text-align: left;"
                        rowspan="2">
                        <asp:Label ID="Label18" runat="server" Text="Nationalité" Style="text-align: left"
                            Width="137px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td rowspan="2" style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                        <asp:RadioButtonList ID="RadioButtonList_NATIONALITE" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="RadioButtonList_NATIONALITE_SelectedIndexChanged" RepeatDirection="Horizontal"
                            Width="388px" Font-Names="Verdana" Font-Size="XX-Small">
                            <asp:ListItem Value="Rwandaise">RWANDAISE</asp:ListItem>
                            <asp:ListItem Value="Pays voisins">PAYS VOISINS</asp:ListItem>
                            <asp:ListItem Value="Autres pays">AUTRES PAYS</asp:ListItem>
                        </asp:RadioButtonList><asp:RadioButtonList ID="RadioButtonList_PAYS_LIMITROPHES" runat="server" AutoPostBack="True"
                            RepeatDirection="Horizontal" Width="388px" ForeColor="Black" Font-Names="Verdana"
                            Font-Size="XX-Small" Height="16px" OnSelectedIndexChanged="RadioButtonList_PAYS_LIMITROPHES_SelectedIndexChanged">
                            <asp:ListItem>Burundi</asp:ListItem>
                            <asp:ListItem>R.D.C</asp:ListItem>
                            <asp:ListItem>Uganda</asp:ListItem>
                            <asp:ListItem>Tanzania</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td rowspan="2" style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="width: 2px; padding-left: 10px; height: 22px;">
                        <asp:Label ID="Label19" runat="server" Text="Saisissez le Pays ici:" Style="text-align: left"
                            Width="138px" ForeColor="#C00000" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; padding-left: 10px; height: 32px;">
                        <asp:TextBox ID="TextBox_NATIONALITE" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Width="199px"></asp:TextBox></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; height: 32px; padding-left: 10px;">
                        <asp:Label ID="Label_PROVINCE" runat="server" Text="Province" Style="text-align: left"
                            Width="139px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; height: 32px; padding-left: 10px;">
                        <asp:DropDownList ID="DropDownList_PROVINCE" runat="server" AutoPostBack="True" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="XX-Small" Width="206px" OnSelectedIndexChanged="DropDownList_PROVINCE_SelectedIndexChanged"
                            DataSourceID="SqlDataSource_PROVINCE" DataTextField="ProvinceName" DataValueField="ProvinceName">
                            <asp:ListItem Value="-">-- Select Province --</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; height: 22px; padding-left: 10px;">
                        <asp:Label ID="Label_DISTRICT" runat="server" Text="District" Style="text-align: left"
                            Width="139px" Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 3px; height: 32px; padding-left: 10px;">
                        <asp:DropDownList ID="DropDownList_DISTRICT" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="XX-Small" Width="206px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DISTRICT_SelectedIndexChanged"
                            DataSourceID="SqlDataSource_DISTRICTS" DataTextField="DistrictName" DataValueField="DistrictName">
                        </asp:DropDownList></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px; height: 22px">
                        <asp:Label ID="LabelErrorMsg_Enregistrer" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="28px" Width="629px"></asp:Label></td>
                    <td colspan="1" style="padding-left: 10px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px; height: 22px; padding-left: 10px;">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1_IDPatientParamater" runat="server" Visible="False" Width="132px"></asp:TextBox></td>
                    <td style="width: 3px; height: 32px; padding-left: 10px;">
                        <asp:Button ID="Button1" runat="server" BackColor="#1e90ff" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="Small" ForeColor="White" Height="26px" Text="Enregistrer" Width="180px"
                            OnClick="Button1_Click1" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                        <asp:Button ID="Button_VERIFIER" runat="server" BackColor="AliceBlue" Font-Bold="True"
                            ForeColor="#1e90ff" OnClick="Button3_Click" Text="VERIFIER L'ENREGISTREMENT"
                            Width="264px" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                        <asp:Button ID="Button4" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="Small" ForeColor="DodgerBlue" OnClick="Button4_Click" Text="Print Carte du patient"
                            Width="178px" /></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 2px; height: 22px">
                        <asp:Button ID="Button_Back_To_2" runat="server" BackColor="AliceBlue" BorderColor="#1e90ff"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
                            ForeColor="#1e90ff" OnClick="Button_Back_To_2_Click" Text="<< Back" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                        &nbsp;</td>
                    <td style="padding-left: 10px; width: 3px; height: 32px">
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_DISTRICTS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT Districts.DistrictName, Provinces.ProvinceName FROM Districts INNER JOIN Provinces ON Districts.ProvinceID = Provinces.ProvinceID WHERE (Provinces.ProvinceName = @ProvinceName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList_PROVINCE" Name="ProvinceName" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PROVINCE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ProvinceName], [ProvinceID] FROM [Provinces]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PATIENT_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_PATIENT_TABLE" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT PATIENT.* FROM PATIENT">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_PATIENT" Name="ID_PATIENT" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_NOM" Name="NOM" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox_PRENOM" Name="PRENOM" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_AUTRENOM" Name="AUTRE_NOM" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="RadioButtonList_ASSUREUR" Name="ID_ASSUREUR" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="DropDownList_PROFESSION" Name="PROFESSION" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="DropDownList_SEXE" Name="SEXE" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_DATE_DE_NAISSANCE" Name="DATE_NAISSANCE"
                        PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TextBoxNo_CARTE_IDENTITE" Name="No_CARTE_IDENTITE"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList_RELIGION" Name="RELIGION" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="RadioButtonList_ETAT_CIVIL" Name="MARITAL_STATUS"
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox_CONJOINT" Name="CONJOINT" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_TELEPHONE" Name="TELEPHONE" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_CONTACT_URGENCE" Name="CONTACT_D_URGENCE"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox_NoCARTE_DASSURANCE" Name="No_CARTE_ASSUREUR"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList_CATEG_PATIENT" Name="ID_CATEGORY_PATIENT"
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_NATIONALITE" Name="NATIONALITY" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="DropDownList_PROVINCE" Name="PROVINCE" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_DISTRICT" Name="DISTRICT" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_CATEG_PATIENT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ID_CATEGORY_PATIENT], [DESCRIPTION_PATIENT] FROM [CATEGORY_PATIENT]">
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox_DISTRICT" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                Visible="False"></asp:TextBox></asp:View>
        <asp:View ID="View5" runat="server">
            <table style="font-weight: bold; font-size: x-small; text-transform: capitalize;
                color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="width: 179px; padding-left: 10px; height: 52px;">
                        <asp:Label ID="Label12" runat="server" Text="Le service:" Width="134px" Font-Names="Verdana"
                            Font-Size="XX-Small"></asp:Label></td>
                    <td colspan="2" style="padding-left: 10px; height: 52px">
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList_ID_SERVICE"
                            ErrorMessage="Sélectionner le Service S.V.P!">*</asp:RequiredFieldValidator><asp:RadioButtonList
                                ID="RadioButtonList_ID_SERVICE" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_IDSERVICE"
                                DataTextField="NOM_SERVICE" DataValueField="ID_SERVICE" Font-Bold="True" Font-Size="XX-Small"
                                RepeatColumns="3" RepeatDirection="Horizontal" Width="348px" Font-Names="Verdana"
                                Height="15px" OnSelectedIndexChanged="RadioButtonList_ID_SERVICE_SelectedIndexChanged" style="vertical-align: middle; text-align: left">
                            </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td style="width: 179px; padding-left: 10px;">
                        <asp:Label ID="Label22" runat="server" Text="Date de rendez-vous" Width="177px" Font-Names="Verdana"
                            Font-Size="XX-Small"></asp:Label></td>
                    <td style="vertical-align: top; width: 230px; text-align: left">
                        <asp:TextBox ID="TextBox_DATE_de_CONSULTATION" runat="server" Width="261px" Style="font-weight: bold;
                            font-size: small; vertical-align: middle; text-align: right" AutoPostBack="True"
                            OnTextChanged="TextBox_DATE_de_CONSULTATION_TextChanged"></asp:TextBox>
                    </td>
                    <td rowspan="8" style="vertical-align: top; width: 230px; text-align: left">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Date" Width="44px" /><asp:Calendar
                            ID="Calendar_DATE_DE_RENDEZ_VOUS" runat="server" OnSelectionChanged="Calendar_DATE_DE_RENDEZ_VOUS_SelectionChanged"
                            Style="font-size: xx-small" Visible="False">
                            <SelectedDayStyle BackColor="DodgerBlue" ForeColor="White" />
                            <WeekendDayStyle BackColor="AliceBlue" />
                            <OtherMonthDayStyle ForeColor="White" />
                            <TodayDayStyle BackColor="AliceBlue" ForeColor="DodgerBlue" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px; padding-left: 10px; height: 9px;">
                        <asp:Label ID="Label23" runat="server" Text="Heure de rendez-vous" Width="171px"
                            Font-Names="Verdana" Font-Size="XX-Small"></asp:Label></td>
                    <td style="width: 230px; height: 9px; vertical-align: top; text-align: left;">
                        <asp:DropDownList ID="DropDownList_HEURE_RENDEZVOUS" runat="server" AutoPostBack="True"
                            Style="text-align: right" Width="88px" Font-Names="Verdana" Font-Size="XX-Small">
                            <asp:ListItem>8:00</asp:ListItem>
                            <asp:ListItem>8:30</asp:ListItem>
                            <asp:ListItem>9:00</asp:ListItem>
                            <asp:ListItem>9:30</asp:ListItem>
                            <asp:ListItem>10:00</asp:ListItem>
                            <asp:ListItem>10:30</asp:ListItem>
                            <asp:ListItem>11:00</asp:ListItem>
                            <asp:ListItem>11:30</asp:ListItem>
                            <asp:ListItem>12:00</asp:ListItem>
                            <asp:ListItem>14:00</asp:ListItem>
                            <asp:ListItem>14:30</asp:ListItem>
                            <asp:ListItem>15:00</asp:ListItem>
                            <asp:ListItem>15:30</asp:ListItem>
                            <asp:ListItem>16:00</asp:ListItem>
                            <asp:ListItem>16:30</asp:ListItem>
                            <asp:ListItem>17:00</asp:ListItem>
                            <asp:ListItem>17:30</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 179px; padding-left: 10px;">
                        <asp:Label ID="Label24" runat="server" Text="Le numéro de consultation" Width="182px"
                            Font-Names="Verdana" Font-Size="XX-Small" Height="10px"></asp:Label></td>
                    <td style="width: 230px; vertical-align: top; text-align: left;">
                        <asp:TextBox ID="TextBox_ID_CONSULTATION" runat="server" Style="text-align: right"
                            Width="261px" Font-Names="Verdana" Font-Size="XX-Small" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 15px;" colspan="2">
                        &nbsp;<asp:Label ID="Label20" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        &nbsp;<asp:Label ID="Label21" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:Label ID="Label25" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:Label ID="LabelErrorMsg_RendezVous" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="40px" Width="467px" Style="text-transform: none"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="5" style="padding-left: 10px; vertical-align: top; text-align: left">
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" Width="396px" Height="22px" />
                    </td>
                </tr>
                <tr>
                    <td rowspan="1" style="vertical-align: top; width: 230px; text-align: left">
                        <asp:Label ID="Label26" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="1" style="vertical-align: top; width: 230px; text-align: left">
                        <asp:Label ID="Label27" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="1" style="vertical-align: top; width: 230px; text-align: left">
                        <asp:Label ID="Label29" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="1" style="vertical-align: top; width: 230px; text-align: left">
                        <asp:Label ID="Label31" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                            Height="10px" Text="Le numéro de consultation" Visible="False" Width="182px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 179px; padding-left: 10px;">
                        <asp:Button ID="Button3" runat="server" BackColor="White" BorderStyle="Ridge" Font-Bold="True"
                            Font-Names="Cambria" Font-Size="Small" ForeColor="DodgerBlue" OnClick="Button3_Click1"
                            Text="Print Carte de consultation" Width="198px" /></td>
                    <td style="padding-left: 10px;" colspan="2">
                        <asp:Button ID="Button_RENDEZ_VOUS_INSERT" runat="server" BackColor="#1e90ff" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="CONFIRMER LE RENDEZ-VOUS"
                            Width="236px" OnClick="Button_RENDEZ_VOUS_INSERT_Click" /></td>
                </tr>
                <tr>
                    <td style="width: 179px; padding-left: 10px;">
                        &nbsp;&nbsp;
                        <asp:Button ID="Button_PAGE7" runat="server" OnClick="Button_PAGE7_Click" Text="FAIRE PAYER LE RENDEZ-VOUS >>>"
                            Width="201px" Visible="False" />&nbsp;
                        </td>
                    <td colspan="2" style="padding-left: 10px">
                        &nbsp;<asp:SqlDataSource ID="SqlDataSource_RENDEZ_VOUS_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_INTO_RENDEZ_VOUS_CONSULTATION" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT RENDEZ_VOUS_CONSULTATION.* FROM RENDEZ_VOUS_CONSULTATION">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox_ID_PATIENT" Name="ID_PATIENT" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="RadioButtonList_ID_SERVICE" Name="ID_SERVICE" PropertyName="SelectedValue"
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBox_DATE_de_CONSULTATION" Name="DATE_RENDEZ_VOUS"
                                    PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="DropDownList_HEURE_RENDEZVOUS" Name="HEURE_RENDEZ_VOUS"
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="TextBox_ID_CONSULTATION" Name="ID_CONSULTATION"
                                    PropertyName="Text" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_INSERT_CONSULTATION_BIEN_AVANT" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_CONSULTATION_NOUVEAU_GOOD" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT CONSULTATION.*, ID_CONSULTATION AS Expr1 FROM CONSULTATION WHERE (ID_CONSULTATION = N'1')">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox_ID_CONSULTATION" Name="ID_CONSULTATION"
                                    PropertyName="Text" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_IDSERVICE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT ID_SERVICE, NOM_SERVICE FROM SERVICES WHERE (ID_CATEG_SERVICE = 1)">
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_TRAITEMENT_CONSULTATION_INSERT" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_INTO_TRAITEMENT_CONSULTATION" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT MAX(TRAITEMENT_CONSULTATION.No_TRAITEMENT_CONS) AS LAST_CONSULTATION FROM TRAITEMENT_CONSULTATION INNER JOIN SERVICES_RENDUS ON TRAITEMENT_CONSULTATION.ID_SERVICES_RENDUS = SERVICES_RENDUS.ID_SERVICES_RENDUS WHERE (TRAITEMENT_CONSULTATION.ID_SERVICES_RENDUS = 'CONS-2') GROUP BY SERVICES_RENDUS.ID_SERVICES_RENDUS">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox_ID_CONSULTATION" Name="ID_CONSULTATION"
                                    PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="CONS-2" Name="ID_SERVICES_RENDUS" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:View>
        &nbsp;
        <asp:View ID="View6" runat="server">
            &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="ID_PATIENT" DataSourceID="SqlDataSource_ID_PATIENT"
                Height="100px" RepeatColumns="1" HorizontalAlign="Left" RepeatLayout="Flow" Font-Names="Verdana"
                Font-Size="XX-Small" EnableTheming="True" GridLines="Both" Style="padding-left: 10px">
                <ItemTemplate>
                    &nbsp;
                    <table style="width: 227px">
                        <tr>
                            <td>
                                ID_PATIENT:</td>
                            <td>
                                <asp:Label ID="ID_PATIENTLabel" runat="server" Text='<%# Eval("ID_PATIENT") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                NOM:</td>
                            <td>
                                <asp:Label ID="NOMLabel" runat="server" Text='<%# Eval("NOM") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                PRENOM:</td>
                            <td>
                                <asp:Label ID="PRENOMLabel" runat="server" Text='<%# Eval("PRENOM") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                AUTRE_NOM:
                            </td>
                            <td>
                                <asp:Label ID="AUTRE_NOMLabel" runat="server" Text='<%# Eval("AUTRE_NOM") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                ID_ASSUREUR:</td>
                            <td>
                                <asp:Label ID="ID_ASSUREURLabel" runat="server" Text='<%# Eval("ID_ASSUREUR") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                PROFESSION:</td>
                            <td>
                                <asp:Label ID="PROFESSIONLabel" runat="server" Text='<%# Eval("PROFESSION") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                SEXE:</td>
                            <td>
                                <asp:Label ID="SEXELabel" runat="server" Text='<%# Eval("SEXE") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DATE_NAISSANCE:</td>
                            <td>
                                <asp:Label ID="DATE_NAISSANCELabel" runat="server" Text='<%# Eval("DATE_NAISSANCE") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                No_CARTE_IDENTITE:</td>
                            <td>
                                <asp:Label ID="No_CARTE_IDENTITELabel" runat="server" Text='<%# Eval("No_CARTE_IDENTITE") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                RELIGION:
                            </td>
                            <td>
                                <asp:Label ID="RELIGIONLabel" runat="server" Text='<%# Eval("RELIGION") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                MARITAL_STATUS:
                            </td>
                            <td>
                                <asp:Label ID="MARITAL_STATUSLabel" runat="server" Text='<%# Eval("MARITAL_STATUS") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CONJOINT:
                            </td>
                            <td>
                                <asp:Label ID="CONJOINTLabel" runat="server" Text='<%# Eval("CONJOINT") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                TELEPHONE:
                            </td>
                            <td>
                                <asp:Label ID="TELEPHONELabel" runat="server" Text='<%# Eval("TELEPHONE") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CONTACT_D_URGENCE:
                            </td>
                            <td>
                                <asp:Label ID="CONTACT_D_URGENCELabel" runat="server" Text='<%# Eval("CONTACT_D_URGENCE") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DATE_D_ENREGISTREMENT:</td>
                            <td>
                                <asp:Label ID="DATE_D_ENREGISTREMENTLabel" runat="server" Text='<%# Eval("DATE_D_ENREGISTREMENT") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                No_CARTE_ASSUREUR:</td>
                            <td>
                                <asp:Label ID="No_CARTE_ASSUREURLabel" runat="server" Text='<%# Eval("No_CARTE_ASSUREUR") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                ID_CATEGORY_PATIENT:</td>
                            <td>
                                <asp:Label ID="ID_CATEGORY_PATIENTLabel" runat="server" Text='<%# Eval("ID_CATEGORY_PATIENT") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                NATIONALITY:</td>
                            <td>
                                <asp:Label ID="NATIONALITYLabel" runat="server" Text='<%# Eval("NATIONALITY") %>'
                                    BackColor="AliceBlue" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                PROVINCE:</td>
                            <td>
                                <asp:Label ID="PROVINCELabel" runat="server" Text='<%# Eval("PROVINCE") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DISTRICT:</td>
                            <td>
                                <asp:Label ID="DISTRICTLabel" runat="server" Text='<%# Eval("DISTRICT") %>' BackColor="AliceBlue"
                                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Small" ForeColor="DodgerBlue"
                                    Width="250px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
                <HeaderTemplate>
                    <h3 style="text-align: center">
                        <span style="color: #1e90ff; font-family: Verdana; text-decoration: underline">LE PATIENT
                            A ETE AJOUTER AVEC SUCCES!</span></h3>
                </HeaderTemplate>
                <FooterStyle Font-Names="Verdana" Font-Size="XX-Small" />
                <ItemStyle Font-Names="Verdana" Font-Size="XX-Small" />
                <HeaderStyle Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" />
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource_ID_PATIENT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT PATIENT.* FROM PATIENT WHERE (ID_PATIENT = @ID_PATIENT)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_PATIENT" Name="ID_PATIENT" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View7" runat="server">
            <table style="width: 327px">
                <tr>
                    <td style="width: 256px; padding-left: 10px;">
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="ID_RENDEZ_VOUS" DataSourceID="SqlDataSource_RENDEZ_VOUS_ACCORDES"
                            Font-Names="Cambria" Font-Size="X-Small" Height="100px" Width="188px" Style="padding-left: 10px"
                            CellPadding="10" HorizontalAlign="Left" RepeatColumns="1">
                            <ItemTemplate>
                                &nbsp;<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <table style="width: 152px">
                                    <tr>
                                        <td style="width: 129px">
                                            Numero de RENDEZ-VOUS : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="ID_RENDEZ_VOUSLabel" runat="server" Text='<%# Eval("ID_RENDEZ_VOUS") %>'
                                                Width="129px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            ID du PATIENT:
                                        </td>
                                        <td>
                                            <asp:Label ID="ID_PATIENTLabel" runat="server" Text='<%# Eval("ID_PATIENT") %>' Width="132px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            Numero de SERVICE:</td>
                                        <td>
                                            <asp:Label ID="ID_SERVICELabel" runat="server" Text='<%# Eval("ID_SERVICE") %>' Width="130px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            DATE de RENDEZ-VOUS:
                                        </td>
                                        <td>
                                            <asp:Label ID="DATE_RENDEZ_VOUSLabel" runat="server" Text='<%# Eval("DATE_RENDEZ_VOUS") %>'
                                                Width="129px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            HEURE de RENDEZ-VOUS: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="HEURE_RENDEZ_VOUSLabel" runat="server" Text='<%# Eval("HEURE_RENDEZ_VOUS") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            DEJA CONSULTE:
                                        </td>
                                        <td>
                                            <asp:Label ID="DEJA_CONSULTELabel" runat="server" Text='<%# Eval("DEJA_CONSULTE") %>'
                                                Width="128px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            Numero de CONSULTATION:
                                        </td>
                                        <td>
                                            <asp:Label ID="ID_CONSULTATIONLabel" runat="server" Text='<%# Eval("ID_CONSULTATION") %>'
                                                Width="129px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            PAYE:&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="PAYELabel" runat="server" Text='<%# Eval("PAYE") %>' Width="126px"></asp:Label></td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 320px; text-align: left">
                        <asp:Label ID="LabelErrorMsg_ConfirmerPaiement" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="211px" Width="234px"></asp:Label></td>
                    <td style="width: 324px">
                        <asp:Button ID="Button_CONFIRMER_PAIEMENT" runat="server" BackColor="DodgerBlue"
                            Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="Button_CONFIRMER_PAIEMENT_Click"
                            Text="<< CONFIRMER LE PAIEMENT >>" Width="269px" />&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding-left: 10px;" colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource_RENDEZ_VOUS_ACCORDES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT ID_RENDEZ_VOUS, ID_PATIENT, ID_SERVICE, DATE_RENDEZ_VOUS, HEURE_RENDEZ_VOUS, DEJA_CONSULTE, ID_CONSULTATION, PAYE FROM RENDEZ_VOUS_CONSULTATION WHERE AND (ID_CONSULTATION = @ID_CONSULTATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_ID_CONSULTATION" Name="ID_CONSULTATION"
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px;" colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource_PAYER_RENDEZ_VOUS_CONSULTATION_UPDATE"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT RENDEZ_VOUS_CONSULTATION.* FROM RENDEZ_VOUS_CONSULTATION"
                            UpdateCommand="UPDATE_PAYER_RENDEZ_VOUS_CONSULTATION" UpdateCommandType="StoredProcedure">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox_ID_PATIENT" Name="ID_PATIENT" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBox_ID_CONSULTATION" Name="ID_CONSULTATION"
                                    PropertyName="Text" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            &nbsp;<br />
        </asp:View>
    </asp:MultiView><br />
    <center>
        <asp:TextBox ID="TextBox_D_AUJOURD_HUI" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox_DATE_d_ENREGISTRE" runat="server" BackColor="AliceBlue"
            Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#1e90ff"
            ReadOnly="True" Style="text-align: right;" Width="138px" Height="18px" Visible="False"></asp:TextBox>
    </center>
</asp:Content>
