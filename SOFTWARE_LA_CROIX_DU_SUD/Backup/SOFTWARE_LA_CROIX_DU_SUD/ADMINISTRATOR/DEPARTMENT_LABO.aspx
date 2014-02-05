<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="DEPARTMENT_LABO.aspx.cs" Inherits="DEPARTMENT_LABO" Title="LES DEPARTEMENTS DE LABO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <center>
        &nbsp;
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_DEPART_LABO" DataSourceID="SqlDataSource_LABO_DEPARTMENT" AllowPaging="True">
            <EditItemTemplate>
                ID_DEPART_LABO:
                <asp:Label ID="ID_DEPART_LABOLabel1" runat="server" Text='<%# Eval("ID_DEPART_LABO") %>'>
                </asp:Label><br />
                NOM_DEPART_LABO:
                <asp:TextBox ID="NOM_DEPART_LABOTextBox" runat="server" Text='<%# Bind("NOM_DEPART_LABO") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                NOM_DEPART_LABO:
                <asp:TextBox ID="NOM_DEPART_LABOTextBox" runat="server" Text='<%# Bind("NOM_DEPART_LABO") %>'></asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_DEPART_LABO:
                <asp:Label ID="ID_DEPART_LABOLabel" runat="server" Text='<%# Eval("ID_DEPART_LABO") %>'></asp:Label><br />
                NOM_DEPART_LABO:
                <asp:Label ID="NOM_DEPART_LABOLabel" runat="server" Text='<%# Bind("NOM_DEPART_LABO") %>'></asp:Label><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        DEPARTEMENTS DE LABO:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_LABO_DEPARTMENT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_LABO_DEPARTMENT" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_LABO_DEPARTMENT"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT LABO_DEPARTMENT.* FROM LABO_DEPARTMENT"
            UpdateCommand="UPDATE_LABO_DEPARTMENT" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_DEPART_LABO" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_DEPART_LABO" Type="Int32" />
                <asp:Parameter Name="NOM_DEPART_LABO" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="NOM_DEPART_LABO" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

