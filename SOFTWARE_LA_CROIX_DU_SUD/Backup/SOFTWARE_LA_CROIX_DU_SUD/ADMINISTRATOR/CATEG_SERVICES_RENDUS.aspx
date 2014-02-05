<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CATEG_SERVICES_RENDUS.aspx.cs" Inherits="CATEG_SERVICES_RENDUS" Title="CATEGORIE DE SERVICES RENDUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_CATEG_SER_RENDUS" DataSourceID="SqlDataSource_CATEG_SERVICES_RENDUS" AllowPaging="True">
            <EditItemTemplate>
                ID_CATEG_SER_RENDUS:
                <asp:Label ID="ID_CATEG_SER_RENDUSLabel1" runat="server" Text='<%# Eval("ID_CATEG_SER_RENDUS") %>'>
                </asp:Label><br />
                DESCRIPTION_SERVICE:
                <asp:TextBox ID="DESCRIPTION_SERVICETextBox" runat="server" Text='<%# Bind("DESCRIPTION_SERVICE") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                DESCRIPTION_SERVICE:
                <asp:TextBox ID="DESCRIPTION_SERVICETextBox" runat="server" Text='<%# Bind("DESCRIPTION_SERVICE") %>'></asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_CATEG_SER_RENDUS:
                <asp:Label ID="ID_CATEG_SER_RENDUSLabel" runat="server" Text='<%# Eval("ID_CATEG_SER_RENDUS") %>'></asp:Label><br />
                DESCRIPTION_SERVICE:
                <asp:Label ID="DESCRIPTION_SERVICELabel" runat="server" Text='<%# Bind("DESCRIPTION_SERVICE") %>'></asp:Label><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">CATEGORIES
                        DES SERVICES RENDUS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICES_RENDUS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CATEG_SERVICES_RENDUS" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_CATEG_SERVICES_RENDUS" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT CATEG_SERVICES_RENDUS.* FROM CATEG_SERVICES_RENDUS" UpdateCommand="UPDATE_CATEG_SERVICES_RENDUS"
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_CATEG_SER_RENDUS" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_CATEG_SER_RENDUS" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_SERVICE" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRIPTION_SERVICE" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
    </center>
</asp:Content>

