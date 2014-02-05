<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_LABORATOIRE.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true"
    CodeFile="EXAMENS_A_FAIRE.aspx.cs" Inherits="LABORANTIN_EXAMENS_A_FAIRE" Title="PAGE DE LABORATOIRE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="vertical-align: top; width: 349px; text-align: right">
        <tr>
            <td style="padding-left: 10px; vertical-align: middle; height: 27px; text-align: left">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
            Height="10px" Style="vertical-align: middle; text-align: left" Text="No de CONSULTATION :"
            Width="136px"></asp:Label></td>
            <td style="vertical-align: middle; height: 27px; text-align: left">
                <asp:TextBox ID="TextBox_IDCONSULTATION" runat="server" BackColor="LemonChiffon"
            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="DodgerBlue"
            Height="12px" Style="text-align: right" Width="254px" AutoCompleteType="Disabled"></asp:TextBox></td>
            <td style="height: 27px">
                <asp:Button
                ID="Button_BARCODEREADER" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                Font-Names="Verdana" ForeColor="White" Height="22px" Text="BARCODE READER" Width="164px" OnClick="Button_BARCODEREADER_Click" /></td>
            <td rowspan="4" style="width: 3px">
                <img src="../IMAGES_PROJET/HOSPITAL%2024.jpg" />&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left; vertical-align: top;">
                <asp:Label ID="Label_ErrorMsgBarcode" runat="server" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="X-Small" ForeColor="Red" Width="575px"></asp:Label></td>
        </tr>
        <tr>
            <td style="padding-left: 10px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="True" Text="Noms & Prénoms :" Width="124px"></asp:Label></td>
            <td colspan="2" style="vertical-align: middle; text-align: left">
        <asp:Label ID="Label_LesNOMS" runat="server" Font-Bold="True" Font-Names="Cambria"
            Font-Size="X-Small" Width="422px"></asp:Label></td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
            Font-Underline="True" Text="Age      :" Width="124px"></asp:Label></td>
            <td style="vertical-align: middle; text-align: left">
        <asp:Label ID="Label_AGE_du_PATIENT" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
            Width="50px"></asp:Label></td>
            <td>
            </td>
        </tr>
    </table>
    <hr color="background" />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="text-align: left">
                <tr>
                    <td style="width: 3px; padding-left: 10px;">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Text="Liste des Examens à Faire" Width="219px"></asp:Label></td>
                    <td>
                    </td>
                    <td style="padding-left: 10px; height: 23px">
                        <asp:TextBox ID="TextBox_CODE_EXAMEN" runat="server" Visible="False"></asp:TextBox></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td rowspan="5" style="width: 3px; padding-left: 10px;">
                        <asp:ListBox ID="ListBox_EXAMENS_a_FAIRE" runat="server" Height="128px" Width="223px" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" OnSelectedIndexChanged="ListBox_EXAMENS_a_FAIRE_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource_EXAMENS_a_FAIRE_au_LABO" DataTextField="EXAM_DESCRIPTION" DataValueField="CODE_EXAMEN"></asp:ListBox></td>
                    <td rowspan="5">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Small"
                            Height="126px" Text="Veuillez Sélectionner à gauche l'examen pour écrire les résultats" Width="121px"></asp:Label>
                        &nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 23px">
                        <asp:TextBox ID="TextBox_EXAMEN_NOM" runat="server" Height="13px" Width="170px" Font-Names="Verdana" Font-Size="X-Small" ReadOnly="True" OnTextChanged="TextBox_EXAMEN_NOM_TextChanged"></asp:TextBox>
                        </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Height="4px" Text="Examen " Width="131px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 23px; padding-left: 10px;">
                        <asp:TextBox ID="TextBox_UniteMesure" runat="server" Font-Names="Verdana" Font-Size="X-Small"
                            Width="170px"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Height="1px" Text="Unité de Mesure" Width="136px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 23px">
                        <asp:TextBox ID="TextBox_ValeurNormale" runat="server" Font-Names="Verdana" Font-Size="X-Small"
                            Width="170px"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Height="4px" Text="Valeur Normale" Width="136px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 23px">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_Type_D_Echantillon"
                            DataTextField="TYPE_D_ECHANTILLON" DataValueField="ID_TYPE_ECHANTILLON" Font-Names="Verdana"
                            Font-Size="X-Small" Width="176px">
                        </asp:DropDownList></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Height="14px" Text="Type d'échantillon" Width="140px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="2" style="width: 3px; padding-left: 10px;">
                        <img src="../IMAGES_PROJET/HOSPITAL34.jpg" style="width: 221px" /></td>
                    <td rowspan="2">
                        &nbsp;
                    </td>
                    <td style="height: 23px; padding-left: 10px;">
                        <asp:TextBox ID="TextBox_RESULTATS" runat="server" Height="13px" Width="206px" Font-Names="Verdana" Font-Size="X-Small"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Height="23px" Text="Résultats" Width="137px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 23px">
                        <asp:Button ID="Button_CONFIRMER_RESULTATS" runat="server" Text="CONFIRMER" Width="101px" OnClick="Button_CONFIRMER_RESULTATS_Click" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" /></td>
                    <td>
                        <asp:Button ID="Button_AFFICHER_RESULTATS" runat="server" Text="AFFICHER >>>" Width="138px" OnClick="Button2_Click" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="Black" /></td>
                </tr>
                <tr>
                    <td colspan="4" rowspan="1" style="padding-left: 10px">
                        <asp:Label ID="Label_ErrorMsg_ListeDesExamensFaire" runat="server" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Width="744px"></asp:Label></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_EXAMENS_a_FAIRE_au_LABO" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT_TOUS_EXAMS_PROPOSES" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView_DETAILS_EXAM" runat="server" AutoGenerateColumns="False"
                DataKeyNames="CODE_EXAMEN" DataSourceID="SqlDataSource_SELECT_DETAIL_EXAM" Font-Size="XX-Small"
                Visible="False">
                <Columns>
                    <asp:BoundField DataField="CODE_EXAMEN" HeaderText="CODE_EXAMEN" ReadOnly="True"
                        SortExpression="CODE_EXAMEN" />
                    <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                    <asp:BoundField DataField="UNITE_DE_MESURE" HeaderText="UNITE_DE_MESURE" SortExpression="UNITE_DE_MESURE" />
                    <asp:BoundField DataField="VALEUR_NORMALE" HeaderText="VALEUR_NORMALE" SortExpression="VALEUR_NORMALE" />
                    <asp:BoundField DataField="EXAM_DESCRIPTION" HeaderText="EXAM_DESCRIPTION" SortExpression="EXAM_DESCRIPTION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_SELECT_DETAIL_EXAM" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT_DETAILS_des_EXAMS_au_LABO" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_Type_D_Echantillon" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ID_TYPE_ECHANTILLON], [TYPE_D_ECHANTILLON] FROM [TYPE_D_ECHANTILLON]">
            </asp:SqlDataSource>
            &nbsp;
            <asp:SqlDataSource ID="SqlDataSource_INSERT_INTO_RESULTATS_EXAMENS_Table" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_RESULTATS_EXAMEN" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT RESULTATS_EXAMEN.* FROM RESULTATS_EXAMEN" UpdateCommand="UPDATE_RESULTATS_EXAMEN"
                UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="ListBox_EXAMENS_a_FAIRE" Name="CODE_EXAMEN" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="ID_TYPE_ECHANTILLON"
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_RESULTATS" Name="RESULTATS" PropertyName="Text"
                        Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_CODE_EXAMEN" Name="CODE_EXAMEN" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 338px; padding-left: 10px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Text="Liste des Résultats" Width="176px"></asp:Label>
                    </td>
                    <td>
                    </td>
                    <td style="padding-left: 10px">
                    </td>
                </tr>
                <tr>
                    <td rowspan="5" style="padding-left: 10px">
            <asp:ListBox ID="ListBox1" runat="server" Height="108px" Width="356px" Font-Bold="True" Font-Names="Cambria" Font-Size="Small" ForeColor="DodgerBlue" style="font-weight: bold; font-size: x-small; text-transform: capitalize; color: black; font-family: Verdana" DataSourceID="SqlDataSource_REKA_TUREBE_KO_BIKUNDA" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" DataTextField="Resultats" DataValueField="CODE_EXAMEN"></asp:ListBox><asp:SqlDataSource ID="SqlDataSource_REKA_TUREBE_KO_BIKUNDA" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT_RESULTAT_EXAMEN_FAIT_au_Labo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                    <td rowspan="5" style="padding-left: 10px">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Text="  " Width="18px"></asp:Label></td>
                    <td style="padding-left: 10px">
            <asp:LinkButton ID="LinkButton_RETOUR_a_la_PRECEDENTE" runat="server" BackColor="White"
                Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="DodgerBlue"
                OnClick="LinkButton_RETOUR_a_la_PRECEDENTE_Click" Width="290px"><<< Retour à la page précédente</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Font-Size="XX-Small" Width="411px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:TextBox ID="TextBox_EXAM" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" Font-Bold="True"
                            Font-Names="Verdana" ForeColor="Black" OnClick="LinkButton1_Click" Width="311px" Font-Size="Small">Voulez-vous modifier les résultats? >>></asp:LinkButton></td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="1" style="padding-left: 10px">
                        <asp:Label ID="Label_ErrorMsg_ResultatsDesExamens" runat="server" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Width="706px"></asp:Label></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_Liste_des_RESULTATS_des_EXAMENS"
                runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [EXAM_DESCRIPTION] FROM [EXAMENS_A_FAIRE] WHERE ([CODE_EXAMEN] = @CODE_EXAMEN)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CODE_EXAMEN" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView_EXAM_NOM" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Liste_des_RESULTATS_des_EXAMENS"
                Font-Size="XX-Small" Visible="False" Width="124px">
                <Columns>
                    <asp:BoundField DataField="EXAM_DESCRIPTION" HeaderText="EXAM_DESCRIPTION" SortExpression="EXAM_DESCRIPTION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_SET_EXAM_asNotYet_EXAMINE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT RESULTATS_EXAMEN.* FROM RESULTATS_EXAMEN WHERE (NoReference = 1)"
                UpdateCommand="UPDATE_RESULTAT_EXAMEN_SET_IT_NotYet_examinated" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="CODE_EXAMEN" PropertyName="Text"
                        Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView_NOMS_et_AGE_du_PATIENT" runat="server" AutoGenerateColumns="False"
                DataSourceID="SqlDataSource_NOMS_du_PATIENT_et_son_AGE" Font-Size="XX-Small" Visible="False">
                <Columns>
                    <asp:BoundField DataField="DATE_NAISSANCE" HeaderText="DATE_NAISSANCE" SortExpression="DATE_NAISSANCE" />
                    <asp:BoundField DataField="MOIS" HeaderText="MOIS" ReadOnly="True" SortExpression="MOIS" />
                    <asp:BoundField DataField="AGE" HeaderText="AGE" ReadOnly="True" SortExpression="AGE" />
                    <asp:BoundField DataField="NOM_PRENOM" HeaderText="NOM_PRENOM" ReadOnly="True" SortExpression="NOM_PRENOM" />
                    <asp:BoundField DataField="ID_PATIENT" HeaderText="ID_PATIENT" SortExpression="ID_PATIENT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_NOMS_du_PATIENT_et_son_AGE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT PATIENT.DATE_NAISSANCE, DATEDIFF(MONTH, PATIENT.DATE_NAISSANCE, GETDATE()) AS MOIS, DATEDIFF(MONTH, PATIENT.DATE_NAISSANCE, GETDATE()) / 12 AS AGE, PATIENT.NOM + '  ' + PATIENT.PRENOM AS NOM_PRENOM, RENDEZ_VOUS_CONSULTATION.ID_PATIENT FROM PATIENT INNER JOIN RENDEZ_VOUS_CONSULTATION ON PATIENT.ID_PATIENT = RENDEZ_VOUS_CONSULTATION.ID_PATIENT WHERE (RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION = @ID_CONSULTATION)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            </asp:View>
    </asp:MultiView>
</asp:Content>
