<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true"
    CodeFile="CATEGORY_PRODUITS.aspx.cs" Inherits="ADMINISTRATOR_ADMINISTRATEURS_CATEGORY_PRODUITS"
    Title="CATEGORIE DES PRODUITS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        &nbsp;</center>
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_CATEG_PRODUIT"
            DataSourceID="SqlDataSource_CATEGORY_PRODUITS">
            <EditItemTemplate>
                ID_CATEG_PRODUIT:
                <asp:Label ID="ID_CATEG_PRODUITLabel1" runat="server" Text='<%# Eval("ID_CATEG_PRODUIT") %>'>
                </asp:Label><br />
                DESCRIPTION_CATEGORY:
                <asp:TextBox ID="DESCRIPTION_CATEGORYTextBox" runat="server" Text='<%# Bind("DESCRIPTION_CATEGORY") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                DESCRIPTION_CATEGORY:
                <asp:TextBox ID="DESCRIPTION_CATEGORYTextBox" runat="server" Text='<%# Bind("DESCRIPTION_CATEGORY") %>'></asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_CATEG_PRODUIT:
                <asp:Label ID="ID_CATEG_PRODUITLabel" runat="server" Text='<%# Eval("ID_CATEG_PRODUIT") %>'></asp:Label><br />
                DESCRIPTION_CATEGORY:
                <asp:Label ID="DESCRIPTION_CATEGORYLabel" runat="server" Text='<%# Bind("DESCRIPTION_CATEGORY") %>'></asp:Label><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">CATEGORIE
                        DES PRODUITS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_CATEGORY_PRODUITS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CATEGORY_PRODUIT" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_CATEGORY_PRODUIT"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT CATEGORY_PRODUIT.* FROM CATEGORY_PRODUIT"
            UpdateCommand="UPDATE_CATEGORY_PRODUIT" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_CATEG_PRODUIT" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_CATEGORY" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_CATEG_PRODUIT" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_CATEGORY" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRIPTION_CATEGORY" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
