<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true"
    MaintainScrollPositionOnPostback="true" CodeFile="CONSULTATION.aspx.cs" Inherits="CONSULTATION"
    Title="CONSULTATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 242px">
        <tr>
            <td style="height: 24px; padding-left: 10px; text-align: right;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                    Height="10px" Style="vertical-align: middle; text-align: right" Text="No de Consultation :"
                    Width="136px"></asp:Label></td>
            <td style="height: 24px; text-align: left;">
                <asp:TextBox ID="TextBox_IDCONSULTATION" runat="server" BackColor="LemonChiffon"
                    Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="DodgerBlue"
                    Height="12px" Width="245px" Style="text-align: right" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_IDCONSULTATION"
                        ErrorMessage="Vous devez entrer le numéro de consultation!" Font-Bold="True"
                        Font-Names="Verdana" Font-Size="X-Small" Enabled="False">?!</asp:RequiredFieldValidator></td>
            <td style="width: 97px; height: 24px; text-align: left;">
                <asp:Button ID="Button_BARCODEREADER" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                    Font-Names="Verdana" ForeColor="White" Height="22px" Text="BARCODE READER" Width="158px"
                    OnClick="Button_BARCODEREADER_Click" /></td>
            <td rowspan="4" style="width: 167px; vertical-align: top; text-align: left;">
                <asp:Image runat="server" ImageUrl="../IMAGES_PROJET/HOSPITAL%2019.jpg" style="width: 153px; height: 77px" Height="114px" ID="Image1" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 3px; text-align: left; padding-left: 10px; vertical-align: top;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="XX-Small" Height="10px" Width="311px" />
                <asp:Label ID="Label_ErrorMsgBarcode" runat="server" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="X-Small" ForeColor="Red" Width="572px"></asp:Label></td>
        </tr>
        <tr>
            <td style="padding-left: 10px; height: 24px; text-align: right;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="True" Text="Noms & Prénoms :" Width="124px"></asp:Label></td>
            <td colspan="2" style="text-align: left">
                <asp:Label ID="Label_LesNOMS" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="X-Small" Width="412px" Style="text-transform: uppercase; text-align: left;"></asp:Label></td>
        </tr>
        <tr>
            <td style="padding-left: 10px; height: 24px; text-align: right;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="True" Text="Age      :" Width="124px"></asp:Label></td>
            <td style="text-align: left">
                <asp:Label ID="Label_AGE" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Width="68px"></asp:Label></td>
            <td style="width: 97px; text-align: right;">
            </td>
        </tr>
        <tr>
            <td style="padding-left: 10px; height: 24px; text-align: right">
            </td>
            <td style="text-align: left">
            </td>
            <td style="width: 97px; text-align: right;">
                <asp:ImageButton ID="ImageButton_Retour" runat="server" ImageUrl="~/Images TMS MANZI/homepage.jpg"
                    OnClick="ImageButton_Retour_Click" /></td>
            <td rowspan="1" style="width: 167px; text-align: left; vertical-align: middle;">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton9_Click1" Style="font-weight: bold;
                    font-size: medium; color: #ff3300; font-family: Cambria" Width="54px">Retour</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 25px">
                <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2"
                    Font-Names="Verdana" Font-Size="X-Small" ForeColor="#284E98" Height="23px" OnMenuItemClick="Menu1_MenuItemClick"
                    Orientation="Horizontal" StaticSubMenuIndent="10px" Style="font-weight: normal;
                    font-size: xx-small; text-transform: capitalize; color: #1e90ff; font-family: Cambria;
                    background-color: aliceblue" Width="848px">
                    <StaticMenuItemStyle Font-Bold="True" ForeColor="DodgerBlue" HorizontalPadding="5px"
                        VerticalPadding="2px" />
                    <DynamicHoverStyle BackColor="DodgerBlue" ForeColor="White" />
                    <DynamicMenuStyle BackColor="#B5C7DE" />
                    <StaticSelectedStyle BackColor="DodgerBlue" ForeColor="White" />
                    <DynamicSelectedStyle BackColor="DodgerBlue" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <Items>
                        <asp:MenuItem Text="Consultation" Value="0" ToolTip="Consultation"></asp:MenuItem>
                        <asp:MenuItem Text="Examens &#224; faire" Value="2" ToolTip="Examens &#224; faire"></asp:MenuItem>
                        <asp:MenuItem Text="R&#233;sultats" Value="3" ToolTip="R&#233;sultats"></asp:MenuItem>
                        <asp:MenuItem Text="Traitement" Value="6" ToolTip="Traitement"></asp:MenuItem>
                        <asp:MenuItem Text="Prescriptions" Value="4" ToolTip="Prescriptions"></asp:MenuItem>
                        <asp:MenuItem Text="Hospitalisation" Value="1" ToolTip="Hospitalisation"></asp:MenuItem>
                        <asp:MenuItem Text="Suivi d'hospitalisation" ToolTip="Suivi d'hospitalisation" Value="7">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Retour" NavigateUrl="~/DOCTEUR/CONSULTATION.aspx" Value="5"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="DodgerBlue" ForeColor="White" />
                </asp:Menu>
            </td>
        </tr>
    </table>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 339px">
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Small"
                            Font-Underline="True" Height="17px" Text="Le poids : " Width="61px"></asp:Label></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                        </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Small"
                            Font-Underline="True" Height="17px" Text="Observations:" Width="61px"></asp:Label></td>
                    <td style="padding-left: 10px; width: 159px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                    <td style="padding-left: 10px; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                    <td style="padding-left: 10px; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="2" style="padding-left: 10px; vertical-align: top; background-color: white;
                        text-align: left">
                        <asp:TextBox ID="TextBox_Poids_Du_Patient" runat="server" Font-Size="Small"></asp:TextBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                    <td colspan="2" rowspan="2" style="padding-left: 10px; background-color: white; text-align: left">
                        <asp:TextBox ID="TextBox_Premieres_OBSERVATIONS" runat="server" TextMode="MultiLine"
                            Width="369px"></asp:TextBox></td>
                    <td colspan="2" rowspan="2" style="padding-left: 10px; background-color: white; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 7px; background-color: white;
                        text-align: left">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px; vertical-align: top; height: 182px; background-color: white;
                        text-align: left">
                        <span style="font-size: 10pt; font-family: Sylfaen; background-color: #f0f8ff">Sélectionnez
                            la plainte ici:&gt;&gt;</span><br />
                        <asp:ListBox ID="ListBox_CONFIRMED_PLAINTES_INSERTED" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_PLAINTES" DataTextField="DESCRIPTION_PLAINTE" DataValueField="CODE_PLAINTE"
                            Font-Bold="False" ForeColor="Black"
                            Height="165px" OnSelectedIndexChanged="ListBox_CONFIRMED_PLAINTES_INSERTED_SelectedIndexChanged"
                            Width="319px"></asp:ListBox></td>
                    <td style="width: 211px; background-color: white; padding-left: 10px; height: 182px; vertical-align: top;">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="                                          " Width="103px"></asp:Label><asp:CheckBoxList ID="CheckBoxList_LES_PLAINTES" runat="server"
                                    Style="font-weight: bold; font-size: xx-small; font-family: Sylfaen" DataSourceID="SqlDataSource_LISTE_des_PLAINTES"
                                    DataTextField="DESCRIPTION_PLAINTE" DataValueField="CODE_PLAINTE" Width="107px" AutoPostBack="True" Enabled="False" Visible="False">
                                </asp:CheckBoxList>
                            <asp:Button ID="Button6" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                                OnClick="Button6_Click" Text="Ajouter >>" Visible="False" Width="105px" /></td>
                    <td style="background-color: white; padding-left: 10px; height: 182px;" colspan="3">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Text="La Liste des Plaintes:" Width="260px"></asp:Label><br />
                        <asp:ListBox  ID="ListBox_LISTE_PLAINTES_DU_PATIENT" runat="server" BackColor="White"
                            Font-Bold="False" Font-Underline="True"
                            Height="168px" Width="261px" AutoPostBack="True" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox_LISTE_PLAINTES_DU_PATIENT_SelectedIndexChanged"></asp:ListBox></td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px; background-color: white; text-align: left">
                        <asp:TextBox ID="TextBox_ID_PLAINTE" runat="server" Visible="False"></asp:TextBox><asp:Label ID="Label6" runat="server" Font-Names="Cambria" Font-Size="Small" Font-Underline="True"
                            Height="16px" Text="Sélectionnes la catégorie des Plaintes:" Width="223px" Visible="False"></asp:Label>
                        <asp:DropDownList ID="DropDownList_CATEG_PLAINTES" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_CATEG_PLAINTES" DataTextField="CATEGORY_DESCRIPTION"
                            DataValueField="ID_CATEG_PLAINTES" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            ForeColor="DodgerBlue" Width="178px" BackColor="Ivory" Visible="False">
                        </asp:DropDownList><br />
                        <span style="font-size: 9pt; font-family: Cambria; background-color: aliceblue;">
                            <br />
                        </span>
                    </td>
                    <td style="width: 211px; padding-left: 10px; background-color: white;">
                        &nbsp;</td>
                    <td colspan="3" style="padding-left: 10px; background-color: white">
                        <asp:Panel ID="Panel2" runat="server" Height="67px" Width="260px">
                            <span style="font-size: 8pt; font-family: Verdana">Sélectionner les plaintes enregistrées
                                ci-dessus pour les confirmer.<br />
                                Cliquer sur le bouton "<span style="text-decoration: underline"><strong>Confirmer Plainte</strong></span>"
                                jusqu'à ce&nbsp; que la liste soit vide</span></asp:Panel>
                        <asp:Button ID="Button1" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                            Font-Names="Cambria" Font-Size="Small" ForeColor="White" OnClick="Button1_Click"
                            Text="Confirmer Plainte" Width="261px" /></td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; height: 34px; background-color: white">
                    </td>
                    <td colspan="1" style="padding-left: 10px; height: 34px; background-color: white">
                    </td>
                    <td style="padding-left: 10px; background-color: white; height: 34px;" colspan="3">
                        &nbsp;<asp:Label ID="Label_ErrorMsgPlaintes" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Width="550px"></asp:Label></td>
                    <td colspan="2" style="vertical-align: top; height: 34px; background-color: white;
                        text-align: left">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; height: 23px; background-color: white">
                    </td>
                    <td colspan="1" style="padding-left: 10px; height: 23px; background-color: white">
                    </td>
                    <td colspan="3" style="padding-left: 10px; height: 23px; background-color: white">
                    </td>
                    <td colspan="2" style="vertical-align: top; height: 23px; background-color: white;
                        text-align: left">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images TMS MANZI/save.gif"
                            OnClick="ImageButton1_Click" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_CATEG_PLAINTES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ID_CATEG_PLAINTES], [CATEGORY_DESCRIPTION] FROM [CATEGORY_PLAINTES]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PLAINTES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT CODE_PLAINTE, DESCRIPTION_PLAINTE, ID_CATEG_PLAINTES FROM PLAINTES">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_LISTE_des_PLAINTES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [CODE_PLAINTE], [DESCRIPTION_PLAINTE], [ID_CATEG_PLAINTES] FROM [PLAINTES] WHERE ([ID_CATEG_PLAINTES] = @ID_CATEG_PLAINTES)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList_CATEG_PLAINTES" Name="ID_CATEG_PLAINTES"
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PLAINTES_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" InsertCommand="INSERT_INTO_LES_PLAINTES_DE_CONSULTATION" InsertCommandType="StoredProcedure" SelectCommand="SELECT LES_PLAINTES_DE_CONSULTATION.* FROM LES_PLAINTES_DE_CONSULTATION">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_PLAINTE" Name="CODE_PLAINTE" PropertyName="Text"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_CONSULTATION_PARTIE_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" SelectCommand="SELECT CONSULTATION.* FROM CONSULTATION WHERE (ID_CONSULTATION = N'1')" UpdateCommand="UPDATE_CONSULTATION_POUR_INSERER_A_NOUVEAU" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_Poids_Du_Patient" Name="POIDS" PropertyName="Text"
                        Type="Double" />
                    <asp:ControlParameter ControlID="TextBox_Premieres_OBSERVATIONS" Name="OBSERVATIONS"
                        PropertyName="Text" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox_ID_SERVICE" runat="server" Visible="false"></asp:TextBox>
            <asp:TextBox ID="TextBox_POIDS" runat="server" Visible="false"></asp:TextBox></asp:View>
        <asp:View ID="View_EXAMENS_A_FAIRE" runat="server">
            <h4>
                <span style="color: #1e90ff"></span>
            </h4>
            <h4>
                <span style="color: black">
                    <table style="text-align: left">
                        <tr>
                            <td rowspan="2" style="padding-left: 10px; vertical-align: top">
                                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small"
                                    Text="Sélectionner Un Département de Laboratoire et Consulter la Liste des Examens Disponibles dans ce Département."
                                    Width="353px"></asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList_DEPART_DE_LABO" runat="server" AutoPostBack="True"
                                    DataSourceID="SqlDataSource_ID_DEPART_LABO" DataTextField="NOM_DEPART_LABO" DataValueField="ID_DEPART_LABO"
                                    Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Font-Underline="True"
                                    ForeColor="Black" Width="177px" OnSelectedIndexChanged="RadioButtonList_DEPART_DE_LABO_SelectedIndexChanged">
                                </asp:RadioButtonList></td>
                            <td style="height: 13px; width: 3px;">
                            </td>
                            <td style="padding-left: 10px; vertical-align: top; width: 408px;">
                                <asp:Label ID="Label8" runat="server" Style="font-weight: bold; font-size: x-small;
                                    font-family: Verdana; text-decoration: underline" Text="La liste des Examens à Faire au Laboratoire:"
                                    Width="292px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 72px; width: 3px;">
                            </td>
                            <td style="padding-left: 10px; vertical-align: top; width: 408px;">
                                <span style="text-decoration: underline"><em><span style="color: black"><span style="font-size: 8pt;
                                    font-family: Verdana"></span></span></em></span>
                                <asp:ListBox ID="ListBox_DES_EXAMENS_A_FAIRE" runat="server" AutoPostBack="True"
                                    BackColor="Ivory" DataSourceID="SqlDataSource_RESULTATS_EXAMENS_A_FAIRE" DataTextField="EXAM_DESCRIPTION"
                                    DataValueField="CODE_EXAMEN" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                    ForeColor="DodgerBlue" Height="167px" Width="278px"></asp:ListBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left: 10px">
                            </td>
                            <td style="width: 3px">
                            </td>
                            <td style="padding-left: 10px; width: 408px;">
                                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small"
                                    Height="25px" Text="Sélectionner Un Examen et Confirmez-le en cliquant sur &quot;Confimer l'Examen&quot; ci-dessous."
                                    Width="277px"></asp:Label>
                                <asp:Button ID="Button2" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" Font-Underline="True" ForeColor="White"
                                    Text="Confirmer l'Examen >>" Width="278px" OnClick="Button2_Click" /></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="padding-left: 10px">
                                <asp:Label ID="Label_ErrorMsgExamens" runat="server" Font-Bold="True" Font-Names="Verdana"
                                    Font-Size="X-Small" ForeColor="Red" Width="550px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="padding-left: 10px; height: 106px;">
                                <asp:LinkButton ID="LinkButton_HOSPITALISER" runat="server" BackColor="White" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" OnClick="LinkButton2_Click"
                                    Width="294px">Hospitaliser le Patient</asp:LinkButton></td>
                            <td style="height: 106px; width: 3px;">
                            </td>
                            <td style="padding-left: 10px; width: 408px; height: 106px;">
                                <asp:ListBox ID="ListBox_EXAMENS_CONFIRMES" runat="server" AutoPostBack="True" BackColor="Ivory"
                                    Font-Bold="False" ForeColor="Black"
                                    Height="88px" Width="278px" OnSelectedIndexChanged="ListBox_EXAMENS_CONFIRMES_SelectedIndexChanged">
                                </asp:ListBox></td>
                        </tr>
                        <tr>
                            <td style="padding-left: 10px">
                            </td>
                            <td style="width: 3px">
                            </td>
                            <td style="padding-left: 10px; width: 408px;">
                                <asp:Button ID="Button_DELETE_EXAMENS_PROPOSES" runat="server" BackColor="DeepSkyBlue"
                                    Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="White" OnClick="Button4_Click"
                                    Text="Annuler l'Examen >>" Width="279px" /></td>
                        </tr>
                    </table>
                    <asp:SqlDataSource ID="SqlDataSource_ID_DEPART_LABO" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                        SelectCommand="SELECT [ID_DEPART_LABO], [NOM_DEPART_LABO] FROM [LABO_DEPARTMENT]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource_RESULTATS_EXAMENS_A_FAIRE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                        SelectCommand="SELECT EXAM_DESCRIPTION, CODE_EXAMEN, ID_SERVICES_RENDUS FROM EXAMENS_A_FAIRE WHERE (ID_DEPART_LABO = @ID_DEPART_LABO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="RadioButtonList_DEPART_DE_LABO" Name="ID_DEPART_LABO"
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource_RESULTATS_pour_EXAMEN_a_FAIRE_INSERT" runat="server"
                        ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                        DeleteCommand="DELETE_RESULTATS_EXAMEN" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_RESULTATS_EXAMEN"
                        InsertCommandType="StoredProcedure" SelectCommand="SELECT RESULTATS_EXAMEN.* FROM RESULTATS_EXAMEN WHERE (ID_CONSULTATION = @ID_CONSULTATION)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TextBox_CODE_EXAMEN" Name="CODE_EXAMEN" PropertyName="Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                Type="String" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="ListBox_DES_EXAMENS_A_FAIRE" Name="CODE_EXAMEN"
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:TextBox ID="TextBox_CODE_EXAMEN" runat="server" Visible="False"></asp:TextBox></span></h4>
        </asp:View>
        <asp:View ID="View_PRESCRIPTIONS" runat="server">
            <table style="text-align: left">
                <tr>
                    <td style="width: 3px; padding-left: 10px; height: 10px;">
                        <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Text="Sélectionnez les Prescriptions ici:" Width="256px"></asp:Label></td>
                    <td style="width: 3px; padding-left: 10px; height: 10px;">
                    </td>
                    <td style="width: 3px; padding-left: 10px; height: 10px;">
                        <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Text="Liste des Prescriptions :" Width="188px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 3px; padding-left: 10px; vertical-align: top;">
                        <asp:ListBox ID="ListBox_PRESCRIPTIONS_EXISTANTES" runat="server" Height="160px" Width="297px" style="font-weight: normal; font-size: x-small" AutoPostBack="True" DataSourceID="SqlDataSource_LISTE_des_PRESCRIPTIONS" DataTextField="PRESCRIPTION_DESCRIPTION" DataValueField="No_PRESCRIPTION"></asp:ListBox></td>
                    <td style="width: 3px; padding-left: 10px; vertical-align: top;">
                        <asp:Button ID="Button_ADD_PRESCRIPTION" runat="server" BackColor="White" Font-Bold="True"
                            Font-Names="Verdana" ForeColor="DeepSkyBlue" OnClick="Button_ADD_PRESCRIPTION_Click"
                            Text="ADD >>" />
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;<asp:Button ID="Button_NOUVELLE_PRESCRIPTION" runat="server" BackColor="DeepSkyBlue"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="White" OnClick="Button_NOUVELLE_PRESCRIPTION_Click" Text="NOUVELLE >>"
                            Width="121px" /></td>
                    <td style="width: 3px; padding-left: 10px; vertical-align: top;">
                        <asp:ListBox ID="ListBox_La_LISTE_des_PRESCRITIONS" runat="server" BackColor="Ivory"
                            Height="161px" SelectionMode="Multiple" Width="300px"></asp:ListBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px; vertical-align: top">
                        <asp:Label ID="Label_ErrorMsgPrescriptions" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Width="550px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:Label ID="Label11" runat="server"
                                Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small" Font-Underline="True"
                                Text="Saisissez les Nouvelles Prescriptions ici:" Width="257px"></asp:Label><asp:TextBox ID="TextBox_PRESCRIPTIONS" runat="server" Height="24px" TextMode="MultiLine"
                            Width="250px"></asp:TextBox></td>
                    <td style="width: 3px; padding-left: 10px;">
                    </td>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Text="Veuillez Sélectionner les Prescriptions à Confirmer et Cliquez sur le Bouton ci-dessous pour confirmer:"
                            Width="301px"></asp:Label><br />
                        <asp:Button ID="Button4" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                            Font-Names="Verdana" Font-Underline="True" ForeColor="White" OnClick="Button4_Click1"
                            Text="CONFIRMER LES PRESCRIPTIONS" Width="301px" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_LISTE_des_PRESCRIPTIONS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [No_PRESCRIPTION], [PRESCRIPTION_DESCRIPTION] FROM [PRESCRIPTION]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PRESCRIPTIONS_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_PRESCRIPTIONS_DE_CONSULTATION" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT PRESCRIPTION_DE_CONSULTATION.* FROM PRESCRIPTION_DE_CONSULTATION WHERE (ID_CONSULTATION = @ID_CONSULTATION)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_No_PRESCRIPTION" Name="No_PRESCRIPTION"
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox_No_PRESCRIPTION" runat="server" Visible="False"></asp:TextBox></asp:View>
        <asp:View ID="View_ALLOCATION_CHAMBRE" runat="server">
            <span style="color: #1e90ff; font-family: Verdana; text-decoration: underline"></span>
            <span style="color: #1e90ff; font-family: Verdana"><span style="color: #1e90ff">
                <table style="text-align: left">
                    <tr>
                        <td style="padding-left: 10px">
                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="Sélectionner le Service Médical qui devra Traiter le Patient lors de son Hospitalisation"
                                Width="265px"></asp:Label></td>
                        <td style="padding-left: 10px;">
                            <asp:DropDownList ID="DropDownList_ID_SERVICE" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_SERVICE_MEDICAL"
                                DataTextField="NOM_SERVICE" DataValueField="ID_SERVICE" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="X-Small" Font-Underline="True" Width="227px">
                            </asp:DropDownList></td>
                        <td style="padding-left: 10px">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="Chambres Disponibles" Width="165px" Font-Underline="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 10px;">
                            <br />
                            <img src="../IMAGES_PROJET/HOSPITAL%2036.jpg" style="width: 177px; height: 110px" /></td>
                        <td style="padding-left: 10px;">
                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="Veuillez Sélectionner la Catégorie de la Chambre Allouée" Width="236px"></asp:Label>
                            <asp:RadioButtonList ID="RadioButtonList_CATEG_CHAMBRES" runat="server" AutoPostBack="True"
                                BackColor="Ivory" DataSourceID="SqlDataSource_CATEG_CHAMBRE" DataTextField="DESCRIPTION"
                                DataValueField="ID_CATEG_CHAMBRE" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="DeepSkyBlue" Style="color: black; background-color: #ffffff" Width="234px" OnSelectedIndexChanged="RadioButtonList_CATEG_CHAMBRES_SelectedIndexChanged">
                            </asp:RadioButtonList>
                        </td>
                        <td style="padding-left: 10px">
                            <asp:ListBox ID="ListBox_CHAMBRE_ORDINAIRE" runat="server" Height="142px" OnSelectedIndexChanged="ListBox_CHAMBRE_ORDINAIRE_SelectedIndexChanged"
                                Width="75px" DataSourceID="SqlDataSource_CHAMBRES_DISPONIBLES" DataTextField="No_CHAMBRE"
                                DataValueField="No_CHAMBRE" AutoPostBack="True" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="X-Small" Style="text-indent: 10pt; text-align: right"></asp:ListBox></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 10px">
                        </td>
                        <td style="padding-left: 10px;">
                            <asp:TextBox ID="TextBox_No_CHAMBRE" runat="server" BackColor="Ivory" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" ReadOnly="True"
                                Width="88px" Style="text-align: right"></asp:TextBox></td>
                        <td style="padding-left: 10px">
                            <asp:Button ID="Button_CONFIRM_CHAMBRE" runat="server" BackColor="White" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                                Text="CONFIRMER" OnClick="Button_CONFIRM_CHAMBRE_Click" /></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 10px">
                        </td>
                        <td style="padding-left: 10px">
                        </td>
                        <td style="padding-left: 10px">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 10px">
                        </td>
                        <td style="padding-left: 10px">
                        </td>
                        <td style="padding-left: 10px">
                            <asp:Button ID="Button7" runat="server" BackColor="White" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                                Text="Voir la carte d'hospitalisation" OnClick="Button7_Click" Width="234px" /></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 10px" colspan="3">
                            <asp:Label ID="Label_ErrorMsgHospitalisation" runat="server" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
                    </tr>
                </table>
            </span></span>
            <asp:SqlDataSource ID="SqlDataSource_SERVICE_MEDICAL" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT ID_SERVICE, NOM_SERVICE FROM SERVICES WHERE (ID_CATEG_SERVICE = 1)">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_CHAMBRES_DISPONIBLES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT No_CHAMBRE FROM CHAMBRES WHERE (DISPONIBLE = 1) AND (ID_CATEG_CHAMBRE = @ID_CATEG_CHAMBRE)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList_CATEG_CHAMBRES" Name="ID_CATEG_CHAMBRE"
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_CATEG_CHAMBRE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ID_CATEG_CHAMBRE], [DESCRIPTION] FROM [CATEGORY_CHAMBRE]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_HOSPITALISATION_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_HOSPITALISATION" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT HOSPITALISATION.* FROM HOSPITALISATION WHERE (ID_CONSULTATION = @ID_CONSULTATION)"
                UpdateCommand="UPDATE_HOSPITALISATION" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:Parameter Name="ID_HOSPITALISATION" Type="String" />
                    <asp:Parameter Name="No_CHAMBRE" Type="String" />
                    <asp:Parameter Name="DATE_DE_SORTIE" Type="DateTime" />
                    <asp:Parameter Name="HEURE_DE_SORTIE" Type="String" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_HOSPITALISATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox_No_CHAMBRE" Name="No_CHAMBRE" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <table style="width: 256px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px; height: 21px;">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Text="Liste des Résultats d'examens faits" Width="414px"></asp:Label></td>
                    <td style="width: 3px; padding-left: 10px; height: 21px;">
                        &nbsp;</td>
                    <td style="width: 3px; height: 21px;">
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" BackColor="Ivory" DataValueField="CODE_EXAMEN" Font-Bold="False" ForeColor="Black" Height="126px" Width="408px" DataSourceID="SqlDataSource_RESULTATS_EXAM_FAITS" DataTextField="Resultats"></asp:ListBox><asp:SqlDataSource ID="SqlDataSource_RESULTATS_EXAM_FAITS" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_RESULTAT_EXAMEN_FAIT_au_Labo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="White" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="XX-Small" ForeColor="DodgerBlue" Height="13px"
                            OnClick="LinkButton2_Click1" Width="115px">Prescrire  >>>></asp:LinkButton></td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; text-align: left;">
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Text="Observations :" Width="151px"></asp:Label><br />
                        <asp:TextBox ID="TextBox_OBSERVATIONS" runat="server" Height="54px" TextMode="MultiLine" Width="237px"></asp:TextBox>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<br />
                        <br />
                        <asp:Button ID="Button_CONFIRMER_OBSERVATIONS" runat="server" BackColor="White" Font-Bold="True"
                            Font-Names="Verdana" ForeColor="DodgerBlue" Text="Confirmer les Observations"
                            Width="211px" OnClick="Button_CONFIRMER_OBSERVATIONS_Click" /></td>
                    <td style="width: 3px; padding-left: 10px;">
                    </td>
                    <td style="height: 56px; width: 3px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px">
                        <asp:Label ID="Label_ErrorMsgResultatsDesExamens" runat="server" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Height="27px" Width="557px"></asp:Label></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 204px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px; vertical-align: top">
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="Liste de tous les traitements" Width="277px"></asp:Label></td>
                    <td style="padding-left: 10px">
                    </td>
                    <td style="padding-left: 10px">
                        <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="Les traitements sélectionnés" Width="277px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top;">
                        <asp:ListBox ID="ListBox_LISTE_des_TRAITEMENTS" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_Les_TRAITEMENTS_de_CONSULTATION" DataTextField="DESCRIPTION_SERV_RENDUS"
                            DataValueField="ID_SERVICES_RENDUS" Font-Bold="False"
                            Font-Underline="False" Height="194px" Width="282px" OnSelectedIndexChanged="ListBox_LISTE_des_TRAITEMENTS_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td style="padding-left: 10px">
                        <asp:Button ID="Button_ADD_TRAITEMENT" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="Small" Font-Underline="False" ForeColor="White"
                            OnClick="Button5_Click" Text="ADD  >>>" Width="107px" /><br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button_REMOVE_TRAITEMENT" runat="server" BackColor="DeepSkyBlue"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="White" OnClick="Button_REMOVE_TRAITEMENT_Click" Text="<<< REMOVE"
                            Width="107px" />&nbsp;</td>
                    <td style="padding-left: 10px;">
                        <asp:ListBox ID="ListBox_TRAITEMENT_a_FAIRE" runat="server" BackColor="Ivory" Font-Bold="False" Font-Underline="False" Height="194px"
                            Width="283px" AutoPostBack="True" OnSelectedIndexChanged="ListBox_TRAITEMENT_a_FAIRE_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                    </td>
                    <td style="padding-left: 10px">
                    </td>
                    <td style="padding-left: 10px;">
                        &nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" Text="Confirmer les Traitements à Faire" Width="277px"></asp:Label>
                        <asp:Button ID="Button_CONFIRMER_les_TRAITEMENTS" runat="server" BackColor="DeepSkyBlue"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="White" Text="CONFIRMER" Width="107px" OnClick="Button_CONFIRMER_les_TRAITEMENTS_Click" /></td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px">
                        <asp:Label ID="Label_ErrorMsgTraitements" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Height="27px" Width="704px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:Button ID="Button5" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" Font-Underline="True" ForeColor="DodgerBlue" Style="text-align: center;
                            vertical-align: middle;" Text="Voir les Résultats des Examens" Width="244px"
                            Height="28px" OnClick="Button_TRANSFERTS_Click" Visible="False" /></td>
                    <td style="padding-left: 10px">
                    </td>
                    <td style="padding-left: 10px;">
                        <asp:TextBox ID="TextBox_No_TRAITEMENT" runat="server" Visible="False"></asp:TextBox></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_Les_TRAITEMENTS_de_CONSULTATION" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT DESCRIPTION_SERV_RENDUS, ID_SERVICES_RENDUS FROM SERVICES_RENDUS WHERE (ID_CATEG_SER_RENDUS = 100)">
            </asp:SqlDataSource>
            <%--<asp:GridView ID="GridView_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION" runat="server"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION" Font-Size="XX-Small">
                <EmptyDataTemplate>
                    Il n'y a pas de donnees!
                </EmptyDataTemplate>
            </asp:GridView>--%>
            <asp:GridView ID="GridView_NOMPRENOM_PAT_by_IDCons" runat="server" AutoGenerateColumns="False"
                DataKeyNames="ID_PATIENT" DataSourceID="SqlDataSource_NOMPRENOM_par_IDcons" Font-Size="XX-Small" Visible="False">
                <Columns>
                    <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                    <asp:BoundField DataField="MOIS" HeaderText="MOIS" ReadOnly="True" SortExpression="MOIS" />
                    <asp:BoundField DataField="AGE" HeaderText="AGE" ReadOnly="True" SortExpression="AGE" />
                    <asp:BoundField DataField="NOM_PRENOM" HeaderText="NOM_PRENOM" ReadOnly="True" SortExpression="NOM_PRENOM" />
                    <asp:BoundField DataField="ID_PATIENT" HeaderText="ID_PATIENT" ReadOnly="True" SortExpression="ID_PATIENT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_NOMPRENOM_par_IDcons" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT_NOM_PRENOM_du_PATIENT" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_les_Noms_et_Lage_du_Patient" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT     dbo.CONSULTATION.ID_CONSULTATION, DATEDIFF(MONTH, dbo.PATIENT.DATE_NAISSANCE, GETDATE()) AS MOIS, DATEDIFF(MONTH, &#13;&#10;                      dbo.PATIENT.DATE_NAISSANCE, GETDATE()) / 12 AS AGE, dbo.PATIENT.NOM + '  ' + dbo.PATIENT.PRENOM AS NOM_PRENOM, &#13;&#10;                      dbo.CONSULTATION.ID_PATIENT&#13;&#10;FROM         dbo.CONSULTATION INNER JOIN&#13;&#10;                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT&#13;&#10;WHERE     (dbo.CONSULTATION.ID_CONSULTATION = @ID_CONSULTATION)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_TRAITEMENT_de_CONSULTATION_INSERT" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                DeleteCommand="DELETE_TRAITEMENT_CONSULTATION" DeleteCommandType="StoredProcedure"
                InsertCommand="INSERT_INTO_TRAITEMENT_CONSULTATION" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT TRAITEMENT_CONSULTATION.* FROM TRAITEMENT_CONSULTATION WHERE (ID_CONSULTATION = @ID_CONSULTATION)"
                UpdateCommand="UPDATE_TRAITEMENT_CONSULTATION" UpdateCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                    <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                    <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                    <asp:Parameter Name="PAYED" Type="Boolean" />
                    <asp:Parameter Name="RENDU" Type="Boolean" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_No_TRAITEMENT" Name="ID_SERVICES_RENDUS"
                        PropertyName="Text" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION"
                runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT_NOM_PRENOM_du_PATIENT" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 293px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 4px">
                    </td>
                    <td rowspan="7" style="vertical-align: top; width: 4px; text-align: left">
                        <asp:Label ID="Label_ErrorMessage" runat="server" Font-Bold="True" Font-Names="Arial"
                            Font-Size="X-Small" ForeColor="Red" Height="136px" Width="261px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Small"
                            ForeColor="Black" Text="No d'hospitalisation :" Width="118px"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            ForeColor="Black" OnTextChanged="TextBox1_TextChanged" Width="171px"></asp:TextBox></td>
                    <td style="width: 4px">
                        <asp:Button ID="Button3" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Black" OnClick="Button3_Click1" Text="Barcode Reader" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                    </td>
                    <td style="width: 4px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:LinkButton ID="LinkButton_ExamensAFaire" runat="server" Font-Bold="True" Font-Names="Cambria"
                            Font-Size="X-Small" ForeColor="Blue" OnClick="LinkButton_ExamensAFaire_Click"
                            Width="261px">Examens à faire</asp:LinkButton></td>
                    <td style="width: 4px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:LinkButton ID="LinkButton_ResultatsDesExamens" runat="server" Font-Bold="True"
                            Font-Names="Cambria" Font-Size="X-Small" ForeColor="Blue" OnClick="LinkButton_ResultatsDesExamens_Click"
                            Width="262px">Résultats des examens faits</asp:LinkButton></td>
                    <td style="width: 4px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:LinkButton ID="LinkButton_TraitementsProposes" runat="server" Font-Bold="True"
                            Font-Names="Cambria" Font-Size="X-Small" ForeColor="Blue" OnClick="LinkButton_TraitementsProposes_Click"
                            Width="263px">Traitements proposés</asp:LinkButton></td>
                    <td style="width: 4px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px">
                        <asp:LinkButton ID="LinkButtonPrescriptions" runat="server" Font-Bold="True" Font-Names="Cambria"
                            Font-Size="X-Small" ForeColor="Blue" OnClick="LinkButtonPrescriptions_Click"
                            Width="262px">Prescriptions</asp:LinkButton></td>
                    <td style="width: 4px">
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 929px; text-align: left;">
                <tr>
                    <td style="width: 106px; height: 21px; text-align: right">
                        <img src="../Images%20TMS%20MANZI/reports.jpg" /></td>
                    <td colspan="3" style="vertical-align: middle; height: 21px; text-align: left">
                        <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Style="font-size: medium; color: dodgerblue; font-family: Broadway"
                            Text="Consultation rapide" Width="280px"></asp:Label></td>
                    <td style="width: 126px; height: 21px">
                    </td>
                    <td style="width: 116px; height: 21px">
                    </td>
                    <td style="width: 39px; height: 21px">
                    </td>
                    <td style="width: 41px; height: 21px">
                    </td>
                    <td style="width: 42px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px; height: 21px">
                    </td>
                    <td colspan="3" style="height: 21px; text-align: left">
                        &nbsp;<img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label
                            ID="Label23" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Consultation et consorts" Width="298px"></asp:Label></td>
                    <td style="width: 126px; height: 21px">
                    </td>
                    <td style="width: 116px; height: 21px">
                    </td>
                    <td style="width: 39px; height: 21px">
                    </td>
                    <td style="width: 41px; height: 21px">
                    </td>
                    <td style="width: 42px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td colspan="4" rowspan="4" style="vertical-align: top; text-align: left">
                        <div style="width: 626px; height: 58px; background-color: aliceblue">
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton4" runat="server"
                                Font-Size="Medium" Width="185px" OnClick="LinkButton4_Click">Les plaintes</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton5" runat="server"
                                Font-Size="Medium" Width="185px" OnClick="LinkButton5_Click">Les résultats des examens</asp:LinkButton></div>
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" style="width: 106px">
                    </td>
                    <td rowspan="2" style="width: 2px">
                    </td>
                    <td rowspan="2" style="width: 39px">
                    </td>
                    <td rowspan="2" style="width: 41px">
                    </td>
                    <td rowspan="2" style="width: 42px">
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="width: 106px; height: 21px">
                    </td>
                    <td colspan="3" style="height: 21px; text-align: left">
                        <img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label
                            ID="Label24" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Les traitements proposés" Width="188px"></asp:Label></td>
                    <td style="width: 126px; height: 21px">
                    </td>
                    <td style="width: 116px; height: 21px">
                    </td>
                    <td style="width: 39px; height: 21px">
                    </td>
                    <td style="width: 41px; height: 21px">
                    </td>
                    <td style="width: 42px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td colspan="4" rowspan="5" style="vertical-align: top; text-align: left">
                        <div style="width: 626px; height: 100px; background-color: aliceblue">
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton1" runat="server"
                                Font-Size="Medium" Width="185px" OnClick="LinkButton1_Click">Les examens à faire</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton9" runat="server"
                                Font-Size="Medium" Width="185px" OnClick="LinkButton9_Click">Les prescriptions</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton10"
                                runat="server" Font-Size="Medium" Width="185px" OnClick="LinkButton10_Click">Les traitements à faire</asp:LinkButton></div>
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px; height: 22px">
                    </td>
                    <td style="width: 2px; height: 22px">
                    </td>
                    <td style="width: 39px; height: 22px">
                    </td>
                    <td style="width: 41px; height: 22px">
                    </td>
                    <td style="width: 42px; height: 22px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td colspan="3" style="vertical-align: top; text-align: left">
                        <img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label
                            ID="Label25" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Les traitements de l'hospitalisation" Width="270px"></asp:Label></td>
                    <td style="width: 126px">
                    </td>
                    <td style="width: 116px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td colspan="4" rowspan="6" style="vertical-align: top; text-align: left">
                        <div style="width: 630px; height: 100px; background-color: aliceblue">
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton6" runat="server"
                                Font-Size="Medium" Width="239px" OnClick="LinkButton6_Click">Proposer l'hospitalisation</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton7" runat="server"
                                Font-Size="Medium" Width="238px" OnClick="LinkButton7_Click">Les traitements de suivi  faits à l'hopital</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton8" runat="server"
                                Font-Size="Medium" Width="237px">Les examens faits à l'hopital</asp:LinkButton><br />
                        </div>
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 106px">
                    </td>
                    <td style="width: 2px">
                    </td>
                    <td style="width: 39px">
                    </td>
                    <td style="width: 41px">
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
            </table>
        </asp:View>
        &nbsp;&nbsp;
    </asp:MultiView>
            <asp:TextBox ID="TextBox_ID_PATIENT" runat="server" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox_ID_HOSPITALISATION" runat="server" Visible="False" Width="242px"></asp:TextBox>
    <asp:TextBox ID="TextBox_SERVICE_CONSULTATION" runat="server" Visible="False"></asp:TextBox>
    <asp:GridView ID="GridView_IdConsultationFromHospitalisation" runat="server" AutoGenerateColumns="False"
        DataKeyNames="ID_HOSPITALISATION" DataSourceID="SqlDataSource_SearchIdConsultationParHospitalisation"
        Font-Bold="False" Font-Size="XX-Small" Visible="False">
        <Columns>
            <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
            <asp:BoundField DataField="ID_HOSPITALISATION" HeaderText="ID_HOSPITALISATION" ReadOnly="True"
                SortExpression="ID_HOSPITALISATION" />
        </Columns>
    </asp:GridView>
    <asp:TextBox ID="TextBox_IDHosp" runat="server" Visible="False"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        DataKeyNames="ID_HOSPITALISATION" DataSourceID="SqlDataSource_IDHOSP_by_IDCons"
        Font-Bold="False" Font-Size="XX-Small" Visible="False">
        <Columns>
            <asp:BoundField DataField="ID_HOSPITALISATION" HeaderText="ID_HOSPITALISATION" ReadOnly="True"
                SortExpression="ID_HOSPITALISATION" />
        </Columns>
        <EmptyDataTemplate>
            ntayirimo<br />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_IDHOSP_by_IDCons" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        SelectCommand="SELECT_IDHosp_by_IDCons" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_SearchIdConsultationParHospitalisation" runat="server"
        ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        SelectCommand="SELECT [ID_CONSULTATION], [ID_HOSPITALISATION] FROM [HOSPITALISATION] WHERE (([ID_HOSPITALISATION] = @ID_HOSPITALISATION) AND ([DECHARGE] = @DECHARGE))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ID_HOSPITALISATION" PropertyName="Text"
                Type="String" />
            <asp:Parameter DefaultValue="false" Name="DECHARGE" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
