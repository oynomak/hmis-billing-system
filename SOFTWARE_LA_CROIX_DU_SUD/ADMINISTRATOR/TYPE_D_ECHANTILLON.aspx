<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="TYPE_D_ECHANTILLON.aspx.cs" Inherits="TYPE_D_ECHANTILLON" Title="LES TYPES D'ECHANTILLON" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_TYPE_ECHANTILLON"
            DataSourceID="SqlDataSource_TYPE_D_ECHANTILLON">
            <PagerSettings Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous" />
            <EditItemTemplate>
                ID_TYPE_ECHANTILLON:
                <asp:Label ID="ID_TYPE_ECHANTILLONLabel1" runat="server" Text='<%# Eval("ID_TYPE_ECHANTILLON") %>'>
                </asp:Label><br />
                TYPE_D_ECHANTILLON:
                <asp:TextBox ID="TYPE_D_ECHANTILLONTextBox" runat="server" Text='<%# Bind("TYPE_D_ECHANTILLON") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                TYPE_D_ECHANTILLON:
                <asp:TextBox ID="TYPE_D_ECHANTILLONTextBox" runat="server" Text='<%# Bind("TYPE_D_ECHANTILLON") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ID_TYPE_ECHANTILLON:
                <asp:Label ID="ID_TYPE_ECHANTILLONLabel" runat="server" Text='<%# Eval("ID_TYPE_ECHANTILLON") %>'>
                </asp:Label><br />
                TYPE_D_ECHANTILLON:
                <asp:Label ID="TYPE_D_ECHANTILLONLabel" runat="server" Text='<%# Bind("TYPE_D_ECHANTILLON") %>'>
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
                        TYPES D'ECHANTILLONS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_TYPE_D_ECHANTILLON" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_TYPE_D_ECHANTILLON" DeleteCommandType="StoredProcedure"
            InsertCommand="INSERT_INTO_TYPE_D_ECHANTILLON" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT TYPE_D_ECHANTILLON.* FROM TYPE_D_ECHANTILLON" UpdateCommand="UPDATE_TYPE_D_ECHANTILLON"
            UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_TYPE_ECHANTILLON" Type="Int32" />
                <asp:Parameter Name="TYPE_D_ECHANTILLON" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_TYPE_ECHANTILLON" Type="Int32" />
                <asp:Parameter Name="TYPE_D_ECHANTILLON" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="TYPE_D_ECHANTILLON" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

