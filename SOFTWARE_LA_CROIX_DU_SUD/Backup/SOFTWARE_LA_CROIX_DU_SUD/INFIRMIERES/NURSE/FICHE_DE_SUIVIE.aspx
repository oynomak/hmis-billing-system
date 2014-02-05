<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/INFIRMIERS.master" AutoEventWireup="true" CodeFile="FICHE_DE_SUIVIE.aspx.cs" Inherits="INFIRMIERES_NURSE_FICHE_DE_SUIVIE" Title="FICHE DE SUIVIE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <center><asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_SUIVIE"
        DataSourceID="SqlDataSource_FICHE_DE_SUIVIE">
        <EditItemTemplate>
            ID_SUIVIE:
            <asp:Label ID="ID_SUIVIELabel1" runat="server" Text='<%# Eval("ID_SUIVIE") %>'></asp:Label><br />
            ID_HOSPITALISATION:
            <asp:TextBox ID="ID_HOSPITALISATIONTextBox" runat="server" Text='<%# Bind("ID_HOSPITALISATION") %>'>
            </asp:TextBox><br />
            DATE_SUIVIE:
            <asp:TextBox ID="DATE_SUIVIETextBox" runat="server" Text='<%# Bind("DATE_SUIVIE") %>'>
            </asp:TextBox><br />
            HEURE_SUIVIE:
            <asp:TextBox ID="HEURE_SUIVIETextBox" runat="server" Text='<%# Bind("HEURE_SUIVIE") %>'>
            </asp:TextBox><br />
            ID_SIGNES_VITAUX:
            <asp:TextBox ID="ID_SIGNES_VITAUXTextBox" runat="server" Text='<%# Bind("ID_SIGNES_VITAUX") %>'>
            </asp:TextBox><br />
            OBSERVATIONS:
            <asp:TextBox ID="OBSERVATIONSTextBox" runat="server" Text='<%# Bind("OBSERVATIONS") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update">
            </asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_HOSPITALISATION:
            <asp:TextBox ID="ID_HOSPITALISATIONTextBox" runat="server" Text='<%# Bind("ID_HOSPITALISATION") %>'>
            </asp:TextBox><br />
            DATE_SUIVIE:
            <asp:TextBox ID="DATE_SUIVIETextBox" runat="server" Text='<%# Bind("DATE_SUIVIE") %>'>
            </asp:TextBox><br />
            HEURE_SUIVIE:
            <asp:TextBox ID="HEURE_SUIVIETextBox" runat="server" Text='<%# Bind("HEURE_SUIVIE") %>'>
            </asp:TextBox><br />
            ID_SIGNES_VITAUX:
            <asp:TextBox ID="ID_SIGNES_VITAUXTextBox" runat="server" Text='<%# Bind("ID_SIGNES_VITAUX") %>'>
            </asp:TextBox><br />
            OBSERVATIONS:
            <asp:TextBox ID="OBSERVATIONSTextBox" runat="server" Text='<%# Bind("OBSERVATIONS") %>' Height="51px" Width="177px"></asp:TextBox><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert">
            </asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            ID_SUIVIE:
            <asp:Label ID="ID_SUIVIELabel" runat="server" Text='<%# Eval("ID_SUIVIE") %>'></asp:Label><br />
            ID_HOSPITALISATION:
            <asp:Label ID="ID_HOSPITALISATIONLabel" runat="server" Text='<%# Bind("ID_HOSPITALISATION") %>'>
            </asp:Label><br />
            DATE_SUIVIE:
            <asp:Label ID="DATE_SUIVIELabel" runat="server" Text='<%# Bind("DATE_SUIVIE") %>'>
            </asp:Label><br />
            HEURE_SUIVIE:
            <asp:Label ID="HEURE_SUIVIELabel" runat="server" Text='<%# Bind("HEURE_SUIVIE") %>'>
            </asp:Label><br />
            ID_SIGNES_VITAUX:
            <asp:Label ID="ID_SIGNES_VITAUXLabel" runat="server" Text='<%# Bind("ID_SIGNES_VITAUX") %>'>
            </asp:Label><br />
            OBSERVATIONS:
            <asp:Label ID="OBSERVATIONSLabel" runat="server" Text='<%# Bind("OBSERVATIONS") %>'>
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
    </asp:FormView></center>
    <asp:SqlDataSource ID="SqlDataSource_FICHE_DE_SUIVIE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        DeleteCommand="DELETE_FICHE_DE_SUIVIE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_FICHE_DE_SUIVIE"
        InsertCommandType="StoredProcedure" SelectCommand="SELECT FICHE_DE_SUIVIE.* FROM FICHE_DE_SUIVIE"
        UpdateCommand="UPDATE_FICHE_DE_SUIVIE" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="ID_SUIVIE" Type="Int32" />
            <asp:Parameter Name="ID_HOSPITALISATION" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID_SUIVIE" Type="Int32" />
            <asp:Parameter Name="ID_HOSPITALISATION" Type="String" />
            <asp:Parameter Name="DATE_SUIVIE" Type="DateTime" />
            <asp:Parameter Name="HEURE_SUIVIE" Type="String" />
            <asp:Parameter Name="ID_SIGNES_VITAUX" Type="Int32" />
            <asp:Parameter Name="OBSERVATIONS" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_HOSPITALISATION" Type="String" />
            <asp:Parameter Name="DATE_SUIVIE" Type="DateTime" />
            <asp:Parameter Name="HEURE_SUIVIE" Type="String" />
            <asp:Parameter Name="ID_SIGNES_VITAUX" Type="Int32" />
            <asp:Parameter Name="OBSERVATIONS" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

