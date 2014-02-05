<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CATEGORY_CHAMBRES.aspx.cs" Inherits="CATEGORY_CHAMBRES" Title="CATEGORY_CHAMBRES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_CATEG_CHAMBRE"
            DataSourceID="SqlDataSource_CATEGORY_CHAMBRES">
            <EditItemTemplate>
                ID_CATEG_CHAMBRE:
                <asp:Label ID="ID_CATEG_CHAMBRELabel1" runat="server" Text='<%# Eval("ID_CATEG_CHAMBRE") %>'>
                </asp:Label><br />
                DESCRIPTION:
                <asp:TextBox ID="DESCRIPTIONTextBox" runat="server" Text='<%# Bind("DESCRIPTION") %>'>
                </asp:TextBox><br />
                ID_SERVICES_RENDUS:
                <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                DESCRIPTION:
                <asp:TextBox ID="DESCRIPTIONTextBox" runat="server" Text='<%# Bind("DESCRIPTION") %>'>
                </asp:TextBox><br />
                ID_SERVICES_RENDUS:
                <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_CATEG_CHAMBRE:
                <asp:Label ID="ID_CATEG_CHAMBRELabel" runat="server" Text='<%# Eval("ID_CATEG_CHAMBRE") %>'>
                </asp:Label><br />
                DESCRIPTION:
                <asp:Label ID="DESCRIPTIONLabel" runat="server" Text='<%# Bind("DESCRIPTION") %>'>
                </asp:Label><br />
                ID_SERVICES_RENDUS:
                <asp:Label ID="ID_SERVICES_RENDUSLabel" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'>
                </asp:Label><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit">
                </asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete">
                </asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New">
                </asp:LinkButton>
            </ItemTemplate>
        </asp:FormView>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource_CATEGORY_CHAMBRES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CATEGORY_CHAMBRE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_CATEGORY_CHAMBRE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT ID_CATEG_CHAMBRE, DESCRIPTION, ID_SERVICES_RENDUS FROM CATEGORY_CHAMBRE"
            UpdateCommand="UPDATE_CATEGORY_CHAMBRE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_CATEG_CHAMBRE" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_CATEG_CHAMBRE" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRIPTION" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
    </center>
</asp:Content>

