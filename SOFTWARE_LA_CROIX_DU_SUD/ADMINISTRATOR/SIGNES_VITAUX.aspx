<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="SIGNES_VITAUX.aspx.cs" Inherits="SIGNES_VITAUX" Title="LES SIGNES VITAUX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        &nbsp;<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_SIGNES_VITAUX"
            DataSourceID="SqlDataSource_SIGNES_VITAUX">
            <EditItemTemplate>
                ID_SIGNES_VITAUX:
                <asp:Label ID="ID_SIGNES_VITAUXLabel1" runat="server" Text='<%# Eval("ID_SIGNES_VITAUX") %>'>
                </asp:Label><br />
                SIGNES_VITAUX:
                <asp:TextBox ID="SIGNES_VITAUXTextBox" runat="server" Text='<%# Bind("SIGNES_VITAUX") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                SIGNES_VITAUX:
                <asp:TextBox ID="SIGNES_VITAUXTextBox" runat="server" Text='<%# Bind("SIGNES_VITAUX") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_SIGNES_VITAUX:
                <asp:Label ID="ID_SIGNES_VITAUXLabel" runat="server" Text='<%# Eval("ID_SIGNES_VITAUX") %>'>
                </asp:Label><br />
                SIGNES_VITAUX:
                <asp:Label ID="SIGNES_VITAUXLabel" runat="server" Text='<%# Bind("SIGNES_VITAUX") %>'>
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
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        SIGNES VITAUX:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_SIGNES_VITAUX" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_SIGNES_VITAUX" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_SIGNES_VITAUX"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT SIGNES_VITAUX.* FROM SIGNES_VITAUX"
            UpdateCommand="UPDATE_SIGNES_VITAUX" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_SIGNES_VITAUX" Type="Int32" />
                <asp:Parameter Name="SIGNES_VITAUX" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_SIGNES_VITAUX" Type="Int32" />
                <asp:Parameter Name="SIGNES_VITAUX" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="SIGNES_VITAUX" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

