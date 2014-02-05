<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_FINANCE.master"
    AutoEventWireup="true" CodeFile="Page_De_Facturation_FACILITATRICE.aspx.cs" Inherits="CAISSIERE_Page_De_Facturation_FACILITATRICE"
    Title="Rapports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span style="color: #ff3300">
</span>
    <br />
    <asp:MultiView ID="MultiView_RAPPORTS" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 929px; text-align: left">
                <tr>
                    <td style="width: 106px; height: 21px; text-align: right">
                        <img src="../Images%20TMS%20MANZI/reports.jpg" /></td>
                    <td colspan="3" style="vertical-align: middle; height: 21px; text-align: left">
                        <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Style="font-size: medium; color: dodgerblue; font-family: Broadway"
                            Text="Les rapports" Width="280px"></asp:Label></td>
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
                    <td colspan="2" style="vertical-align: top; width: 401px; height: 21px; text-align: left">
                        &nbsp;<img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label
                            ID="Label21" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Les rapports internes" Width="176px"></asp:Label></td>
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
                        <div style="width: 626px; height: 58px; background-color: aliceblue">
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton4" runat="server"
                                Font-Size="Medium" Width="249px" OnClick="LinkButton4_Click">La liste de tous les patients</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton5" runat="server"
                                Font-Size="Medium" Width="249px">La liste de tous les lits disponibles</asp:LinkButton></div>
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
                    <td colspan="2" style="vertical-align: top; width: 401px; height: 21px; text-align: left">
                        <img src="../Images%20TMS%20MANZI/arrow1.gif" style="width: 14px; height: 14px" /><asp:Label
                            ID="Label22" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Les rapports financiers" Width="236px"></asp:Label></td>
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
                    <td colspan="4" rowspan="5" style="vertical-align: top; text-align: left">
                        <div style="width: 626px; height: 100px; background-color: aliceblue">
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton1" runat="server"
                                Font-Size="Medium" Width="247px">Les factures externes</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton2" runat="server"
                                Font-Size="Medium" Width="247px">Les factures internes</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton3" runat="server"
                                Font-Size="Medium" Width="245px">Les autres factures</asp:LinkButton></div>
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
                            ID="Label23" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Les rapports externes" Width="270px"></asp:Label></td>
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
                                Font-Size="Medium" OnClick="LinkButton6_Click" Width="248px">Les factures des assureurs</asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton7" runat="server"
                                Font-Size="Medium" Width="247px" OnClick="LinkButton7_Click">Les factures périodiques des assureurs </asp:LinkButton><br />
                            <br />
                            <img src="../Images%20TMS%20MANZI/arrow.gif" /><asp:LinkButton ID="LinkButton8" runat="server"
                                Font-Size="Medium" Width="247px">Les examens faits à l'hopital</asp:LinkButton><br />
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
        <asp:View ID="View2" runat="server">
            <table style="width: 929px; text-align: left">
                <tr>
                    <td style="width: 80px; height: 16px">
                    </td>
                    <td style="width: 155px; height: 16px">
                    </td>
                    <td style="width: 107px; height: 16px">
                    </td>
                    <td style="width: 149px; height: 16px">
                    </td>
                    <td style="width: 77px; height: 16px">
                    </td>
                    <td style="height: 16px">
                    </td>
                    <td style="height: 16px">
                    </td>
                    <td style="height: 16px">
                    </td>
                    <td style="height: 16px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 80px">
                    </td>
                    <td style="width: 155px">
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana"
                            Font-Size="Small" Font-Underline="True" Text="Assureur" Width="146px"></asp:Label></td>
                    <td style="width: 107px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Date début" Width="156px"></asp:Label></td>
                    <td style="width: 149px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                            Font-Underline="True" Text="Date fin" Width="156px"></asp:Label></td>
                    <td style="width: 77px">
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
                    <td style="width: 80px; height: 130px">
                    </td>
                    <td style="vertical-align: top; width: 155px; height: 130px; text-align: left">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_ID_Assur"
                            DataTextField="NOM_ASSUREUR" DataValueField="ID_ASSUREUR" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"
                            Width="147px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 107px; height: 130px">
                        <asp:Calendar ID="Calendar_DEBUT" runat="server" Font-Size="XX-Small" OnSelectionChanged="Calendar_DEBUT_SelectionChanged"></asp:Calendar>
                    </td>
                    <td style="width: 149px; height: 130px">
                        <asp:Calendar ID="Calendar_FIN" runat="server" Font-Size="XX-Small" OnSelectionChanged="Calendar_FIN_SelectionChanged"></asp:Calendar>
                    </td>
                    <td style="width: 77px; height: 130px">
                    </td>
                    <td style="vertical-align: top; height: 130px; text-align: left">
                    </td>
                    <td style="height: 130px">
                    </td>
                    <td style="height: 130px">
                    </td>
                    <td style="height: 130px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;<asp:SqlDataSource ID="SqlDataSource_ID_Assur" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT ID_ASSUREUR, NOM_ASSUREUR FROM ASSUREUR WHERE (ID_ASSUREUR <> 5)">
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 107px">
                        <asp:HiddenField ID="HF_IDAssureur" runat="server" />
                    </td>
                    <td style="width: 149px">
                        <asp:HiddenField ID="HF_DateDebut" runat="server" />
                    </td>
                    <td style="vertical-align: top; width: 77px; text-align: left">
                        <asp:Button ID="Button4" runat="server" BackColor="White" Font-Bold="True" Font-Size="Small"
                            ForeColor="DodgerBlue" OnClick="Button4_Click" Style="vertical-align: middle;
                            text-align: center" Text="Facturer" Width="80px" /></td>
                    <td style="vertical-align: top; text-align: left">
                        <asp:HiddenField ID="HF_DateFin" runat="server" />
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
        <asp:View ID="View3" runat="server">
            <table style="width: 929px; text-align: left">
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
                        <asp:GridView ID="GridView_TRAITEMENTS_HOSPITALISATION" runat="server" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource_LISTE_de_TOUS_les_PATIENTS" Font-Size="X-Small" 
                            Style="text-align: left" Width="897px">
                            <Columns>
                                <asp:BoundField DataField="Nom" HeaderText="Nom" ReadOnly="True" SortExpression="Nom" />
                                <asp:BoundField DataField="Pr&#233;nom" HeaderText="Pr&#233;nom" ReadOnly="True"
                                    SortExpression="Pr&#233;nom" />
                                <asp:BoundField DataField="Autres noms" HeaderText="Autres noms" ReadOnly="True"
                                    SortExpression="Autres noms" />
                                <asp:BoundField DataField="Assureur" HeaderText="Assureur" SortExpression="Assureur" />
                                <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                                <asp:BoundField DataField="Date d'enregistrement'" HeaderText="Date d'enregistrement'"
                                    SortExpression="Date d'enregistrement'" />
                                <asp:BoundField DataField="No d'assurance'" HeaderText="No d'assurance'" SortExpression="No d'assurance'" />
                            </Columns>
                            <RowStyle BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" Font-Names="Verdana"
                                ForeColor="Black" HorizontalAlign="Center" Wrap="True" />
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
                            <EditRowStyle BackColor="Ivory" />
                            <SelectedRowStyle BackColor="AliceBlue" BorderColor="DodgerBlue" BorderStyle="Dashed"
                                Font-Bold="True" Font-Italic="False" ForeColor="DodgerBlue" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="DodgerBlue" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                                Font-Names="Verdana" Font-Underline="True" ForeColor="White" HorizontalAlign="Center" />
                            <AlternatingRowStyle BackColor="AliceBlue" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_LISTE_de_TOUS_les_PATIENTS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="LISTE_de_TOUS_les_PATIENT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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
        <asp:View ID="View4" runat="server">
            <table style="width: 929px; text-align: left">
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
    </asp:MultiView>
</asp:Content>
