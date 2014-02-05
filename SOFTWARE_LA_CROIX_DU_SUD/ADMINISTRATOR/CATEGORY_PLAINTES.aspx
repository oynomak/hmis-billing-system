<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CATEGORY_PLAINTES.aspx.cs" Inherits="ADMINISTRATOR_ADMINISTRATEURS_CATEGORY_PLAINTES" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_CATEG_PLAINTES"
        DataSourceID="SqlDataSource_CATEG_PLAINTES">
        <EditItemTemplate>
            ID_CATEG_PLAINTES:
            <asp:Label ID="ID_CATEG_PLAINTESLabel1" runat="server" Text='<%# Eval("ID_CATEG_PLAINTES") %>'>
            </asp:Label><br />
            CATEGORY_DESCRIPTION:
            <asp:TextBox ID="CATEGORY_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("CATEGORY_DESCRIPTION") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update">
            </asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            CATEGORY_DESCRIPTION:
            <asp:TextBox ID="CATEGORY_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("CATEGORY_DESCRIPTION") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert">
            </asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            ID_CATEG_PLAINTES:
            <asp:Label ID="ID_CATEG_PLAINTESLabel" runat="server" Text='<%# Eval("ID_CATEG_PLAINTES") %>'>
            </asp:Label><br />
            CATEGORY_DESCRIPTION:
            <asp:Label ID="CATEGORY_DESCRIPTIONLabel" runat="server" Text='<%# Bind("CATEGORY_DESCRIPTION") %>'>
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
        <HeaderTemplate>
            <h3>
                <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">CATEGORIES
                    DES PLAINTES:</span></h3>
        </HeaderTemplate>
    </asp:FormView></center>
    <asp:SqlDataSource ID="SqlDataSource_CATEG_PLAINTES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        DeleteCommand="DELETE FROM CATEGORY_PLAINTES WHERE (ID_CATEG_PLAINTES = @ID_CATEG_PLAINTES)"
        InsertCommand="INSERT INTO CATEGORY_PLAINTES(CATEGORY_DESCRIPTION) VALUES (@CATEGORY_DESCRIPTION)"
        SelectCommand="SELECT CATEGORY_PLAINTES.* FROM CATEGORY_PLAINTES" UpdateCommand="UPDATE CATEGORY_PLAINTES SET CATEGORY_DESCRIPTION = @CATEGORY_DESCRIPTION">
        <DeleteParameters>
            <asp:Parameter Name="ID_CATEG_PLAINTES" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="CATEGORY_DESCRIPTION" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="CATEGORY_DESCRIPTION" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

