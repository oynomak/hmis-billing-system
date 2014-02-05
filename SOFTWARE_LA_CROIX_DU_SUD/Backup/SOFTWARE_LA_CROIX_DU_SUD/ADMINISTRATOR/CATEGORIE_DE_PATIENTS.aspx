<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CATEGORIE_DE_PATIENTS.aspx.cs" Inherits="ADMINISTRATOR_ADMINISTRATEURS_CATEGORIE_DE_PATIENTS" Title="LES CATEGORIES DES PATIENTS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_CATEGORY_PATIENT"
            DataSourceID="SqlDataSource_CATEG_PATIENT">
            <EditItemTemplate>
                <br />
                <table style="width: 373px">
                    <tr>
                        <td style="width: 240px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CATEGORIE:" Width="222px"></asp:Label></td>
                        <td style="width: 302px">
                        </td>
                        <td>
                            <asp:Label ID="ID_CATEGORY_PATIENTLabel1" runat="server" Text='<%# Eval("ID_CATEGORY_PATIENT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 240px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DU PATIENT:"></asp:Label></td>
                        <td style="width: 302px">
                        </td>
                        <td>
                            <asp:TextBox ID="DESCRIPTION_PATIENTTextBox" runat="server" Text='<%# Bind("DESCRIPTION_PATIENT") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Update" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="31px" Text="Update"
                    Width="104px"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="31px" Text="Cancel"
                    Width="98px"></asp:LinkButton>
                <br />
            </EditItemTemplate>
            <InsertItemTemplate>
                <br />
                <br />
                <table style="width: 279px">
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DU PATIENT:" Width="193px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="DESCRIPTION_PATIENTTextBox" runat="server" Text='<%# Bind("DESCRIPTION_PATIENT") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                </table>
                &nbsp;
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Insert" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Insert"
                    Width="84px"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Cancel"
                    Width="88px"></asp:LinkButton>
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<table style="width: 399px">
                    <tr>
                        <td style="width: 236px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CATEGORIE:" Width="218px"></asp:Label></td>
                        <td>
                            <asp:Label ID="ID_CATEGORY_PATIENTLabel" runat="server" Text='<%# Eval("ID_CATEGORY_PATIENT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 236px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DU PATIENT:" Width="206px"></asp:Label></td>
                        <td>
                            <asp:Label ID="DESCRIPTION_PATIENTLabel" runat="server" Text='<%# Bind("DESCRIPTION_PATIENT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="Edit"
                    Width="75px"></asp:LinkButton>
                &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="DeleteButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="Delete"
                    Width="99px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="NewButton" runat="server" BackColor="#FFFFC0"
                    BorderStyle="Groove" CausesValidation="False" CommandName="New" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000"
                    Height="30px" Text="New" Width="82px"></asp:LinkButton>
                <br />
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">CATEGORIES
                        DES PATIENTS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_CATEG_PATIENT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CATEGORY_PATIENT" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_CATEGORY_PATIENT"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT CATEGORY_PATIENT.* FROM CATEGORY_PATIENT"
            UpdateCommand="UPDATE_CATEGORY_PATIENT" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_CATEGORY_PATIENT" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_CATEGORY_PATIENT" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_PATIENT" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRIPTION_PATIENT" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

