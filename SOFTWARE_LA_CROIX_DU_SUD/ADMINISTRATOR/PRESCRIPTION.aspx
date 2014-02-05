<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true"
    CodeFile="PRESCRIPTION.aspx.cs" Inherits="ADMINISTRATOR_ADMINISTRATEURS_PRESCRIPTION"
    Title="PRESCRIPTIONS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_ID_SERVICE"
            DataTextField="NOM_SERVICE" DataValueField="ID_SERVICE" Width="167px" Visible="False">
        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource_ID_SERVICE" runat="server"
            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            SelectCommand="SELECT SERVICES.* FROM SERVICES WHERE (ID_CATEG_SERVICE = 1)"></asp:SqlDataSource>
    </center>
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="No_PRESCRIPTION"
            DataSourceID="SqlDataSource_PRESCRIPTIONS">
            <EditItemTemplate>
                No_PRESCRIPTION:
                <asp:Label ID="No_PRESCRIPTIONLabel1" runat="server" Text='<%# Eval("No_PRESCRIPTION") %>'>
                </asp:Label><br />
                PRESCRIPTION_DESCRIPTION:
                <asp:TextBox ID="PRESCRIPTION_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("PRESCRIPTION_DESCRIPTION") %>'>
                </asp:TextBox><br />
                ID_CATEG_DIAGNOSTIC:
                <asp:TextBox ID="ID_CATEG_DIAGNOSTICTextBox" runat="server" Text='<%# Bind("ID_CATEG_DIAGNOSTIC") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                PRESCRIPTION_DESCRIPTION:
                <asp:TextBox ID="PRESCRIPTION_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("PRESCRIPTION_DESCRIPTION") %>'>
                </asp:TextBox><br />
                ID_CATEG_DIAGNOSTIC:
                <asp:TextBox ID="ID_CATEG_DIAGNOSTICTextBox" runat="server" Text='<%# Bind("ID_CATEG_DIAGNOSTIC") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                No_PRESCRIPTION:
                <asp:Label ID="No_PRESCRIPTIONLabel" runat="server" Text='<%# Eval("No_PRESCRIPTION") %>'>
                </asp:Label><br />
                PRESCRIPTION_DESCRIPTION:
                <asp:Label ID="PRESCRIPTION_DESCRIPTIONLabel" runat="server" Text='<%# Bind("PRESCRIPTION_DESCRIPTION") %>'>
                </asp:Label><br />
                ID_CATEG_DIAGNOSTIC:
                <asp:Label ID="ID_CATEG_DIAGNOSTICLabel" runat="server" Text='<%# Bind("ID_CATEG_DIAGNOSTIC") %>'>
                </asp:Label><br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New">
                </asp:LinkButton>
            </ItemTemplate>
        </asp:FormView>
        &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource_PRESCRIPTIONS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>" InsertCommand="INSERT_INTO_PRESCRIPTION"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT No_PRESCRIPTION, PRESCRIPTION_DESCRIPTION, ID_CATEG_DIAGNOSTIC FROM PRESCRIPTION">
            <InsertParameters>
                <asp:Parameter Name="PRESCRIPTION_DESCRIPTION" Type="String" />
                <asp:Parameter Name="ID_CATEG_DIAGNOSTIC" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
