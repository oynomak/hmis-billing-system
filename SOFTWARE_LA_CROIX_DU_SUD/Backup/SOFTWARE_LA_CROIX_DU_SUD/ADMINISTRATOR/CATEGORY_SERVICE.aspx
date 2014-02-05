<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CATEGORY_SERVICE.aspx.cs" Inherits="ADMINISTRATOR_ADMINISTRATEURS_CATEG_SERVICE" Title="CATEGORIE DES SERVICES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        &nbsp;</center>
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_CATEG_SERVICE"
            DataSourceID="SqlDataSource_CATEG_SERVICE">
            <EditItemTemplate>
                ID_CATEG_SERVICE:
                <asp:Label ID="ID_CATEG_SERVICELabel1" runat="server" Text='<%# Eval("ID_CATEG_SERVICE") %>'>
                </asp:Label><br />
                NOM_CATEG_SERVICE:
                <asp:TextBox ID="NOM_CATEG_SERVICETextBox" runat="server" Text='<%# Bind("NOM_CATEG_SERVICE") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                NOM_CATEG_SERVICE:
                <asp:TextBox ID="NOM_CATEG_SERVICETextBox" runat="server" Text='<%# Bind("NOM_CATEG_SERVICE") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_CATEG_SERVICE:
                <asp:Label ID="ID_CATEG_SERVICELabel" runat="server" Text='<%# Eval("ID_CATEG_SERVICE") %>'>
                </asp:Label><br />
                NOM_CATEG_SERVICE:
                <asp:Label ID="NOM_CATEG_SERVICELabel" runat="server" Text='<%# Bind("NOM_CATEG_SERVICE") %>'>
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
            <PagerSettings Mode="NextPreviousFirstLast" NextPageText="Suivant" PreviousPageText="Precedent" />
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">CATEGORIE
                        DES SERVICES:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CATEGORY_SERVICE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_CATEGORY_SERVICE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT CATEGORY_SERVICE.* FROM CATEGORY_SERVICE"
            UpdateCommand="UPDATE_CATEGORY_SERVICE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_CATEG_SERVICE" Type="Int32" />
                <asp:Parameter Name="NOM_CATEG_SERVICE" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_CATEG_SERVICE" Type="Int32" />
                <asp:Parameter Name="NOM_CATEG_SERVICE" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="NOM_CATEG_SERVICE" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

