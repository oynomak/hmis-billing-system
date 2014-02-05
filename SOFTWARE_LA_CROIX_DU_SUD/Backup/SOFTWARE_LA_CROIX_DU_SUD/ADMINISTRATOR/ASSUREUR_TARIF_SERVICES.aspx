<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="ASSUREUR_TARIF_SERVICES.aspx.cs" Inherits="ASSUREUR_TARIF_SERVICES" Title="TARIF SERVICE PAR ASSUREUR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center style="vertical-align: top; text-align: left">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_TARIF_ASSUREUR"
            DataSourceID="SqlDataSource_TARIF_DEL_ASSUREUR">
            <EditItemTemplate>
                <table style="width: 401px; font-weight: bold; font-size: x-small; text-transform: capitalize; color: infotext; font-family: Verdana;">
                    <tr>
                        <td>
                            No&nbsp;</td>
                        <td>
                <asp:Label ID="ID_TARIF_ASSUREURLabel1" runat="server" Text='<%# Eval("ID_TARIF_ASSUREUR") %>' style="text-align: right"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: x-small; text-transform: capitalize; color: infotext; font-family: Verdana">
                            ASSUREUR:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_ASSUREUR"
                                DataTextField="NOM_ASSUREUR" DataValueField="ID_ASSUREUR" SelectedValue='<%# Bind("ID_ASSUREUR", "{0}") %>'
                                Width="180px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SERVICES RENDUS:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_SERVICE_RENDU"
                                DataTextField="DESCRIPTION_SERV_RENDUS" DataValueField="ID_SERVICES_RENDUS" SelectedValue='<%# Bind("ID_SERVICES_RENDUS", "{0}") %>'
                                Width="186px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            MAXIMA A PAYER:</td>
                        <td>
                <asp:TextBox ID="MAXIMA_A_PAYERTextBox" runat="server" Text='<%# Bind("MAXIMA_A_PAYER") %>' style="vertical-align: middle; text-align: right" Height="8px"></asp:TextBox></td>
                    </tr>
                </table>
                &nbsp;<br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource_ASSUREUR" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_ASSUREUR], [NOM_ASSUREUR] FROM [ASSUREUR]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_SERVICE_RENDU" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_SERVICES_RENDUS], [DESCRIPTION_SERV_RENDUS], [ID_CATEG_SER_RENDUS] FROM [SERVICES_RENDUS]">
                            </asp:SqlDataSource>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="font-weight: bold; font-size: x-small; vertical-align: middle; text-transform: capitalize; color: infotext; font-family: Verdana; text-align: left">
                    <tr>
                        <td>
                            ID_ASSUREUR:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_ASSUREUR"
                                DataTextField="NOM_ASSUREUR" DataValueField="ID_ASSUREUR" SelectedValue='<%# Bind("ID_ASSUREUR", "{0}") %>'
                                Width="136px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SERVICES RENDUS:
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_SERVICE_RENDU"
                                DataTextField="DESCRIPTION_SERV_RENDUS" DataValueField="ID_SERVICES_RENDUS" SelectedValue='<%# Bind("ID_SERVICES_RENDUS", "{0}") %>'
                                Width="142px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            MAXIMA A PAYER:</td>
                        <td>
                <asp:TextBox ID="MAXIMA_A_PAYERTextBox" runat="server" Text='<%# Bind("MAXIMA_A_PAYER") %>'></asp:TextBox></td>
                    </tr>
                </table>
                &nbsp;<br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource_ASSUREUR" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_ASSUREUR], [NOM_ASSUREUR] FROM [ASSUREUR]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_SERVICE_RENDU" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT * FROM [SERVICES_RENDUS]"></asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;
                <table style="border-right: black thin solid; border-top: black thin solid; font-weight: bold;
                    font-size: x-small; text-transform: capitalize; border-left: black thin solid;
                    width: 356px; color: infotext; border-bottom: black thin solid; font-family: Verdana">
                    <tr>
                        <td style="font-weight: bold; font-size: x-small; text-transform: capitalize; width: 132px;
                            color: infotext; font-family: Verdana">
                            No:</td>
                        <td>
                <asp:Label ID="ID_TARIF_ASSUREURLabel" runat="server" Text='<%# Eval("ID_TARIF_ASSUREUR") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 132px; height: 14px">
                            assureur:</td>
                        <td style="height: 14px">
                <asp:Label ID="ID_ASSUREURLabel" runat="server" Text='<%# Bind("ID_ASSUREUR") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 132px">
                            service rendu:</td>
                        <td>
                <asp:Label ID="ID_SERVICES_RENDUSLabel" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 132px; height: 18px">
                            le prix unitaire:</td>
                        <td style="height: 18px">
                <asp:Label ID="MAXIMA_A_PAYERLabel" runat="server" Text='<%# Bind("MAXIMA_A_PAYER") %>' style="text-align: right" Width="129px"></asp:Label>frw</td>
                    </tr>
                </table>
                &nbsp;<br />
                &nbsp;
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" Width="51px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" Width="66px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" Width="57px"></asp:LinkButton>
            </ItemTemplate>
            <HeaderTemplate>
                <h6>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">TARIF
                        DES ASSUREURS:</span></h6>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_TARIF_DEL_ASSUREUR" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_TARIF_DEL_ASSUREUR" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_TARIF_DEL_ASSUREUR" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT TARIF_DEL_ASSUREUR.* FROM TARIF_DEL_ASSUREUR" UpdateCommand="UPDATE_TARIF_DEL_ASSUREUR"
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_TARIF_ASSUREUR" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_TARIF_ASSUREUR" Type="Int32" />
                <asp:Parameter Name="ID_ASSUREUR" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="MAXIMA_A_PAYER" Type="Decimal" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_ASSUREUR" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="MAXIMA_A_PAYER" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
    &nbsp;<br />
    &nbsp;<center>
        &nbsp;</center>
</asp:Content>

