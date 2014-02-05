<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_INFIRMIERS.master"
    AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="FICHE_DE_SUIVIE.aspx.cs"
    Inherits="INFIRMIERES_NURSE_FICHE_DE_SUIVIE" Title="FICHE DE SUIVIE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 502px; text-align: left;">
        <tr>
            <td style="padding-left: 10px; text-align: right;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                    Height="10px" Style="vertical-align: middle; text-align: right" Text="No d'hospitalisation :"
                    Width="136px"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox_IDCONSULTATION" runat="server" BackColor="LemonChiffon"
                    Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="DodgerBlue"
                    Height="12px" Style="text-align: right" Width="254px" AutoCompleteType="Disabled"></asp:TextBox></td>
            <td>
                <asp:Button ID="Button_BARCODEREADER" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                    Font-Names="Verdana" ForeColor="White" Height="22px" Text="BARCODE READER" Width="164px"
                    OnClick="Button_BARCODEREADER_Click" /></td>
            <td rowspan="5" style="width: 3px; vertical-align: top; text-align: right;">
                <asp:Image runat="server" ImageUrl="~/IMAGES_PROJET/HOSPITAL37.jpg" Style="height: 87px" ID="Image2" /></td>
        </tr>
        <tr>
            <td colspan="3" style="padding-left: 10px">
                <asp:Label ID="Label_ErrorMsgHospitalisationSuivi" runat="server" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
        </tr>
        <tr>
            <td style="padding-left: 10px; text-align: right;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="False" Text="Noms & Prénoms :" Width="124px"></asp:Label></td>
            <td style="text-align: left">
                <asp:Label ID="Label_LesNOMS" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="X-Small" Width="291px" Style="text-transform: uppercase"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 10px; text-align: right;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="False" Text="No de Chambre :" Width="122px"></asp:Label></td>
            <td style="text-align: left">
                <asp:Label ID="Label_No_CHAMBRE" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="X-Small" Width="44px"></asp:Label></td>
            <td>
            </td>
        </tr>
    </table>
    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2"
        Font-Names="Verdana" Font-Size="X-Small" ForeColor="#284E98" Height="23px" OnMenuItemClick="Menu1_MenuItemClick"
        Orientation="Horizontal" StaticSubMenuIndent="10px" Style="font-weight: normal;
        font-size: xx-small; text-transform: capitalize; color: dodgerblue; font-family: Cambria;
        background-color: aliceblue" Width="724px">
        <StaticMenuItemStyle Font-Bold="True" ForeColor="DodgerBlue" HorizontalPadding="5px"
            VerticalPadding="2px" />
        <DynamicHoverStyle BackColor="DodgerBlue" ForeColor="White" />
        <DynamicMenuStyle BackColor="#B5C7DE" />
        <StaticSelectedStyle BackColor="DodgerBlue" ForeColor="White" />
        <DynamicSelectedStyle BackColor="DodgerBlue" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <Items>
            <asp:MenuItem Text="Fiche de suivi" ToolTip="Fiche de suivi" Value="0"></asp:MenuItem>
            <asp:MenuItem Text="Les plaintes" ToolTip="Les plaintes du patient" Value="1"></asp:MenuItem>
            <asp:MenuItem Text="R&#233;sultats" ToolTip="R&#233;sultats" Value="3"></asp:MenuItem>
            <asp:MenuItem Text="Traitement" ToolTip="Traitement" Value="6"></asp:MenuItem>
            <asp:MenuItem Text="Sortie" ToolTip="Sortie de l'hospitalisation" Value="7"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/INFIRMIERES/FICHE_DE_SUIVIE.aspx" Text="Retour" Value="5">
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="DodgerBlue" ForeColor="White" />
    </asp:Menu>
    <hr color="dodgerblue" />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 257px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="Les Signes Vitaux" Width="122px"></asp:Label></td>
                    <td style="width: 6px; padding-left: 10px;" rowspan="2">
                        &nbsp;</td>
                    <td rowspan="2" style="padding-left: 10px; border-left: black thin solid; text-indent: 10px">
                        <Asp:Image runat="server" ImageUrl="~/IMAGES_PROJET/HOSPITAL 17.jpg" style="width: 161px; height: 117px" ID="Image4" /></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; padding-left: 10px; height: 55px;">
                        <asp:RadioButtonList ID="RadioButtonList_SIGNES_VITAUX" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_SIGNES_VITAUX" DataTextField="SIGNES_VITAUX" DataValueField="ID_SIGNES_VITAUX"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Width="248px" RepeatColumns="2"
                            RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList_SIGNES_VITAUX_SelectedIndexChanged" style="vertical-align: top; text-align: left">
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td style="border-top-width: thin; border-left-width: thin; border-left-color: dodgerblue;
                        width: 6px; border-top-color: dodgerblue; border-right-width: thin; border-right-color: dodgerblue;">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="OBSERVATIONS :" Width="122px"></asp:Label></td>
                    <td rowspan="1" style="padding-left: 10px; border-left-width: thin; border-left-color: dodgerblue;
                        border-bottom-width: thin; border-bottom-color: dodgerblue; border-right-width: thin;
                        border-right-color: dodgerblue;">
                    </td>
                    <td style="padding-left: 10px; text-indent: 10px; border-left: black thin solid;">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Text="Sélectionner si c'est &quot;un traitement&quot; ou &quot;un examen&quot; à faire"
                            Width="246px" Font-Underline="True"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="border-top-width: thin; border-left-width: thin; border-left-color: dodgerblue;
                        border-top-color: dodgerblue; border-right-width: thin; border-right-color: dodgerblue">
                        <asp:Label ID="Label_ErrorMsgSignesVitauxSuivi" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="2" style="border-top-width: thin; border-left-width: thin; border-left-color: dodgerblue;
                        width: 6px; border-top-color: dodgerblue; border-right-width: thin; border-right-color: dodgerblue">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black"
                            Height="62px" TextMode="MultiLine" Width="251px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                    <td rowspan="2" style="padding-left: 10px; border-left-width: thin; border-left-color: dodgerblue;
                        border-bottom-width: thin; border-bottom-color: dodgerblue; border-right-width: thin;
                        border-right-color: dodgerblue;">
                        &nbsp;<asp:Button ID="Button_CONFIRMER_les_DONNEES" runat="server" BackColor="White"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Font-Underline="True"
                            Text="Confirmer les Données" OnClick="Button_CONFIRMER_les_DONNEES_Click" Width="172px" />
                    </td>
                    <td style="padding-left: 10px; text-indent: 10px; border-left: black thin solid;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; text-indent: 10px; border-left: black thin solid;
                        border-bottom: black thin solid;">
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_SIGNES_VITAUX" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT [ID_SIGNES_VITAUX], [SIGNES_VITAUX] FROM [SIGNES_VITAUX] ORDER BY [ID_SIGNES_VITAUX], [SIGNES_VITAUX] DESC">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_FICHE_de_SUIVI_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_FICHE_DE_SUIVIE" InsertCommandType="StoredProcedure"
                SelectCommand=" SELECT MAX(FICHE_DE_SUIVIE.ID_SUIVIE) AS SUIVI_MAXIMUM FROM FICHE_DE_SUIVIE INNER JOIN HOSPITALISATION ON FICHE_DE_SUIVIE.ID_HOSPITALISATION = HOSPITALISATION.ID_HOSPITALISATION WHERE (FICHE_DE_SUIVIE.ID_HOSPITALISATION = @ID_HOSPITALISATION) GROUP BY HOSPITALISATION.ID_HOSPITALISATION"
                UpdateCommand="UPDATE_FICHE_DE_SUIVIE" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="RadioButtonList_SIGNES_VITAUX_de_SORTIE" Name="ID_SIGNES_VITAUX"
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_OBSERVATIONS_FINALES" Name="OBSERVATIONS"
                        PropertyName="Text" Type="String" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" />
                </SelectParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="RadioButtonList_SIGNES_VITAUX" Name="ID_SIGNES_VITAUX"
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="OBSERVATIONS" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox_ID_PLAINTE_de_SUIVI" runat="server" Visible="False"></asp:TextBox>
            <asp:GridView ID="GridView_ID_SUIVI_MAX_SELECTED" runat="server" AutoGenerateColumns="False"
                DataSourceID="SqlDataSource_FICHE_de_SUIVI_INSERT" Font-Size="XX-Small" Visible="False">
                <Columns>
                    <asp:BoundField DataField="SUIVI_MAXIMUM" HeaderText="SUIVI_MAXIMUM" ReadOnly="True"
                        SortExpression="SUIVI_MAXIMUM" />
                </Columns>
            </asp:GridView>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 257px; text-align: left;">
                <tr>
                    <td style="height: 21px; padding-left: 10px;">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="Les Signes Vitaux" Width="122px"></asp:Label></td>
                    <td style="width: 6px; height: 21px;">
                    </td>
                    <td style="vertical-align: top; width: 3px; text-align: right;" rowspan="4">
                        <Asp:Image runat="server" ImageUrl="~/IMAGES_PROJET/HOSPITAL 10.jpg" Height="136px" ID="Image3" Width="140px" />
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="False" Text="Reconfirmer le Signe Vital :" Width="183px"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList_SIGNES_VITAUX_de_SORTIE" runat="server"
                            AutoPostBack="True" DataSourceID="SqlDataSource_SIGNES_VITAUX" DataTextField="SIGNES_VITAUX"
                            DataValueField="ID_SIGNES_VITAUX" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Width="220px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" style="vertical-align: top; text-align: left">
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 6px; padding-left: 20px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                    </td>
                    <td style="width: 6px">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="OBSERVATIONS :" Width="122px"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <table style="font-size: x-small; width: 197px; color: dodgerblue; font-family: Verdana;
                            background-color: white">
                            <tr>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;
                                    height: 14px;">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                                        Font-Underline="True" Text="Date de Sortie:" Width="96px"></asp:Label></td>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;
                                    height: 14px;">
                                    <asp:Label ID="Label_la_DATE_de_SORTIE" runat="server" Font-Bold="False" Font-Names="Cambria"
                                        Font-Size="X-Small" Font-Underline="True" Width="122px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                                        Font-Underline="True" Text="Durée :" Width="96px"></asp:Label></td>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;">
                                    <asp:Label ID="Label_NOMBRE_de_JOURS" runat="server" Font-Bold="False" Font-Names="Cambria"
                                        Font-Size="X-Small" Font-Underline="True" Width="122px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                                        Font-Underline="True" Text="Prix :" Width="96px"></asp:Label></td>
                                <td style="width: 4px; color: black; font-family: Cambria; background-color: white;">
                                    <asp:Label ID="Label_PRIX_du_SEJOUR" runat="server" Font-Bold="False" Font-Names="Cambria"
                                        Font-Size="X-Small" Font-Underline="True" Width="133px"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 6px">
                        <asp:TextBox ID="TextBox_OBSERVATIONS_FINALES" runat="server" BackColor="White" Font-Bold="False"
                            Font-Names="Cambria" Font-Size="Small" ForeColor="Black" Height="62px" TextMode="MultiLine"
                            Width="267px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label_ErrorMsgSortieDHospitalisation" runat="server" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="width: 6px">
                    </td>
                    <td rowspan="1" style="vertical-align: top; width: 3px; text-align: right">
                        <asp:Button ID="Button_CONFIRMER_la_SORTIE" runat="server" BackColor="White" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" Font-Underline="True" Text="Confirmer la Sortie"
                            OnClick="Button1_Click" Width="172px" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_HOSPITALISATION_SORTIE_UPDATE" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT HOSPITALISATION.* FROM HOSPITALISATION WHERE (DECHARGE = 0)"
                UpdateCommand="UPDATE_HOSPITALISATION" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="Label_No_CHAMBRE" Name="No_CHAMBRE" PropertyName="Text"
                        Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource_UPDATE_HOSPIT_By_IDHosp" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT ID_HOSPITALISATION, No_CHAMBRE, ID_CONSULTATION, DATE_D_ENTREE, HEURE_D_ENTREE, DATE_DE_SORTIE, HEURE_DE_SORTIE, DECHARGE FROM HOSPITALISATION WHERE (DECHARGE = 0) AND (ID_HOSPITALISATION = N'123')"
                UpdateCommand="UPDATE_HOSPITALISATION_By_IDHosp" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Label_No_CHAMBRE" Name="No_CHAMBRE" PropertyName="Text"
                        Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView_LES_DONNEES_NECESSAIRES_POUR_SORTIE" runat="server" Font-Size="XX-Small"
                Visible="False" DataSourceID="SqlDataSource_DONNEES_NECESSAIRE_POUR_SORTIE_HOSP">
                <Columns>
                    <asp:BoundField DataField="ID_HOSPITALISATION" HeaderText="ID_HOSPITALISATION" SortExpression="ID_HOSPITALISATION" />
                    <asp:BoundField DataField="DATE_D_ENTREE" HeaderText="DATE_D_ENTREE" SortExpression="DATE_D_ENTREE" />
                    <asp:BoundField DataField="DATE_DE_SORTIE" HeaderText="DATE_DE_SORTIE" SortExpression="DATE_DE_SORTIE" />
                    <asp:BoundField DataField="MAXIMA_A_PAYER" HeaderText="MAXIMA_A_PAYER" SortExpression="MAXIMA_A_PAYER" />
                    <asp:BoundField DataField="DUREE" HeaderText="DUREE" SortExpression="DUREE" />
                    <asp:BoundField DataField="HEURE" HeaderText="HEURE" SortExpression="HEURE" />
                    <asp:BoundField DataField="PRIX_TOTAL" HeaderText="PRIX_TOTAL" SortExpression="PRIX_TOTAL" />
                    <asp:BoundField DataField="No_CHAMBRE" HeaderText="No_CHAMBRE" SortExpression="No_CHAMBRE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_DONNEES_NECESSAIRE_POUR_SORTIE_HOSP" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT HOSPITALISATION.ID_HOSPITALISATION, HOSPITALISATION.DATE_D_ENTREE, HOSPITALISATION.DATE_DE_SORTIE, TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER, DATEDIFF(DAY, HOSPITALISATION.DATE_D_ENTREE, HOSPITALISATION.DATE_DE_SORTIE) + 1 AS DUREE, DATEDIFF(HOUR, HOSPITALISATION.DATE_D_ENTREE, HOSPITALISATION.DATE_DE_SORTIE) + 1 AS HEURE, TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * (DATEDIFF(DAY, HOSPITALISATION.DATE_D_ENTREE, HOSPITALISATION.DATE_DE_SORTIE) + 1) AS PRIX_TOTAL, CHAMBRES.No_CHAMBRE FROM CHAMBRES INNER JOIN CATEGORY_CHAMBRE ON CHAMBRES.ID_CATEG_CHAMBRE = CATEGORY_CHAMBRE.ID_CATEG_CHAMBRE INNER JOIN HOSPITALISATION ON CHAMBRES.No_CHAMBRE = HOSPITALISATION.No_CHAMBRE INNER JOIN SERVICES_RENDUS ON CATEGORY_CHAMBRE.ID_SERVICES_RENDUS = SERVICES_RENDUS.ID_SERVICES_RENDUS INNER JOIN TARIF_DEL_ASSUREUR ON SERVICES_RENDUS.ID_SERVICES_RENDUS = TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS INNER JOIN CONSULTATION ON HOSPITALISATION.ID_CONSULTATION = CONSULTATION.ID_CONSULTATION INNER JOIN PATIENT ON CONSULTATION.ID_PATIENT = PATIENT.ID_PATIENT INNER JOIN ASSUREUR ON TARIF_DEL_ASSUREUR.ID_ASSUREUR = ASSUREUR.ID_ASSUREUR AND PATIENT.ID_ASSUREUR = ASSUREUR.ID_ASSUREUR WHERE (HOSPITALISATION.ID_HOSPITALISATION = @ID_HOSPITALISATION)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;
            <asp:TextBox ID="TextBox_ID_PLAINTE_UPDATED" runat="server" Visible="false"></asp:TextBox></asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 204px; text-align: left;">
                <tr>
                    <td colspan="3" style="padding-left: 10px; height: 18px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px; height: 21px;">
                    </td>
                    <td style="padding-left: 10px; width: 6px; height: 21px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; height: 26px;">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Text="Sélectionner le traitement à ajouter" Width="270px"></asp:Label></td>
                    <td style="padding-left: 10px; height: 26px;">
                        <asp:RadioButtonList ID="RadioButtonList_CATEG_SERVICE_RENDU" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_Liste_Des_CATEG_SERVICES_RENDUS" DataTextField="DESCRIPTION_SERVICE"
                            DataValueField="ID_CATEG_SER_RENDUS" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="False" ForeColor="DodgerBlue" Height="16px" RepeatDirection="Horizontal"
                            Style="vertical-align: middle; text-align: left" Width="179px" OnSelectedIndexChanged="RadioButtonList_CATEG_SERVICE_RENDU_SelectedIndexChanged"
                            Enabled="False" Visible="False">
                        </asp:RadioButtonList></td>
                    <td style="padding-left: 10px; width: 6px; vertical-align: top; height: 26px;">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Text="Sélectionner tous les traitements à confirmer" Width="277px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:ListBox ID="ListBox_LISTE_des_TRAITEMENTS" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_Les_TRAITEMENTS_de_SUIVI" DataTextField="DESCRIPTION_SERV_RENDUS"
                            DataValueField="ID_SERVICES_RENDUS" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="False" Height="214px" Width="270px" OnSelectedIndexChanged="ListBox_LISTE_des_TRAITEMENTS_SelectedIndexChanged">
                        </asp:ListBox></td>
                    <td style="padding-left: 10px">
                        <asp:Button ID="Button_ADD_TRAITEMENT" runat="server" BackColor="DeepSkyBlue"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="White" OnClick="Button5_Click" Text="ADD  >>>" Width="107px" /><br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button_REMOVE_TRAITEMENT" runat="server" BackColor="DeepSkyBlue"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="White" OnClick="Button_REMOVE_TRAITEMENT_Click" Text="<<< REMOVE"
                            Width="107px" /></td>
                    <td style="width: 6px; padding-left: 10px; vertical-align: top;">
                        <asp:ListBox ID="ListBox_TRAITEMENT_a_FAIRE" runat="server" BackColor="Transparent"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Font-Underline="False"
                            Height="218px" Width="283px" Style="background-color: white" OnSelectedIndexChanged="ListBox_TRAITEMENT_a_FAIRE_SelectedIndexChanged"
                            AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding-left: 10px">
                        <asp:Label ID="Label_ErrorMsgTraitementsDeSuivi" runat="server" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <Asp:Image runat="server" ImageUrl="~/IMAGES_PROJET/HOSPITAL34.jpg" style="height: 39px" ID="Image1" /></td>
                    <td style="width: 6px; padding-left: 10px;">
                        &nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" Text="Confirmer les Traitements à Faire" Width="277px" Visible="False"></asp:Label>
                        <asp:Button ID="Button_CONFIRMER_les_TRAITEMENTS" runat="server" BackColor="White"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="False"
                            ForeColor="DodgerBlue" OnClick="Button_CONFIRMER_les_TRAITEMENTS_Click" Text="CONFIRMER"
                            Width="107px" /></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px">
                        <asp:Button ID="Button5" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" Font-Underline="True" ForeColor="DodgerBlue" Height="28px"
                            Style="vertical-align: middle; text-align: center" Text="Voir les Résultats des Examens"
                            Width="244px" OnClick="Button5_Click1" Visible="False" /></td>
                    <td>
                    </td>
                    <td style="width: 6px; padding-left: 10px;">
                        <asp:TextBox ID="TextBox_No_TRAITEMENT" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_Les_TRAITEMENTS_de_SUIVI" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT ID_SERVICES_RENDUS, DESCRIPTION_SERV_RENDUS FROM SERVICES_RENDUS WHERE (ID_CATEG_SER_RENDUS = 101) OR (ID_CATEG_SER_RENDUS = 100)">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_Liste_Des_CATEG_SERVICES_RENDUS" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                SelectCommand="SELECT ID_CATEG_SER_RENDUS, DESCRIPTION_SERVICE FROM CATEG_SERVICES_RENDUS WHERE (ID_CATEG_SER_RENDUS = 100) OR (ID_CATEG_SER_RENDUS = 102)">
            </asp:SqlDataSource>
            &nbsp; &nbsp;&nbsp; &nbsp;
            <asp:SqlDataSource ID="SqlDataSource_INSERT_into_TRAITEMENT_SUIVI" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_TRAITEMENT_SUIVIE" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT TRAITEMENT_SUIVIE.* FROM TRAITEMENT_SUIVIE" UpdateCommand="UPDATE_TRAITEMENT_SUIVIE"
                UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:Parameter Name="ID_SUIVIE" Type="Int32" />
                    <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                    <asp:Parameter Name="PAYED" Type="Boolean" />
                    <asp:Parameter Name="RENDU" Type="Boolean" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="ListBox_LISTE_des_TRAITEMENTS" Name="ID_SERVICES_RENDUS"
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox_ID_SUIVI" Name="ID_SUIVIE" PropertyName="Text"
                        Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            &nbsp;
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 339px; text-align: left;">
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 182px;
                        background-color: white">
                        <span style="font-size: 9pt; font-family: Sylfaen; background-color: #f0f8ff">La plainte
                            sélectionnée est ajoutée ici:&gt;&gt;</span><br />
                        <asp:ListBox ID="ListBox_CONFIRMED_PLAINTES_INSERTED" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_PLAINTES" DataTextField="DESCRIPTION_PLAINTE" DataValueField="CODE_PLAINTE"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="Black"
                            Height="165px" Width="319px" OnSelectedIndexChanged="ListBox_CONFIRMED_PLAINTES_INSERTED_SelectedIndexChanged">
                        </asp:ListBox></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 211px; height: 182px;
                        background-color: white">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Small"
                            Font-Underline="True" Text="                                          " Width="103px"></asp:Label><asp:CheckBoxList
                                ID="CheckBoxList_LES_PLAINTES" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_LISTE_des_PLAINTES"
                                DataTextField="DESCRIPTION_PLAINTE" DataValueField="CODE_PLAINTE" Enabled="False"
                                Style="font-weight: bold; font-size: xx-small; font-family: Sylfaen" Visible="False"
                                Width="107px">
                            </asp:CheckBoxList>
                        <asp:Button ID="Button6" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana"
                            Text="Ajouter >>" Visible="False" Width="105px" OnClick="Button6_Click" /></td>
                    <td style="padding-left: 10px; width: 211px; height: 182px; background-color: white">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" ForeColor="Black" Text="La Liste des Plaintes:" Width="260px"></asp:Label><br />
                        <asp:ListBox ID="ListBox_LISTE_PLAINTES_DU_PATIENT" runat="server" AutoPostBack="True"
                            BackColor="Ivory" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            Font-Underline="True" Height="168px" SelectionMode="Multiple" Width="261px" OnSelectedIndexChanged="ListBox_LISTE_PLAINTES_DU_PATIENT_SelectedIndexChanged">
                        </asp:ListBox></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 211px; background-color: white">
                        <asp:TextBox ID="TextBox_ID_PLAINTE" runat="server"></asp:TextBox><asp:Label ID="Label17"
                            runat="server" Font-Names="Cambria" Font-Size="Small" Font-Underline="True" Height="16px"
                            Text="Sélectionnes la catégorie des Plaintes:" Visible="False" Width="223px"></asp:Label>
                        <asp:DropDownList ID="DropDownList_CATEG_PLAINTES" runat="server" AutoPostBack="True"
                            BackColor="Ivory" DataSourceID="SqlDataSource_CATEG_PLAINTES" DataTextField="CATEGORY_DESCRIPTION"
                            DataValueField="ID_CATEG_PLAINTES" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                            ForeColor="DodgerBlue" Visible="False" Width="178px">
                        </asp:DropDownList><br />
                        <span style="font-size: 9pt; font-family: Cambria; background-color: aliceblue">
                            <br />
                        </span>
                    </td>
                    <td style="padding-left: 10px; width: 211px; background-color: white">
                        <asp:TextBox ID="TextBox_ID_SUIVI" runat="server"></asp:TextBox></td>
                    <td style="padding-left: 10px; width: 211px; background-color: white">
                        <asp:Panel ID="Panel2" runat="server" Height="50px" Width="260px">
                            <span style="font-size: 8pt; font-family: Verdana">Sélectionner les plaintes enregistrées
                                ci-dessus pour les confirmer.<br />
                                Cliquer sur le bouton "<span style="text-decoration: underline"><strong>Confirmer Plainte</strong></span>"
                                jusqu'à ce&nbsp; que la liste soit vide</span></asp:Panel>
                        <br />
                        <asp:Button ID="Button_CONFIRM_PLAINTE" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                            Font-Names="Cambria" Font-Size="Small" ForeColor="White" Text="Confirmer Plainte"
                            Width="261px" OnClick="Button_CONFIRM_PLAINTE_Click" /></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; height: 34px; background-color: white" colspan="3">
                        <asp:Label ID="Label_ErrorMsgPlaintesDeSuivi" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="X-Small" ForeColor="Red" Width="693px"></asp:Label></td>
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
            <asp:SqlDataSource ID="SqlDataSource_PLAINTES_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_Les_Plainte_De_Suivi" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT Code_Plainte, Id_Suivi FROM Les_Plaintes_de_Suivi">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_PLAINTE" Name="Code_Plainte" PropertyName="Text"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_ID_SUIVI" Name="Id_Suivi" PropertyName="Text"
                        Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_CONSULTATION_PARTIE_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_CONSULTATION_TABLE" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT CONSULTATION.* FROM CONSULTATION" UpdateCommand="UPDATE_CONSULTATION_TABLE"
                UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_OBSERVATIONS" Name="OBSERVATIONS" PropertyName="Text"
                        Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_ID_SERVICE" Name="ID_SERVICE" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_ID_PATIENT" Name="ID_PATIENT" PropertyName="Text"
                        Type="String" />
                    <asp:ControlParameter ControlID="TextBox_POIDS" Name="POIDS" PropertyName="Text"
                        Type="Double" />
                    <asp:ControlParameter ControlID="TextBox_OBSERVATIONS" Name="OBSERVATIONS" PropertyName="Text"
                        Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_LES_PLAINTES_de_SUIVI_INSERT" runat="server"
                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                InsertCommand="INSERT_INTO_Les_Plainte_De_Suivi" InsertCommandType="StoredProcedure"
                SelectCommand="SELECT Code_Plainte, Id_Suivi FROM Les_Plaintes_de_Suivi">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_ID_PLAINTE" Name="Code_Plainte" PropertyName="Text"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox_ID_SUIVI" Name="Id_Suivi" PropertyName="Text"
                        Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View5" runat="server">
        </asp:View>
    </asp:MultiView><asp:TextBox ID="TextBox_ID_HOSPITALISATION" runat="server" Visible="False"></asp:TextBox><asp:GridView ID="GridView_LES_DONNEES_NECESSAIRES_POUR_HOSPITALISER" runat="server"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource_HOSPITALISATION_DONNEES_NECESSAIRES"
        Font-Size="XX-Small" Visible="False">
        <Columns>
            <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
            <asp:BoundField DataField="ID_SERVICE" HeaderText="ID_SERVICE" SortExpression="ID_SERVICE" />
            <asp:BoundField DataField="NOMS_PRENOMS" HeaderText="NOMS_PRENOMS" SortExpression="NOMS_PRENOMS" />
            <asp:BoundField DataField="No_CHAMBRE" HeaderText="No_CHAMBRE" SortExpression="No_CHAMBRE" />
            <asp:BoundField DataField="ID_HOSPITALISATION" HeaderText="ID_HOSPITALISATION" SortExpression="ID_HOSPITALISATION" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_HOSPITALISATION_DONNEES_NECESSAIRES" runat="server"
        ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        SelectCommand="SELECT CONSULTATION.ID_CONSULTATION, CONSULTATION.ID_SERVICE, PATIENT.NOM + ' ' + PATIENT.PRENOM AS NOMS_PRENOMS, HOSPITALISATION.No_CHAMBRE, HOSPITALISATION.ID_HOSPITALISATION, HOSPITALISATION.DECHARGE FROM HOSPITALISATION INNER JOIN CONSULTATION ON HOSPITALISATION.ID_CONSULTATION = CONSULTATION.ID_CONSULTATION INNER JOIN PATIENT ON CONSULTATION.ID_PATIENT = PATIENT.ID_PATIENT WHERE (HOSPITALISATION.ID_HOSPITALISATION = @ID_HOSPITALISATION)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="TextBox_ID_CONSULTATION_FROM_IDhospitalisation" runat="server" Visible="False"></asp:TextBox>
</asp:Content>
