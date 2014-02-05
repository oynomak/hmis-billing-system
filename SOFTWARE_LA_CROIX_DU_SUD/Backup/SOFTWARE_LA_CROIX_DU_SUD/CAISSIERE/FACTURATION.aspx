<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_FINANCE.master"
    AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="FACTURATION.aspx.cs"
    Inherits="CAISSIERE_FACTURATION" Title="LA FACTURATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 370px; text-align: left;">
        <tr>
            <td style="padding-left: 10px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small"
                    Height="10px" Style="vertical-align: middle; text-align: right" Text="Le numéro :"
                    Width="136px" ForeColor="Black"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox_IDCONSULTATION" runat="server" BackColor="Ivory" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="XX-Small" ForeColor="DodgerBlue" Height="12px"
                    Style="text-align: right" Width="283px" AutoCompleteType="Disabled"></asp:TextBox></td>
            <td style="width: 172px">
                <asp:Button ID="Button_BARCODEREADER" runat="server" BackColor="DeepSkyBlue" Font-Bold="True"
                    Font-Names="Verdana" ForeColor="White" Height="22px" Text="BAR CODE READER" Width="164px" OnClick="Button_BARCODEREADER_Click" /></td>
            <td>
                &nbsp;</td>
            <td rowspan="3" style="width: 90px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="padding-left: 10px">
                <span style="font-size: 10pt">
                    <asp:Label ID="Label_ErrorMsgBarcode" runat="server" Font-Bold="True" Font-Names="Verdana"
                        Font-Size="X-Small" ForeColor="Red" Width="608px" style="vertical-align: top; text-align: left"></asp:Label></span></td>
        </tr>
        <tr>
            <td style="padding-left: 10px; vertical-align: middle; text-align: right;">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="X-Small"
                    Font-Underline="True" Text="Noms & Prénoms :" Width="124px" ForeColor="Black"
                    Style="vertical-align: middle; text-align: right"></asp:Label></td>
            <td colspan="2" style="text-align: left">
                <asp:Label ID="Label_LesNOMS" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="X-Small" Width="471px" ForeColor="Black" Style="vertical-align: middle;
                    text-align: left"></asp:Label></td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td style="padding-left: 10px">
            </td>
            <td colspan="2">
            </td>
            <td colspan="1" style="vertical-align: middle; text-align: right">
                <asp:ImageButton ID="ImageButton_Retour" runat="server" ImageUrl="~/Images TMS MANZI/homepage.jpg"
                    OnClick="ImageButton_Retour_Click" />
            </td>
            <td rowspan="1" style="vertical-align: middle; width: 90px; text-align: left">
                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click1" Style="font-weight: bold;
                    font-size: medium; color: #ff3300; font-family: Cambria" Width="54px">Retour</asp:LinkButton></td>
        </tr>
    </table>
    <asp:RadioButtonList ID="RadioButtonList_FACTURATION" runat="server" AutoPostBack="True"
        RepeatDirection="Horizontal" Style="font-weight: bold; font-size: x-small; vertical-align: middle;
        text-transform: capitalize; color: black; font-family: Verdana; text-align: left"
        Width="850px" OnSelectedIndexChanged="RadioButtonList_FACTURATION_SelectedIndexChanged" Height="7px" Visible="False">
        <asp:ListItem Value="0">Tarif</asp:ListItem>
        <asp:ListItem Value="1">Consultation</asp:ListItem>
        <asp:ListItem Value="2">Examens &#224; faire</asp:ListItem>
        <asp:ListItem Value="3">Hospitalisation</asp:ListItem>
        <asp:ListItem Value="4">Compensation</asp:ListItem>
        <asp:ListItem Value="5">Traitements</asp:ListItem>
    </asp:RadioButtonList>
    <hr style="font-weight: bold; color: #1e90ff" />
    <asp:MultiView ID="MultiView_FACTURATION" runat="server">
        <asp:View ID="Consultation" runat="server">
            <table style="padding-left: 10px; width: 452px">
                <tr>
                    <td colspan="1" rowspan="1" style="padding-left: 10px; width: 136px">
                        <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                    <td colspan="1" rowspan="1" style="width: 92px; vertical-align: middle; text-align: left;">
                        <asp:Label ID="Label25" runat="server" Text="Consultation" Width="86px"></asp:Label></td>
                    <td colspan="6" rowspan="1" style="padding-left: 10px; text-align: left;">
                        </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="6" style="padding-left: 10px; width: 136px">
                    </td>
                    <td colspan="7" rowspan="6" style="padding-left: 10px; width: 136px; vertical-align: middle; text-align: left;">
                        <asp:GridView ID="GridView_CONSULTATION" runat="server" Font-Size="X-Small" Width="682px"
                            GridLines="Vertical" PageSize="1" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Consultation_FACTURATION_PRIMAIRE"
                            OnRowCommand="GridView_CONSULTATION_RowCommand" OnSelectedIndexChanged="GridView_CONSULTATION_SelectedIndexChanged1" style="vertical-align: middle; text-align: left">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No de consultation" SortExpression="No">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Noms" HeaderText="Noms" SortExpression="Noms">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Il n'y a pas de rendez-vous à payer!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_Consultation_FACTURATION_PRIMAIRE" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="Facturation_Du_Rendez_Vous_Cons_Par_ID_Patient" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_Patient" PropertyName="Text"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_de_la_Consultation" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT SERVICES_RENDUS.DESCRIPTION_SERV_RENDUS, ASSUREUR.NOM_ASSUREUR, ASSUREUR.POURCENTAGE * 100 AS [%], TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS Total, TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER - ASSUREUR.POURCENTAGE * TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS [Payé par l''assureur'], ASSUREUR.POURCENTAGE * TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS Tarif FROM SERVICES_RENDUS INNER JOIN TARIF_DEL_ASSUREUR ON SERVICES_RENDUS.ID_SERVICES_RENDUS = TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS INNER JOIN ASSUREUR ON TARIF_DEL_ASSUREUR.ID_ASSUREUR = ASSUREUR.ID_ASSUREUR INNER JOIN CATEG_SERVICES_RENDUS ON SERVICES_RENDUS.ID_CATEG_SER_RENDUS = CATEG_SERVICES_RENDUS.ID_CATEG_SER_RENDUS INNER JOIN PATIENT ON ASSUREUR.ID_ASSUREUR = PATIENT.ID_ASSUREUR INNER JOIN CONSULTATION ON PATIENT.ID_PATIENT = CONSULTATION.ID_PATIENT WHERE (CATEG_SERVICES_RENDUS.ID_CATEG_SER_RENDUS = 104) AND (CONSULTATION.ID_CONSULTATION = @ID_CONSULTATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_INSERT_FACTURE_PREMIERE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_INTO_FACTURE_PREMIEREMENT" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT FACTURES.*, NO_FACTURE AS Expr1 FROM FACTURES WHERE (NO_FACTURE = 10)">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="HF_ID_Consultation" Name="ID_CONSULTATION" PropertyName="Value"
                                    Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_INSERT_FACTURE_DETAILS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT FACTURES.*, NO_FACTURE AS Expr1 FROM FACTURES WHERE (NO_FACTURE = 11)">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="HF_ID_Consultation" Name="ID_CONSULTATION" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_ActeAFacturer" Name="ACTE_A_FACTURER" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_Assureur" Name="ASSUREUR" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_Pourcentage" Name="POURCENTAGE" PropertyName="Value"
                                    Type="Double" />
                                <asp:ControlParameter ControlID="HF_MaximaPaye" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PayeParAssureur" Name="PAYE_PAR_ASSUREUR" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixPatient" Name="PAYE_PAR_PATIENT" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="CheckBox_PayeFactureCons" Name="PAYE" PropertyName="Checked"
                                    Type="Boolean" />
                                <asp:ControlParameter ControlID="HF_TypeFacture" Name="ID_Type_Facture" PropertyName="Value"
                                    Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView_CHAMPS_DE_FACTURE_DETAILS" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_CHAMPS_de_FACTURE_DETAILS" Font-Size="XX-Small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="Assureur" HeaderText="Assureur" SortExpression="Assureur" />
                                <asp:BoundField DataField="Services" HeaderText="Services" SortExpression="Services" />
                                <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                <asp:BoundField DataField="Prix du patient" HeaderText="Prix du patient" ReadOnly="True"
                                    SortExpression="Prix du patient" />
                                <asp:BoundField DataField="Prix assureur" HeaderText="Prix assureur" ReadOnly="True"
                                    SortExpression="Prix assureur" />
                            </Columns>
                            <EmptyDataTemplate>
                                NTA KINTU KIRIMO
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_CHAMPS_de_FACTURE_DETAILS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="Select_Facturation_De_consultation_Champs" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="HF_ID_Consultation" Name="ID_CONSULTATION" PropertyName="Value"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_Set_Consultation_PAYE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" SelectCommand="SELECT CONSULTATION.* FROM CONSULTATION WHERE (ID_CONSULTATION = N'1')" UpdateCommand="UPDATE RENDEZ_VOUS_CONSULTATION&#13;&#10;SET PAYE=1&#13;&#10;WHERE ID_CONSULTATION=@ID_CONSULTATION">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="HF_ID_Consultation" Name="ID_CONSULTATION" PropertyName="Value" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:HiddenField ID="HF_NoCons" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px; height: 104px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; width: 136px; text-align: right; height: 26px;">
                    </td>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; text-align: right; width: 92px; height: 26px;">
                        <asp:Label ID="Label14" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Width="77px">Total payé :</asp:Label></td>
                    <td colspan="2" style="vertical-align: top; text-align: left; height: 26px;">
                        <asp:Label
                                ID="Label_PrixTotalPaye_CONSULTATION" runat="server" BackColor="Ivory" Font-Bold="True"
                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Width="77px"></asp:Label></td>
                    <td style="width: 2354px; height: 26px;">
                    </td>
                    <td style="width: 3126px; height: 26px;">
                    </td>
                    <td style="width: 5px; text-align: right; vertical-align: top; height: 26px;">
                        <asp:Label ID="Label15" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                    <td style="width: 1px; text-align: left; vertical-align: top; height: 26px;">
                        <asp:Label ID="Label_PrixTotal_CONSULTATION" runat="server" BackColor="Ivory" Font-Bold="True"
                            Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue" Width="40px"></asp:Label></td>
                    <td style="padding-left: 10px; width: 3px; vertical-align: top; text-align: left; height: 26px;">
                        </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; width: 136px; height: 26px;
                        text-align: right">
                    </td>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; width: 92px; height: 26px;
                        text-align: right">
                    </td>
                    <td colspan="2" style="vertical-align: top; height: 26px; text-align: left">
                    </td>
                    <td style="width: 2354px; height: 26px; text-align: left;">
                        <asp:Button ID="Button_SAVE_Consultation" runat="server" BackColor="White" Font-Bold="True"
                            Font-Size="Small" ForeColor="DodgerBlue" Text="Confirmer" OnClick="Button_SAVE_Consultation_Click" /></td>
                    <td style="width: 3126px; height: 26px">
                    </td>
                    <td style="vertical-align: top; width: 5px; height: 26px; text-align: right">
                        <asp:Button ID="Button_VOIR_FACTURE_Consultation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="125px" OnClick="Button_VOIR_FACTURE_Consultation_Click" /></td>
                    <td style="vertical-align: top; width: 1px; height: 26px; text-align: left">
                        </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; height: 26px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; width: 136px; text-align: right">
                    </td>
                    <td colspan="7" style="vertical-align: top; text-align: left">
                        <asp:Label ID="Label24" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Style="font-size: small; color: #ff3300"
                            Width="851px"></asp:Label></td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; width: 136px; height: 1px">
                    </td>
                    <td colspan="3" style="padding-left: 10px; height: 1px; text-align: left;">
                    </td>
                    <td style="height: 1px; width: 2354px; vertical-align: top; text-align: left;">
                        &nbsp;</td>
                    <td style="height: 1px; vertical-align: top; text-align: left;" colspan="3">
                        &nbsp;</td>
                    <td style="padding-left: 10px; width: 3px; height: 1px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; text-align: right; width: 92px;">
                    </td>
                    <td style="padding-left: 10px; text-align: right">
                    </td>
                    <td style="text-align: right; width: 43px;">
                    </td>
                    <td style="width: 2354px">
                    </td>
                    <td style="width: 3126px">
                    </td>
                    <td style="width: 5px">
                        <asp:Button ID="Button3" runat="server" BackColor="White" Font-Bold="True"
                            Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la carte de consultation" style="vertical-align: middle; text-align: left" Width="190px" OnClick="Button3_Click" /></td>
                    <td style="vertical-align: bottom; width: 1px; text-align: left">
                        </td>
                    <td style="padding-left: 10px; width: 3px; vertical-align: top; text-align: left;"></td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td colspan="7" rowspan="4" style="vertical-align: top; text-align: left">
                        <asp:HiddenField ID="HF_ID_Consultation" runat="server" />
                        <asp:HiddenField ID="HF_ActeAFacturer" runat="server" />
                        <asp:HiddenField ID="HF_PayeParAssureur" runat="server" />
                        <asp:HiddenField ID="HF_Assureur" runat="server" />
                        <asp:GridView ID="GridView_IDCONSULTATION" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_SELECT_IDCONS_par_IDPATIENT" Font-Size="XX-Small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                            </Columns>
                        </asp:GridView>
                        <asp:HiddenField ID="HF_MaximaPaye" runat="server" />
                        <asp:HiddenField ID="HF_Pourcentage" runat="server" />
                        <asp:CheckBox ID="CheckBox_PayeFactureCons" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" />
                        <asp:SqlDataSource ID="SqlDataSource_SELECT_IDCONS_par_IDPATIENT" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_ID_CONS_par_MAX_No_RENDEZ_VOUS" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_Patient" PropertyName="Text"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:HiddenField ID="HF_TypeFacture" runat="server" /><asp:HiddenField ID="HF_PrixPatient" runat="server" />
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 136px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; width: 92px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; text-align: right">
                    </td>
                    <td style="width: 43px; text-align: right">
                    </td>
                    <td style="width: 2354px">
                    </td>
                    <td style="width: 3126px">
                    </td>
                    <td style="width: 5px">
                    </td>
                    <td style="vertical-align: bottom; width: 1px; text-align: left">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
            </table>
            &nbsp;
        </asp:View>
        <asp:View ID="Hospitalisation" runat="server">
            <table style="width: 432px; text-align: left;">
                <tr>
                    <td colspan="1" rowspan="1" style="padding-left: 10px; width: 47px; text-align: right;">
                        <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                    <td colspan="1" rowspan="1" style="vertical-align: middle; text-align: left;">
                        <asp:Label ID="Label7" runat="server" Text="Hospitalisation" Width="102px"></asp:Label></td>
                    <td colspan="6" rowspan="1" style="padding-left: 10px; text-align: left;">
                        </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="6" style="padding-left: 10px; vertical-align: top; width: 47px; text-align: left;">
                        &nbsp;</td>
                    <td colspan="7" rowspan="6" style="padding-left: 10px; vertical-align: top; text-align: left;">
                        <asp:GridView ID="GridView_HOSPITALISATION" runat="server" Font-Size="X-Small" Width="677px"
                            AutoGenerateColumns="False" DataKeyNames="Chambre" DataSourceID="SqlDataSource_FACTURATION_du_SEJOUR_del_HOSPITALISATION"
                            OnSelectedIndexChanged="GridView_HOSPITALISATION_SelectedIndexChanged">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="Chambre" HeaderText="Chambre" ReadOnly="True" SortExpression="Chambre" />
                                <asp:BoundField DataField="Assureur" HeaderText="Assureur" SortExpression="Assureur" />
                                <asp:BoundField DataField="Entr&#233;e" HeaderText="Entr&#233;e" SortExpression="Entr&#233;e" />
                                <asp:BoundField DataField="Sortie" HeaderText="Sortie" SortExpression="Sortie" />
                                <asp:BoundField DataField="Dur&#233;e de s&#233;jour" HeaderText="Jours" ReadOnly="True"
                                    SortExpression="Dur&#233;e de s&#233;jour" />
                                <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" />
                                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                                <asp:BoundField DataField="Prix de l''assureur''" HeaderText="Prix de l'assureur"
                                    ReadOnly="True" SortExpression="Prix de l''assureur''" />
                                <asp:BoundField DataField="Tarif" HeaderText="Tarif" ReadOnly="True" SortExpression="Tarif" />
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table style="text-align: right">
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Le patient n'a pas été hospitalisé!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    <asp:GridView ID="GridView_ID_Cons_IDHOSP" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_SELECT_ID_CONS_par_IDHOS" Font-Size="XX-Small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_du_SEJOUR_del_HOSPITALISATION" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_FACTURATION_du_SEJOUR_del_HOSPITALISATION" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_INSERT_FACT_DETAILS_SEJOUR" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure" SelectCommand="SELECT FACTURE_DETAILS.* FROM FACTURE_DETAILS WHERE (NoREFERENCE = 11)">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="HF_ID_ConsHosp" Name="ID_CONSULTATION" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_NomActeFact" Name="ACTE_A_FACTURER" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_AssureurHosp" Name="ASSUREUR" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_PourcentHosp" Name="POURCENTAGE" PropertyName="Value"
                                    Type="Double" />
                                <asp:ControlParameter ControlID="HF_PrixTotalHosp" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixAssurHosp" Name="PAYE_PAR_ASSUREUR" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixPatientHosp" Name="PAYE_PAR_PATIENT" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="CheckBox_SetPayeOK" Name="PAYE" PropertyName="Checked"
                                    Type="Boolean" />
                                <asp:ControlParameter ControlID="HF_TypeFactHosp" Name="ID_Type_Facture" PropertyName="Value"
                                    Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 3px; text-align: left;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px; height: 10px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px; height: 32px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; text-align: left;">
                        &nbsp;</td>
                    <td style="padding-left: 10px; width: 3px">
                        <asp:Label ID="Label11" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Width="77px">Total payé :</asp:Label></td>
                    <td style="width: 4px; text-align: right;">
                        <asp:Label ID="Label_PrixTotalPaye_HOSPITALISATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Black"
                            Width="77px"></asp:Label></td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; text-align: right;">
                        <asp:Label ID="Label18" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                    <td style="width: 1px; text-align: left">
                        <asp:Label ID="Label_PrixTotal_HOSPITALISATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                            Width="40px"></asp:Label></td>
                    <td style="width: 3px; text-align: left;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; text-align: left">
                        <asp:HiddenField ID="HF_ID_ConsHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td style="width: 4px; text-align: right">
                        <asp:Button ID="Button_SAVE_Hospitalisation" runat="server" BackColor="White" Font-Bold="True"
                            Font-Size="Small" ForeColor="DodgerBlue" Text="Sauvegarder" OnClick="Button_SAVE_Hospitalisation_Click" /></td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; text-align: right">
                    </td>
                    <td style="width: 1px; text-align: left">
                        <asp:Button ID="Button_VOIR_FACTURE_Hospitalisation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="127px" OnClick="Button_VOIR_FACTURE_Hospitalisation_Click" /></td>
                    <td style="width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; text-align: left">
                        <asp:CheckBox ID="CheckBox_SetPayeOK" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" Width="127px" /></td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td style="width: 4px; text-align: left">
                        <asp:HiddenField ID="HF_NomActeFact" runat="server" />
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; text-align: right">
                    </td>
                    <td style="width: 1px; text-align: left">
                        <asp:HiddenField ID="HF_PrixAssurHosp" runat="server" />
                    </td>
                    <td style="width: 3px; text-align: left" rowspan="3">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 10px; text-align: left">
                        <asp:SqlDataSource ID="SqlDataSource_SELECT_ID_CONS_par_IDHOS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT     ID_CONSULTATION&#13;&#10;FROM         dbo.HOSPITALISATION&#13;&#10;WHERE     (ID_HOSPITALISATION = @ID_HOSPITALISATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td style="width: 4px; text-align: left">
                        <asp:HiddenField ID="HF_AssureurHosp" runat="server" />
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; text-align: right">
                    </td>
                    <td style="width: 1px; text-align: left">
                        <asp:HiddenField ID="HF_PrixPatientHosp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; text-align: left">
                        <asp:HiddenField ID="HF_TypeFactHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                    <td style="width: 4px; text-align: left">
                        <asp:HiddenField ID="HF_PrixTotalHosp" runat="server" />
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; text-align: right">
                    </td>
                    <td style="width: 1px; text-align: left">
                        <asp:HiddenField ID="HF_PourcentHosp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 13px;">
                    </td>
                    <td colspan="7" style="padding-left: 10px; text-align: left; height: 13px;">
                        <asp:Label ID="Label31" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Style="font-size: small; color: #ff3300"
                            Width="851px"></asp:Label></td>
                    <td style="padding-left: 10px; width: 3px; text-align: left; height: 13px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="height: 1px; text-align: left">
                        <hr style="width: 956px; color: #000000" />
                        </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; width: 47px; text-align: right;">
                        <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                    <td colspan="1" style="vertical-align: middle; text-align: left;">
                        <asp:Label ID="Label6" runat="server" Text="Examens faits" Width="124px"></asp:Label></td>
                    <td colspan="2" style="padding-left: 10px; text-align: left;">
                    </td>
                    <td colspan="4">
                        <asp:Button ID="Button_PAYER_TOUS_EXAMS_HOSPIT" runat="server" BackColor="White"
                            Font-Bold="True" Font-Underline="True" OnClick="Button_PAYER_TOUS_EXAMS_HOSPIT_Click"
                            Text="Payer tout" Width="130px" /></td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="6" style="padding-left: 10px; width: 47px;">
                    </td>
                    <td colspan="7" rowspan="6" style="padding-left: 10px; vertical-align: top; text-align: left;">
                        <asp:GridView ID="GridView_EXAMENS_FAITS_HOSPITALISATION" runat="server" Font-Size="X-Small"
                            Width="719px" AutoGenerateColumns="False" DataSourceID="SqlDataSource_FACTURATION_des_EXAMENS_FAITS_en_HOSPITALISATION"
                            OnSelectedIndexChanged="GridView_EXAMENS_FAITS_HOSPITALISATION_SelectedIndexChanged">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="Examen" HeaderText="Examens" SortExpression="Examen" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Assureur" HeaderText="Assureur" SortExpression="Assureur" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" >
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" >
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Prix de l''assureur''" HeaderText="Prix de l'assureur"
                                    ReadOnly="True" SortExpression="Prix de l''assureur''" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tarif" HeaderText="Tarif" ReadOnly="True" SortExpression="Tarif" >
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Il n'y a pas d'examens à payer!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_des_EXAMENS_FAITS_en_HOSPITALISATION"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_FACTURATION_des_EXAMENS_FAITS_en_HOSPITALISATION" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource_INSERT_FACT_DETAIL_EXAM_Hosp"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT FACTURE_DETAILS.* FROM FACTURE_DETAILS WHERE (NoREFERENCE = 11)" InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="HF_IdCONS_ExamHosp" Name="ID_CONSULTATION" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBox_ActeExamHosp" Name="ACTE_A_FACTURER" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBoxAssurExamHosp" Name="ASSUREUR" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_PourcentExamHosp" Name="POURCENTAGE" PropertyName="Value"
                                    Type="Double" />
                                <asp:ControlParameter ControlID="HF_PrixTotExamHosp" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixAssurExamHosp" Name="PAYE_PAR_ASSUREUR" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixPatExamHosp" Name="PAYE_PAR_PATIENT" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="CheckBox_ExamHosp_SetAsPaye" Name="PAYE" PropertyName="Checked"
                                    Type="Boolean" />
                                <asp:ControlParameter ControlID="HF_TypeFactExamHosp" Name="ID_Type_Facture" PropertyName="Value"
                                    Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView_IDCons_ExamHosp" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_Select_IDCONS_by_IDHOSP" Font-Size="XX-Small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_Select_IDCONS_by_IDHOSP" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT     ID_CONSULTATION&#13;&#10;FROM         dbo.HOSPITALISATION&#13;&#10;WHERE     (ID_HOSPITALISATION = @ID_HOSPITALISATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource_SET_EXAM_AS_PAYE_ExamHosp"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT RESULTATS_EXAMS_HOSPITALISATION.*, NoReference AS Expr1 FROM RESULTATS_EXAMS_HOSPITALISATION WHERE (NoReference = 1)" UpdateCommand="UPDATE_RESULTAT_EXAM_HOSPIT_SET_IT_AS_PAYE" UpdateCommandType="StoredProcedure">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox_ActeExamHosp" Name="NOM_EXAMEN" PropertyName="Text"
                                    Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="padding-left: 10px; width: 3px; text-align: left;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 29px;">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 29px;"><asp:HiddenField ID="HF_ActeFactExamHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 29px;">
                        <asp:HiddenField ID="HF_IdCONS_ExamHosp" runat="server" />
                    </td>
                    <td style="width: 4px; text-align: right; height: 29px;"><asp:HiddenField ID="HF_PrixAssurExamHosp" runat="server" />
                    </td>
                    <td colspan="4" style="height: 29px; text-align: left">
                        <asp:Button ID="Button_DECOCHER_TOUS_EXAMS_HOSPIT" runat="server" BackColor="White"
                            Font-Bold="True" Font-Underline="True" OnClick="Button_DECOCHER_TOUS_EXAMS_HOSPIT_Click"
                            Text="Décocher tout" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 29px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 33px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 33px">
                        &nbsp;<asp:TextBox ID="TextBox_ActeExamHosp" runat="server" Font-Size="XX-Small"
                            Visible="False"></asp:TextBox></td>
                    <td style="padding-left: 10px; width: 3px; height: 33px; text-align: right;">
                        <asp:Label ID="Label10" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Width="77px">Total payé :</asp:Label></td>
                    <td style="width: 4px; height: 33px; text-align: left">
                        <asp:Label ID="Label_PrixTotalPaye_EXAMENS_de_HOSPITALISATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Black"
                            Width="77px"></asp:Label></td>
                    <td style="width: 7px; height: 33px">
                    </td>
                    <td style="width: 7px; height: 33px">
                    </td>
                    <td style="width: 7px; height: 33px; text-align: right;">
                        <asp:Label ID="Label19" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                    <td style="width: 1px; height: 33px; text-align: left">
                        <asp:Label ID="Label_PrixTotal_EXAMENS_FAITS_HOSPITALISATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                            Width="40px"></asp:Label></td>
                    <td style="padding-left: 10px; width: 3px; height: 33px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 33px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 33px">
                        <asp:HiddenField ID="HF_PrixPatExamHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 33px; text-align: right">
                        <asp:HiddenField ID="HF_AssurExamHosp" runat="server" />
                    </td>
                    <td style="width: 4px; height: 33px; text-align: right">
                        <asp:Button ID="Button_SAVE_ExamensHospitalisation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Sauvegarder" OnClick="Button_SAVE_ExamensHospitalisation_Click" /></td>
                    <td style="width: 7px; height: 33px">
                    </td>
                    <td style="width: 7px; height: 33px">
                    </td>
                    <td style="width: 7px; height: 33px; text-align: right">
                        <asp:HiddenField ID="HF_PrixTotExamHosp" runat="server" />
                    </td>
                    <td style="width: 1px; height: 33px; text-align: left">
                        <asp:Button ID="Button_VOIR_FACTURE_ExamensDeHospitalisation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="123px" OnClick="Button_VOIR_FACTURE_ExamensDeHospitalisation_Click" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 33px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 36px">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 36px">
                        <asp:HiddenField ID="HF_PourcentExamHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 36px">
                    <asp:CheckBox ID="CheckBox_ExamHosp_SetAsPaye" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" Width="217px" />
                        <asp:TextBox ID="TextBoxAssurExamHosp" runat="server" Font-Size="XX-Small" Visible="False"></asp:TextBox></td>
                    <td style="width: 4px; height: 36px; text-align: right">
                        <asp:HiddenField ID="HF_TypeFactExamHosp" runat="server" />
                    </td>
                    <td style="width: 7px; height: 36px">
                    </td>
                    <td style="width: 7px; height: 36px">
                    </td>
                    <td style="width: 7px; height: 36px">
                    </td>
                    <td style="width: 1px; height: 36px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 36px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td colspan="7" style="padding-left: 10px; text-align: left">
                        <asp:Label ID="Label32" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Style="font-size: small; color: #ff3300"
                            Width="851px"></asp:Label></td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="text-align: left">
                        <hr style="width: 954px; color: #000000" />
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="padding-left: 10px; vertical-align: top; height: 17px; text-align: right; width: 47px;">
                        <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                    <td colspan="1" style="vertical-align: middle; text-align: left">
                        <asp:Label ID="Label5" runat="server" Text="Traitements faits " Width="124px"></asp:Label></td>
                    <td colspan="2" style="height: 17px; padding-left: 10px;">
                        &nbsp;</td>
                    <td colspan="4" style="height: 17px; text-align: left">
                        <asp:Button ID="Button_PAYER_TOUS_TRAITEMENTS_HOSPIT" runat="server" BackColor="White"
                            Font-Bold="True" Font-Underline="True" OnClick="Button_PAYER_TOUS_TRAITEMENTS_HOSPIT_Click"
                            Text="Payer tout" Width="130px" /></td>
                    <td style="padding-left: 10px; width: 3px; height: 17px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="5" style="padding-left: 10px; width: 47px;">
                    </td>
                    <td colspan="7" rowspan="5" style="padding-left: 10px; vertical-align: top; text-align: left;">
                        <asp:GridView ID="GridView_TRAITEMENTS_HOSPITALISATION" runat="server" Font-Size="X-Small"
                            Width="723px" AutoGenerateColumns="False" DataSourceID="SqlDataSource_FACTURATION_des_TRAITEMENTS_de_SUIVI"
                            OnSelectedIndexChanged="GridView_TRAITEMENTS_HOSPITALISATION_SelectedIndexChanged">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="Traitements" HeaderText="Traitements" SortExpression="Traitements" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NOM_ASSUREUR" HeaderText="Assureur" SortExpression="NOM_ASSUREUR" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" >
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" >
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Prix de l''assureur'" HeaderText="Prix de l'assureur"
                                    ReadOnly="True" SortExpression="Prix de l''assureur'" >
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tarif" HeaderText="Tarif" ReadOnly="True" SortExpression="Tarif" >
                                    <ItemStyle ForeColor="Blue" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Il n'y a pas de traitements à payer!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:GridView ID="GridView_IDcONS_par_IDHosp" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_SelectIDCONS_by_IDHosp" Font-Size="XX-Small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="ID_CONSULTATION" HeaderText="ID_CONSULTATION" SortExpression="ID_CONSULTATION" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_SelectIDCONS_by_IDHosp" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT     ID_CONSULTATION&#13;&#10;FROM         dbo.HOSPITALISATION&#13;&#10;WHERE     (ID_HOSPITALISATION = @ID_HOSPITALISATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_des_TRAITEMENTS_de_SUIVI" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_FACTURATION_des_TRAITEMENTS_de_SUIVI" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </td>
                    <td style="padding-left: 10px; width: 3px; height: 19px; vertical-align: top; text-align: left;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 3px; height: 36px;">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px">
                    </td>
                    <td style="padding-left: 10px;" colspan="3"><asp:SqlDataSource ID="SqlDataSource_INSERT_FACT_DETAIL_TraitHosp" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT FACTURE_DETAILS.* FROM FACTURE_DETAILS WHERE (NoREFERENCE = 11)" InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="HF_IdCOns_TRaitHosp" Name="ID_CONSULTATION" PropertyName="Value"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox_ACTFACT_TRAITHOSP" Name="ACTE_A_FACTURER"
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBoxASSUR_TRAITHOSP" Name="ASSUREUR" PropertyName="Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="HF_PourcentTraitHosp" Name="POURCENTAGE" PropertyName="Value"
                                Type="Double" />
                            <asp:ControlParameter ControlID="HF_PrixTotTraitHosp" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                Type="Decimal" />
                            <asp:ControlParameter ControlID="HF_PrixAssurTraitHosp" Name="PAYE_PAR_ASSUREUR"
                                PropertyName="Value" Type="Decimal" />
                            <asp:ControlParameter ControlID="HF_PrixPatientTraitHosp" Name="PAYE_PAR_PATIENT"
                                PropertyName="Value" Type="Decimal" />
                            <asp:ControlParameter ControlID="CheckBox_SetAsPayeTraitHosp" Name="PAYE" PropertyName="Checked"
                                Type="Boolean" />
                            <asp:ControlParameter ControlID="HF_TypeFactTraitHosp" Name="ID_Type_Facture" PropertyName="Value"
                                Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_SET_TRAITEMENT_SUIVI_AS_PAYE" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT TRAITEMENT_SUIVIE.* FROM TRAITEMENT_SUIVIE WHERE (No_TRAITEMENT_SUIVIE = 1)" UpdateCommand="UPDATE_TRAITEMENT_SUIVI_SET_IT_AS_PAYE" UpdateCommandType="StoredProcedure">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_HOSPITALISATION"
                                    PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox_ACTFACT_TRAITHOSP" Name="NOM_TRAITEMENT"
                                    PropertyName="Text" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td colspan="4" style="text-align: left">
                        <asp:Button ID="Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT" runat="server" BackColor="White"
                            Font-Bold="True" Font-Underline="True" OnClick="Button_DECOCHER_TOUS_TRAITEMENTS_HOSPIT_Click"
                            Text="Décocher tout" /></td>
                    <td style="padding-left: 10px; width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; width: 47px; height: 2px">
                    </td>
                    <td style="padding-left: 10px; height: 2px; text-align: left;" colspan="7">
                        <asp:Label ID="Label33" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Small"
                            Font-Underline="True" ForeColor="Black" Style="font-size: small; color: #ff3300"
                            Width="823px"></asp:Label>
                        &nbsp;
                    </td>
                    <td style="padding-left: 10px; width: 3px; height: 2px;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 47px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:TextBox ID="TextBoxASSUR_TRAITHOSP" runat="server" Font-Size="XX-Small" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TextBox_ACTFACT_TRAITHOSP" runat="server" Font-Size="XX-Small" Visible="False"></asp:TextBox></td>
                    <td style="padding-left: 10px; width: 3px; vertical-align: top; text-align: right;">
                        <asp:Label ID="Label9" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Width="77px">Total payé :</asp:Label></td>
                    <td style="width: 4px; vertical-align: top; text-align: left;">
                    <asp:Label ID="Label_PrixTotalPaye_TRAITEMENTS_HOSPITALISATION" runat="server"
                            BackColor="Ivory" Font-Bold="True" Font-Size="Small" Font-Underline="True"
                            ForeColor="Black" Width="77px"></asp:Label></td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px; vertical-align: top; text-align: right;">
                        <asp:Label ID="Label20" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                    <td style="width: 1px; vertical-align: top; text-align: left;">
                        <asp:Label ID="Label_PrixTotalTraitementsDeHospitalisation" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                            Width="40px"></asp:Label></td>
                    <td style="width: 3px; vertical-align: top; text-align: left;">
                        </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 47px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:HiddenField ID="HF_PourcentTraitHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:HiddenField ID="HF_PrixAssurTraitHosp" runat="server" />
                    </td>
                    <td style="vertical-align: top; width: 4px; text-align: right">
                        <asp:Button ID="Button_SAVE_TraitementsHospitalisation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Sauvegarder" OnClick="Button_SAVE_TraitementsHospitalisation_Click" /></td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="vertical-align: top; width: 7px; text-align: right">
                    </td>
                    <td style="vertical-align: top; width: 1px; text-align: left">
                        <asp:Button ID="Button_VOIR_FACTURE_TraitementsHospitalisation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="121px" OnClick="Button_VOIR_FACTURE_TraitementsHospitalisation_Click" /></td>
                    <td style="vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 47px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:HiddenField ID="HF_ActFact_TraitHosp" runat="server" />
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:HiddenField ID="HF_IdCOns_TRaitHosp" runat="server" />
                    </td>
                    <td style="vertical-align: top; width: 4px; text-align: left">
                        <asp:HiddenField ID="HF_PrixTotTraitHosp" runat="server" />
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="vertical-align: top; width: 7px; text-align: right">
                    </td>
                    <td style="vertical-align: top; width: 1px; text-align: left">
                        <asp:HiddenField ID="HF_PrixPatientTraitHosp" runat="server" />
                    </td>
                    <td style="vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 10px; vertical-align: top; width: 47px; text-align: right">
                    </td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        &nbsp;</td>
                    <td style="padding-left: 10px; vertical-align: top; width: 3px; text-align: right">
                        <asp:HiddenField ID="HF_AssurTraitHosp" runat="server" />
                    </td>
                    <td style="vertical-align: top; width: 4px; text-align: left">
                        &nbsp;<asp:CheckBox ID="CheckBox_SetAsPayeTraitHosp" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" Width="217px" /></td>
                    <td style="width: 7px">
                    </td>
                    <td style="width: 7px">
                    </td>
                    <td style="vertical-align: top; width: 7px; text-align: right">
                    </td>
                    <td style="vertical-align: top; width: 1px; text-align: left">
                        <asp:HiddenField ID="HF_TypeFactTraitHosp" runat="server" />
                    </td>
                    <td rowspan="1" style="vertical-align: top; width: 3px; text-align: left">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="Examens_A_Faire" runat="server">
            <table style="width: 929px; text-align: left;">
                <tr>
                    <td style="width: 3px">
                        <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                    <td style="width: 3px">
                        <asp:Label ID="Label4" runat="server" Text="Examens à faire" Width="124px"></asp:Label></td>
                    <td style="vertical-align: middle; width: 8px; text-align: left">
                        </td>
                    <td style="width: 222px; text-align: left">
                    </td>
                    <td colspan="3" style="text-align: left">
                        <asp:Button ID="Button_SELECTIONNER_TOUT" runat="server" BackColor="White" Font-Bold="True"
                            Font-Underline="True" OnClick="Button_SELECTIONNER_TOUT_Click" Text="Payer tout"
                            Width="130px" /></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td colspan="6" rowspan="6" style="vertical-align: top; text-align: left">
                        <asp:GridView ID="GridView_EXAMENS_A_FAIRE" runat="server" Font-Size="X-Small" Width="662px"
                            AutoGenerateColumns="False" DataSourceID="SqlDataSource_FACTURATION_des_Examens_a_faire"
                            OnSelectedIndexChanged="GridView_EXAMENS_A_FAIRE_SelectedIndexChanged">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="Examens" HeaderText="Examens" SortExpression="Examens">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Assureur" HeaderText="Assureur" SortExpression="Assureur">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="%" HeaderText="%" SortExpression="%">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Prix de l'assureur'" HeaderText="Prix de l'assureur" SortExpression="Prix de l'assureur'">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Prix du patient" HeaderText="Prix du patient" SortExpression="Prix du patient">
                                    <ItemStyle Font-Bold="True" ForeColor="Blue" HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Il n'y a pas d'examens à payer!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_des_Examens_a_faire" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_PRIX_des_EXAMENS_A_FAIRE" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_INSERT_EXAMEN_A_FAIRE_dans_FACTURE_Details"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure"
                            SelectCommand="SELECT FACTURE_DETAILS.* FROM FACTURE_DETAILS WHERE (NoREFERENCE = 11)">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_Nom_EXAMEN" Name="ACTE_A_FACTURER" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_AssureurExamen" Name="ASSUREUR" PropertyName="Value"
                                    Type="String" />
                                <asp:ControlParameter ControlID="HF_PourcentageExamen" Name="POURCENTAGE" PropertyName="Value"
                                    Type="Double" />
                                <asp:ControlParameter ControlID="HF_PrixTotal" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixDelAssureur" Name="PAYE_PAR_ASSUREUR" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="HF_PrixDuPatient" Name="PAYE_PAR_PATIENT" PropertyName="Value"
                                    Type="Decimal" />
                                <asp:ControlParameter ControlID="CheckBox_SetExamenAFaire_As_Payed" Name="PAYE" PropertyName="Checked"
                                    Type="Boolean" />
                                <asp:ControlParameter ControlID="HF_Type_De_Facture" Name="ID_Type_Facture" PropertyName="Value"
                                    Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                    </td>
                    <td style="vertical-align: top; text-align: left">
                        </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 21px">
                    </td>
                    <td style="height: 21px">
                    </td>
                    <td style="vertical-align: top; height: 21px; text-align: left">
                        </td>
                    <td style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HF_Nom_EXAMEN" runat="server" />
                    </td>
                    <td style="width: 8px">
                    </td>
                    <td style="width: 222px">
                        &nbsp;</td>
                    <td colspan="3">
                        <asp:Button ID="Button_DECOCHER_TOUT" runat="server" BackColor="White" Font-Bold="True"
                            Font-Underline="True" OnClick="Button_DECOCHER_TOUT_Click" Text="Décocher tout" /></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HF_AssureurExamen" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource_Set_Examens_A_Faire_PAYE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" SelectCommand="SELECT RESULTATS_EXAMEN.* FROM RESULTATS_EXAMEN WHERE (NoReference = 1)" UpdateCommand="UPDATE_RESULTAT_EXAMEN_SET_IT_AS_PAYED" UpdateCommandType="StoredProcedure">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text" />
                                <asp:ControlParameter ControlID="HF_Nom_EXAMEN" Name="NOM_EXAMEN" PropertyName="Value"
                                    Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 9px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 1px">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HF_PourcentageExamen" runat="server" />
                    </td>
                    <td style="vertical-align: middle; width: 8px; text-align: right">
                        <asp:Label ID="Label13" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Style="text-align: left" Width="77px">Total payé :</asp:Label>
                    </td>
                    <td style="vertical-align: middle; text-align: left; width: 222px;">
                        <asp:Label ID="Label_PrixTotalPaye_EXAMENS_a_FAIRE_CONSULTATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Black"
                            Width="77px"></asp:Label></td>
                    <td style="width: 9px">
                    </td>
                    <td style="vertical-align: middle; text-align: right">
                        <asp:Label ID="Label16" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                    <td style="vertical-align: middle; text-align: left; width: 1px;">
                        <asp:Label ID="Label_PrixTotal_EXAMENS_A_FAIRE" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                            Width="40px" Font-Names="Verdana"></asp:Label></td>
                    <td>
                    </td>
                    <td style="text-align: left">
                        </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                    <td style="vertical-align: middle; width: 8px; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 222px; text-align: left">
                        <asp:Button ID="Button_SAVE_ExamensConsultation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Sauvegarder" OnClick="Button_SAVE_ExamensConsultation_Click" /></td>
                    <td style="width: 9px">
                    </td>
                    <td style="vertical-align: middle; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 1px; text-align: left">
                        <asp:Button ID="Button_VOIR_FACTURE_Examens_A_Faire" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="123px" OnClick="Button_VOIR_FACTURE_Examens_A_Faire_Click" /></td>
                    <td>
                    </td>
                    <td style="text-align: left">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        &nbsp;<asp:Label ID="Label_Error_ExamenAFaire" runat="server" BackColor="White" Font-Bold="True"
                            Font-Size="X-Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                            color: #ff3300" Width="683px"></asp:Label></td>
                    <td>
                    </td>
                    <td style="text-align: left">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HF_PrixTotal" runat="server" />
                    </td>
                    <td style="vertical-align: middle; width: 8px; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 222px; text-align: left">
                        <asp:HiddenField ID="HF_PrixDuPatient" runat="server" />
                    </td>
                    <td style="width: 9px">
                    </td>
                    <td style="vertical-align: middle; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 1px; text-align: left">
                    </td>
                    <td>
                    </td>
                    <td style="text-align: left">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HF_PrixDelAssureur" runat="server" />
                    </td>
                    <td style="vertical-align: middle; width: 8px; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 222px; text-align: left">
                        <asp:HiddenField ID="HF_Type_De_Facture" runat="server" />
                    </td>
                    <td style="width: 9px">
                    </td>
                    <td style="vertical-align: middle; text-align: right">
                    </td>
                    <td style="vertical-align: middle; width: 1px; text-align: left">
                        <asp:CheckBox ID="CheckBox_SetExamenAFaire_As_Payed" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" /></td>
                    <td>
                    </td>
                    <td style="text-align: left">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 15px">
                    </td>
                    <td style="vertical-align: middle; text-align: left; height: 15px;" colspan="5"><asp:Button ID="Button8" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la facture générale" Width="537px" OnClick="Button8_Click" />&nbsp;</td>
                    <td style="height: 15px">
                    </td>
                    <td style="text-align: left; height: 15px;">
                    </td>
                    <td style="height: 15px">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="TraitementsConsultation" runat="server"><table style="width: 929px; text-align: left;">
            <tr>
                <td style="width: 3px">
                    <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                <td style="width: 3px">
                    <asp:Label ID="Label2" runat="server" Text="Traitements" Width="90px"></asp:Label></td>
                <td>
                    </td>
                <td style="width: 263px">
                </td>
                <td style="width: 34px">
                </td>
                <td style="width: 17px">
                </td>
                <td colspan="2">
                        <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Underline="True"
                            OnClick="Button1_Click" Text="Payer tout" Width="130px" /></td>
                <td style="width: 1217px">
                </td>
                <td style="width: 1211px">
                </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td colspan="7" rowspan="6">
                        <asp:GridView ID="GridView_TRAITEMENTS_CONSULTATION" runat="server" Font-Size="X-Small"
                            Width="544px" AutoGenerateColumns="False" DataSourceID="SqlDataSource_FACTURATION_des_Traitements_de_Consultation"
                            OnSelectedIndexChanged="GridView_TRAITEMENTS_CONSULTATION_SelectedIndexChanged">
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                            <Columns>
                                <asp:BoundField DataField="DESCRIPTION_SERV_RENDUS" HeaderText="Traitements" SortExpression="DESCRIPTION_SERV_RENDUS">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NOM_ASSUREUR" HeaderText="Assureur" SortExpression="NOM_ASSUREUR">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="%" HeaderText="%" SortExpression="%">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Pay&#233; par l''assureur'" HeaderText="Prix de l'assureur"
                                    SortExpression="Pay&#233; par l''assureur'">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tarif" HeaderText="Prix du patient" SortExpression="Tarif">
                                    <ItemStyle Font-Bold="True" ForeColor="Blue" HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Pay&#233;" ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px; height: 34px; text-align: right">
                                            <asp:Image ID="Image_ErrorCons" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" /></td>
                                        <td style="width: 100px; height: 34px; text-align: left">
                                            <asp:Label ID="Label_Error_Cons" runat="server" BackColor="White" Font-Bold="True"
                                                Font-Size="Small" Font-Underline="True" ForeColor="Black" Style="font-size: small;
                                                color: #ff3300" Width="617px">Il n'y a pas de traitements à payer!</asp:Label></td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_FACTURATION_des_Traitements_de_Consultation"
                            runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT_FACTURATION_des_TRAITEMENTS_de_CONSULTATION" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 3px; height: 16px">
                </td>
                <td style="width: 1217px; height: 16px">
                </td>
                <td style="width: 1211px; height: 16px">
                </td>
                <td style="width: 1098px; height: 16px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 1217px">
                </td>
                <td style="width: 1211px">
                </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 1217px">
                </td>
                <td style="vertical-align: top; width: 1211px; text-align: left">
                        </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 1217px">
                </td>
                <td style="width: 1211px">
                </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 1217px">
                </td>
                <td style="width: 1211px">
                </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 3px">
                </td>
                <td>
                </td>
                <td style="width: 263px">
                    <asp:TextBox ID="TextBox_NomTraitement" runat="server" Visible="False"></asp:TextBox></td>
                <td style="width: 34px">
                </td>
                <td style="width: 17px">
                </td>
                <td colspan="2">
                        <asp:Button ID="Button2" runat="server" BackColor="White" Font-Bold="True" Font-Underline="True"
                            OnClick="Button2_Click1" Text="Décocher tout" /></td>
                <td style="width: 1217px">
                </td>
                <td style="width: 1211px">
                </td>
                <td style="width: 1098px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px; height: 45px">
                </td>
                <td colspan="2" style="height: 45px; text-align: left">
                    <asp:HiddenField ID="HF_PrixDAssureurTrait" runat="server" />
                    <asp:HiddenField ID="HF_AssureurTraitement" runat="server" />
                </td>
                <td style="width: 263px; height: 45px; text-align: left">
                    <asp:HiddenField ID="HF_PrixPatientTrait" runat="server" />
                    <asp:HiddenField ID="HF_TypeFactureTrait" runat="server" />
                </td>
                <td style="width: 34px; height: 45px">
                </td>
                <td style="width: 17px; height: 45px">
                </td>
                <td colspan="2" style="height: 45px; text-align: left">
                    &nbsp;<asp:CheckBox ID="CheckBox_SetTraitAsPaye" runat="server" Visible="False" Enabled="False" Font-Size="XX-Small" />
                    <asp:HiddenField ID="HF_PourcentageTrait" runat="server" />
                    <asp:HiddenField ID="HF_PrixTotalTrait" runat="server" />
                </td>
                <td colspan="3" style="height: 45px">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td colspan="2" style="text-align: right">
                    <asp:HiddenField ID="HF_NomTraitement" runat="server" />
                </td>
                <td colspan="5" style="text-align: left">
                    <asp:SqlDataSource ID="SqlDataSource_INSERT_TRAITEMENTS_FACTURE_DETAILS" runat="server"
                        ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                        InsertCommand="INSERT_INTO_FACTURE_DETAILS" InsertCommandType="StoredProcedure"
                        SelectCommand="SELECT FACTURE_DETAILS.* FROM FACTURE_DETAILS WHERE (NoREFERENCE = 11)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="HF_NomTraitement" Name="ACTE_A_FACTURER" PropertyName="Value"
                                Type="String" />
                            <asp:ControlParameter ControlID="HF_AssureurTraitement" Name="ASSUREUR" PropertyName="Value"
                                Type="String" />
                            <asp:ControlParameter ControlID="HF_PourcentageTrait" Name="POURCENTAGE" PropertyName="Value"
                                Type="Double" />
                            <asp:ControlParameter ControlID="HF_PrixTotalTrait" Name="MAXIMA_A_PAYER" PropertyName="Value"
                                Type="Decimal" />
                            <asp:ControlParameter ControlID="HF_PrixDAssureurTrait" Name="PAYE_PAR_ASSUREUR"
                                PropertyName="Value" Type="Decimal" />
                            <asp:ControlParameter ControlID="HF_PrixPatientTrait" Name="PAYE_PAR_PATIENT" PropertyName="Value"
                                Type="Decimal" />
                            <asp:ControlParameter ControlID="CheckBox_SetTraitAsPaye" Name="PAYE" PropertyName="Checked"
                                Type="Boolean" />
                            <asp:ControlParameter ControlID="HF_TypeFactureTrait" Name="ID_Type_Facture" PropertyName="Value"
                                Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource_Set_Traitements_A_Faire_PAYE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" SelectCommand="SELECT TRAITEMENT_CONSULTATION.* FROM TRAITEMENT_CONSULTATION WHERE (No_TRAITEMENT_CONS = 11)" UpdateCommand="UPDATE_TRAITEMENT_CONSULTATION_SET_IT_AS_PAYE" UpdateCommandType="StoredProcedure">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox_IDCONSULTATION" Name="ID_CONSULTATION" PropertyName="Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox_NomTraitement" Name="NOM_TRAITEMENT" PropertyName="Text"
                                Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 3px">
                </td>
                <td style="text-align: right">
                        <asp:Label ID="Label12" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="Black" Width="77px">Total payé :</asp:Label></td>
                <td style="text-align: left; width: 263px;">
                        <asp:Label ID="Label_PrixTotalPaye_TRAITEMENTS_CONSULTATION" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Black"
                            Width="77px"></asp:Label></td>
                <td style="width: 34px">
                </td>
                <td style="width: 17px">
                </td>
                <td style="text-align: right">
                        <asp:Label ID="Label17" runat="server" BackColor="Ivory" Font-Bold="True" Font-Size="Small"
                            Font-Underline="True" ForeColor="DodgerBlue" Width="77px">Grand total</asp:Label></td>
                <td style="text-align: left; width: 51px;">
                        <asp:Label ID="Label_PrixTotal_TRAITEMENTS_A_FAIRE" runat="server" BackColor="Ivory"
                            Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="DodgerBlue"
                            Width="40px"></asp:Label></td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td style="width: 3px">
                </td>
                <td style="text-align: right">
                </td>
                <td style="width: 263px; text-align: left">
                    <asp:Button ID="Button_SAVE_TraitementsConsultation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Sauvegarder"
                            OnClick="Button_SAVE_TraitementsConsultation_Click" /></td>
                <td style="width: 34px">
                </td>
                <td style="width: 17px">
                </td>
                <td style="text-align: right">
                </td>
                <td style="width: 51px; text-align: left">
                    <asp:Button ID="Button_VOIR_FACTURE_TraitementsConsultation" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la Facture >>" Width="131px" OnClick="Button_VOIR_FACTURE_TraitementsConsultation_Click1" /></td>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td colspan="7">
                    <asp:Label ID="Label_ErrorTraitement" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Small"
                        Font-Underline="True" ForeColor="Black" Style="font-size: small; color: #ff3300"
                        Width="683px"></asp:Label></td>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                </td>
                <td colspan="7">
                    <asp:Button ID="Button5" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la facture générale" Width="537px" OnClick="Button5_Click" /></td>
                <td colspan="3">
                </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="Carte_de_patient" runat="server"><table style="width: 929px">
            <tr>
                <td style="vertical-align: top; width: 118px; text-align: left">
                </td>
                <td style="vertical-align: middle; width: 118px; text-align: left">
                </td>
                <td style="width: 26px; text-align: left">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="DodgerBlue" Text="Nom : "
                        Width="88px"></asp:Label></td>
                <td style="text-align: left;" colspan="3">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="DodgerBlue" Text="Prénom : "
                        Width="107px"></asp:Label></td>
                <td style="width: 156px">
                </td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 118px; text-align: left">
                </td>
                <td style="vertical-align: middle; width: 118px; text-align: left">
                </td>
                <td style="width: 26px; text-align: left">
                    <asp:TextBox ID="TextBox_NOM" runat="server" Font-Names="Verdana" Font-Size="Small"></asp:TextBox></td>
                <td style="text-align: left;" colspan="3">
                    <asp:TextBox ID="TextBox_PRENOM" runat="server" Font-Names="Verdana" Font-Size="Small" Width="182px"></asp:TextBox></td>
                <td style="width: 156px; text-align: left;">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images TMS MANZI/search.gif"
                        OnClick="ImageButton1_Click" /></td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 118px; text-align: left">
                    <img src="../Images%20TMS%20MANZI/invoicing.jpg" /></td>
                <td style="vertical-align: middle; width: 118px; text-align: left">
                    <asp:Label ID="Label8" runat="server" Text="La carte de patient" Width="118px"></asp:Label></td>
                <td style="width: 26px; text-align: left;">
                </td>
                <td style="width: 18px">
                </td>
                <td style="width: 16px; vertical-align: bottom; text-align: left;">
                    </td>
                <td style="width: 13px">
                </td>
                <td style="width: 156px">
                </td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td colspan="6" rowspan="4" style="text-align: left">
                    <asp:GridView ID="GridView_PATIENT_CartePerdue" runat="server" Font-Size="X-Small" Width="708px"
                            GridLines="Vertical" PageSize="1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView_PATIENT_CartePerdue_SelectedIndexChanged" DataSourceID="SqlDataSource_PATIENT_pour_NOUVELLE_CARTE">
                        <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
                        <EditRowStyle BackColor="Ivory" />
                        <SelectedRowStyle BackColor="AliceBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Underline="True" ForeColor="White" HorizontalAlign="Center" Font-Names="Verdana" />
                        <AlternatingRowStyle BackColor="AliceBlue" />
                        <Columns>
                            <asp:BoundField DataField="ID_PATIENT" HeaderText="ID patient" ReadOnly="True" SortExpression="ID patient">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOM" HeaderText="Nom" SortExpression="NOM">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRENOM" HeaderText="Pr&#233;nom" SortExpression="PRENOM">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AUTRE_NOM" HeaderText="Autres noms" SortExpression="AUTRE_NOM">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="No_CARTE_IDENTITE" HeaderText="No C.I." SortExpression="No_CARTE_IDENTITE">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DATE_D_ENREGISTREMENT" HeaderText="Date d'enregistrement"
                                SortExpression="DATE_D_ENREGISTREMENT">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="No_CARTE_ASSUREUR" HeaderText="No carte de l'assureur"
                                SortExpression="No_CARTE_ASSUREUR">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField SelectText="S&#233;lectionner" ShowSelectButton="True">
                                <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <EmptyDataRowStyle ForeColor="Red" />
                        <EmptyDataTemplate>
                            &nbsp;<table>
                                <tr>
                                    <td style="width: 100px; text-align: right">
                                        &nbsp;
                                        <asp:Image ID="ImageError" runat="server" ImageUrl="~/Images TMS MANZI/stop.gif" />
                                    </td>
                                    <td style="width: 100px; text-align: left">
                                        <asp:Label ID="Label29" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium"
                                            Font-Underline="True" ForeColor="Red" Style="text-align: left" Width="681px">Le patient n'est pas fiché chez nous. Vérifiez encore! S.V.P!</asp:Label></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource_PATIENT_pour_NOUVELLE_CARTE" runat="server"
                        ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                        SelectCommand="SearchPatient_Pour_Nouvelle_Carte_encas_de_Perte" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox_NOM" Name="nom" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox_PRENOM" Name="prenom" PropertyName="Text"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                    </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 118px; vertical-align: middle; text-align: right;">
                    &nbsp;</td>
                <td colspan="5" style="text-align: left">
                    <asp:Label ID="Label30" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium"
                        Font-Underline="True" ForeColor="Red" Style="text-align: left" Width="681px"></asp:Label></td>
                <td style="width: 156px">
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                    </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 118px">
                </td>
                <td style="vertical-align: top; width: 26px; text-align: left">
                    </td>
                <td style="width: 18px">
                </td>
                <td style="width: 16px">
                </td>
                <td style="width: 13px">
                </td>
                <td style="width: 156px">
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 118px">
                </td>
                <td style="width: 26px; text-align: left">
                    <asp:Button ID="Button7" runat="server" BackColor="White"
                            Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" Text="Confirmer" OnClick="Button7_Click" /></td>
                <td style="width: 18px">
                </td>
                <td style="width: 16px; text-align: left">
                </td>
                <td style="width: 13px">
                </td>
                <td colspan="4" style="text-align: left">
                    <asp:Button ID="Button4" runat="server" BackColor="White" Font-Bold="True"
                            Font-Size="Small" ForeColor="DodgerBlue" Text="Voir la carte du patient" style="vertical-align: middle; text-align: left" Width="158px" OnClick="Button4_Click" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:HiddenField ID="HiddenField_IDPATIENT" runat="server" />
                </td>
                <td colspan="3">
                    <asp:SqlDataSource ID="SqlDataSource_RECHERCHE_du_Patient" runat="server"></asp:SqlDataSource>
                </td>
                <td style="width: 13px">
                </td>
                <td style="width: 156px">
                </td>
                <td style="width: 87px">
                </td>
                <td style="width: 91px">
                </td>
                <td style="width: 79px">
                </td>
            </tr>
            <tr>
                <td style="text-align: left;" colspan="2">
                    <asp:HiddenField ID="HiddenField" runat="server" />
                </td>
                <td style="width: 26px">
                    <asp:HiddenField ID="HiddenField3" runat="server" />
                </td>
                <td style="width: 18px">
                </td>
                <td style="width: 16px">
                </td>
                <td style="width: 13px">
                </td>
                <td style="width: 156px">
                </td>
                <td colspan="3" style="vertical-align: top; text-align: left">
                    </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="View6" runat="server"><table style="width: 929px; text-align: left;">
            <tr>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="5" rowspan="4" style="vertical-align: top; text-align: left">
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="View7" runat="server"><table style="width: 929px; text-align: left;">
            <tr>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="5" rowspan="4" style="vertical-align: top; text-align: left">
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="View8" runat="server"><table style="width: 929px; text-align: left;">
            <tr>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="5" rowspan="4" style="vertical-align: top; text-align: left">
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="View9" runat="server"><table style="width: 929px; text-align: left;">
            <tr>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="5" rowspan="4" style="vertical-align: top; text-align: left">
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </asp:View>
        <asp:View ID="Menu_Page" runat="server"><table style="width: 929px">
            <tr>
                <td style="width: 106px; height: 21px; text-align: right">
                    <img src="../Images%20TMS%20MANZI/reports.jpg" /></td>
                <td colspan="3" style="vertical-align: middle; height: 21px; text-align: left">
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                        Font-Underline="True" Style="font-size: medium; color: dodgerblue; font-family: Broadway"
                        Text="Facturation rapide" Width="280px"></asp:Label></td>
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
                <td style="height: 21px; vertical-align: top; text-align: left; width: 401px;" colspan="2">
                    &nbsp;<img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label ID="Label21" runat="server" Text="Les cartes" Width="176px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"></asp:Label></td>
                <td style="width: 128px; height: 21px">
                </td>
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
                    <div style="width: 626px; height: 58px; background-color: aliceblue;">
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton4" runat="server"
                            Font-Size="Medium" OnClick="LinkButton4_Click" Width="185px">La carte du patient</asp:LinkButton><br />
                        <br />
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton5" runat="server"
                            Font-Size="Medium" OnClick="LinkButton5_Click" Width="185px">La carte de consultation</asp:LinkButton></div>
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
                <td style="width: 106px" rowspan="2">
                </td>
                <td style="width: 2px" rowspan="2">
                </td>
                <td style="width: 39px" rowspan="2">
                </td>
                <td style="width: 41px" rowspan="2">
                </td>
                <td style="width: 42px" rowspan="2">
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td style="width: 106px; height: 21px;">
                </td>
                <td style="vertical-align: top; height: 21px; text-align: left; width: 401px;" colspan="2">
                    <img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label ID="Label22" runat="server" Text="Les traitements à payer" Width="188px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"></asp:Label></td>
                <td style="width: 128px; height: 21px;">
                </td>
                <td style="width: 126px; height: 21px;">
                </td>
                <td style="width: 116px; height: 21px;">
                </td>
                <td style="width: 39px; height: 21px;">
                </td>
                <td style="width: 41px; height: 21px;">
                </td>
                <td style="width: 42px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td style="width: 106px">
                </td>
                <td style="width: 2px">
                </td>
                <td colspan="4" rowspan="5" style="vertical-align: top; text-align: left">
                    <div style="width: 626px; height: 100px; background-color: aliceblue;">
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton1" runat="server"
                            Font-Size="Medium" OnClick="LinkButton1_Click" Width="185px">Les examens à faire</asp:LinkButton><br />
                        <br />
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton2" runat="server"
                            Font-Size="Medium" OnClick="LinkButton2_Click" Width="185px">Les traitements à faire</asp:LinkButton><br />
                        <br />
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton3" runat="server"
                            Font-Size="Medium" Width="185px" OnClick="LinkButton3_Click">Les soins médicaux à faire</asp:LinkButton></div>
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
                <td style="width: 106px; height: 22px;">
                </td>
                <td style="width: 2px; height: 22px;">
                </td>
                <td style="width: 39px; height: 22px;">
                </td>
                <td style="width: 41px; height: 22px;">
                </td>
                <td style="width: 42px; height: 22px;">
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
                <td style="vertical-align: top; text-align: left;" colspan="3">
                    <img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label ID="Label23" runat="server" Text="Les traitements de l'hospitalisation" Width="270px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"></asp:Label></td>
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
                    <div style="width: 630px; height: 100px; background-color: aliceblue;">
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton6" runat="server"
                            Font-Size="Medium" OnClick="LinkButton6_Click" Width="239px">Le paiement du séjour à l'hopital</asp:LinkButton><br />
                        <br />
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton7" runat="server"
                            Font-Size="Medium" OnClick="LinkButton7_Click" Width="238px">Les traitements de suivi  faits à l'hopital</asp:LinkButton><br />
                        <br />
                        <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton8" runat="server"
                            Font-Size="Medium" OnClick="LinkButton8_Click" Width="237px">Les examens faits à l'hopital</asp:LinkButton><br />
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
    </asp:MultiView>
</asp:Content>
