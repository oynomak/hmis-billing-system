<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/INFIRMIERS.master" AutoEventWireup="true" CodeFile="TRAITEMENT_SUIVIE.aspx.cs" Inherits="INFIRMIERES_NURSE_TRAITEMENT_SUIVIE" Title="TRAITEMENTS DE SUIVIE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="No_TRAITEMENT_SUIVIE" DataSourceID="SqlDataSource_TRAITEMENT_SUIVIE" Width="334px">
        <EditItemTemplate>
            No_TRAITEMENT_SUIVIE:
            <asp:Label ID="No_TRAITEMENT_SUIVIELabel1" runat="server" Text='<%# Eval("No_TRAITEMENT_SUIVIE") %>'>
            </asp:Label><br />
            ID_SUIVIE:
            <asp:TextBox ID="ID_SUIVIETextBox" runat="server" Text='<%# Bind("ID_SUIVIE") %>'>
            </asp:TextBox><br />
            ID_SERVICES_RENDUS:
            <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'>
            </asp:TextBox><br />
            PAYED:
            <asp:CheckBox ID="PAYEDCheckBox" runat="server" Checked='<%# Bind("PAYED") %>' /><br />
            RENDU:
            <asp:CheckBox ID="RENDUCheckBox" runat="server" Checked='<%# Bind("RENDU") %>' /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update">
            </asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_SUIVIE:
            <asp:TextBox ID="ID_SUIVIETextBox" runat="server" Text='<%# Bind("ID_SUIVIE") %>'></asp:TextBox><br />
            ID_SERVICES_RENDUS:
            <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:TextBox><br />
            PAYED:
            <asp:CheckBox ID="PAYEDCheckBox" runat="server" Checked='<%# Bind("PAYED") %>' /><br />
            RENDU:
            <asp:CheckBox ID="RENDUCheckBox" runat="server" Checked='<%# Bind("RENDU") %>' /><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert"></asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel"></asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            No_TRAITEMENT_SUIVIE:
            <asp:Label ID="No_TRAITEMENT_SUIVIELabel" runat="server" Text='<%# Eval("No_TRAITEMENT_SUIVIE") %>'></asp:Label><br />
            ID_SUIVIE:
            <asp:Label ID="ID_SUIVIELabel" runat="server" Text='<%# Bind("ID_SUIVIE") %>'></asp:Label><br />
            ID_SERVICES_RENDUS:
            <asp:Label ID="ID_SERVICES_RENDUSLabel" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:Label><br />
            PAYED:
            <asp:CheckBox ID="PAYEDCheckBox" runat="server" Checked='<%# Bind("PAYED") %>' Enabled="false" /><br />
            RENDU:
            <asp:CheckBox ID="RENDUCheckBox" runat="server" Checked='<%# Bind("RENDU") %>' Enabled="false" /><br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit"></asp:LinkButton>
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Delete"></asp:LinkButton>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Text="New"></asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_TRAITEMENT_SUIVIE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_TRAITEMENT_SUIVIE" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_TRAITEMENT_SUIVIE" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT TRAITEMENT_SUIVIE.* FROM TRAITEMENT_SUIVIE" UpdateCommand="UPDATE_TRAITEMENT_SUIVIE"
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="No_TRAITEMENT_SUIVIE" Type="Int32" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="No_TRAITEMENT_SUIVIE" Type="Int32" />
                <asp:Parameter Name="ID_SUIVIE" Type="Int32" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="PAYED" Type="Boolean" />
                <asp:Parameter Name="RENDU" Type="Boolean" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_SUIVIE" Type="Int32" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="PAYED" Type="Boolean" />
                <asp:Parameter Name="RENDU" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

