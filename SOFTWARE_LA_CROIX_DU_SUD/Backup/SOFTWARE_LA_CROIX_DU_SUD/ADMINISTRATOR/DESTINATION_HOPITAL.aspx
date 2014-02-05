<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="DESTINATION_HOPITAL.aspx.cs" Inherits="DESTINATION_HOPITAL" Title="L'HOPITAL DE DESTINATION" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    &nbsp;<center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_DESTINATION"
            DataSourceID="SqlDataSource_DESTINATION_HOSPITAL">
            <EditItemTemplate>
                ID_DESTINATION:
                <asp:Label ID="ID_DESTINATIONLabel1" runat="server" Text='<%# Eval("ID_DESTINATION") %>'>
                </asp:Label><br />
                NOM_DESTINATION:
                <asp:TextBox ID="NOM_DESTINATIONTextBox" runat="server" Text='<%# Bind("NOM_DESTINATION") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                NOM_DESTINATION:
                <asp:TextBox ID="NOM_DESTINATIONTextBox" runat="server" Text='<%# Bind("NOM_DESTINATION") %>'></asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_DESTINATION:
                <asp:Label ID="ID_DESTINATIONLabel" runat="server" Text='<%# Eval("ID_DESTINATION") %>'></asp:Label><br />
                NOM_DESTINATION:
                <asp:Label ID="NOM_DESTINATIONLabel" runat="server" Text='<%# Bind("NOM_DESTINATION") %>'></asp:Label><br />
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
                        HOPITAUX COLLABORANTS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_DESTINATION_HOSPITAL" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_DESTINATION_TRANSFERT" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_DESTINATION_TRANSFERT" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT DESTINATION_TRANSFERT.* FROM DESTINATION_TRANSFERT" UpdateCommand="UPDATE_DESTINATION_TRANSFERT"
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_DESTINATION" Type="Int32" />
                <asp:Parameter Name="NOM_DESTINATION" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_DESTINATION" Type="Int32" />
                <asp:Parameter Name="NOM_DESTINATION" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="NOM_DESTINATION" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
    <center>
        &nbsp;</center>
</asp:Content>

