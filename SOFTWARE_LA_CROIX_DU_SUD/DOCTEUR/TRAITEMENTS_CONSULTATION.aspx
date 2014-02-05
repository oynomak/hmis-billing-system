<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true" CodeFile="TRAITEMENTS_CONSULTATION.aspx.cs" Inherits="DOCTEUR_TRAITEMENTS_CONSULTATION" Title="LES TRAITEMENTS DE CONSULTATION" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="No_TRAITEMENT_CONS"
            DataSourceID="SqlDataSource_TRAITEMENT_CONSULTATION">
            <EditItemTemplate>
                No_TRAITEMENT_CONS:
                <asp:Label ID="No_TRAITEMENT_CONSLabel1" runat="server" Text='<%# Eval("No_TRAITEMENT_CONS") %>'></asp:Label><br />
                ID_CONSULTATION:
                <asp:TextBox ID="ID_CONSULTATIONTextBox" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:TextBox><br />
                ID_SERVICES_RENDUS:
                <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:TextBox><br />
                PAYED:
                <asp:CheckBox ID="PAYEDCheckBox" runat="server" Checked='<%# Bind("PAYED") %>' /><br />
                RENDU:
                <asp:CheckBox ID="RENDUCheckBox" runat="server" Checked='<%# Bind("RENDU") %>' /><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                ID_CONSULTATION:
                <asp:TextBox ID="ID_CONSULTATIONTextBox" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:TextBox><br />
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
                No_TRAITEMENT_CONS:
                <asp:Label ID="No_TRAITEMENT_CONSLabel" runat="server" Text='<%# Eval("No_TRAITEMENT_CONS") %>'></asp:Label><br />
                ID_CONSULTATION:
                <asp:Label ID="ID_CONSULTATIONLabel" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:Label><br />
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
        <asp:SqlDataSource ID="SqlDataSource_TRAITEMENT_CONSULTATION" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_TRAITEMENT_CONSULTATION" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_TRAITEMENT_CONSULTATION" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT TRAITEMENT_CONSULTATION.* FROM TRAITEMENT_CONSULTATION"
            UpdateCommand="UPDATE_TRAITEMENT_CONSULTATION" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="No_TRAITEMENT_CONS" Type="Int32" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="No_TRAITEMENT_CONS" Type="Int32" />
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="PAYED" Type="Boolean" />
                <asp:Parameter Name="RENDU" Type="Boolean" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="PAYED" Type="Boolean" />
                <asp:Parameter Name="RENDU" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        
    </center>
</asp:Content>

