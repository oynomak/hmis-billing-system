<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="PLAINTES.aspx.cs" Inherits="PLAINTES" Title="LES PLAINTES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CODE_PLAINTE"
            DataSourceID="SqlDataSource_PLAINTES">
            <EditItemTemplate>
                CODE_PLAINTE: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="CODE_PLAINTELabel1" runat="server" Text='<%# Eval("CODE_PLAINTE") %>'>
                </asp:Label><br />
                DESCRIPTION_PLAINTE:
                <asp:TextBox ID="DESCRIPTION_PLAINTETextBox" runat="server" Text='<%# Bind("DESCRIPTION_PLAINTE") %>'>
                </asp:TextBox><br />
                ID_CATEG_PLAINTES:
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_CATEG_PLAINTE"
                    DataTextField="CATEGORY_DESCRIPTION" DataValueField="ID_CATEG_PLAINTES" SelectedValue='<%# Bind("ID_CATEG_PLAINTES", "{0}") %>'
                    Width="171px">
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
                <asp:SqlDataSource ID="SqlDataSource_CATEG_PLAINTE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_CATEG_PLAINTES], [CATEGORY_DESCRIPTION] FROM [CATEGORY_PLAINTES]">
                </asp:SqlDataSource>
            </EditItemTemplate>
            <InsertItemTemplate>
                DESCRIPTION_PLAINTE:
                <asp:TextBox ID="DESCRIPTION_PLAINTETextBox" runat="server" Text='<%# Bind("DESCRIPTION_PLAINTE") %>'>
                </asp:TextBox><br />
                <br />
                ID_CATEG_PLAINTES:
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_CATEG_PLAINTE"
                    DataTextField="CATEGORY_DESCRIPTION" DataValueField="ID_CATEG_PLAINTES" SelectedValue='<%# Bind("ID_CATEG_PLAINTES", "{0}") %>'
                    Width="171px">
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
                <asp:SqlDataSource ID="SqlDataSource_CATEG_PLAINTE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_CATEG_PLAINTES], [CATEGORY_DESCRIPTION] FROM [CATEGORY_PLAINTES]">
                </asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                CODE_PLAINTE:
                <asp:Label ID="CODE_PLAINTELabel" runat="server" Text='<%# Eval("CODE_PLAINTE") %>'></asp:Label><br />
                DESCRIPTION_PLAINTE:
                <asp:Label ID="DESCRIPTION_PLAINTELabel" runat="server" Text='<%# Bind("DESCRIPTION_PLAINTE") %>'></asp:Label><br />
                ID_CATEG_PLAINTES:
                <asp:Label ID="ID_CATEG_PLAINTESLabel" runat="server" Text='<%# Bind("ID_CATEG_PLAINTES") %>'></asp:Label><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
            <PagerSettings Mode="NextPreviousFirstLast" NextPageText="Suivant" PreviousPageText="Precedent" />
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        PLAINTES:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_PLAINTES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_PLAINTES_TABLE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_PLAINTES_TABLE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT PLAINTES.* FROM PLAINTES"
            UpdateCommand="UPDATE_PLAINTES_TABLE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="CODE_PLAINTE" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_PLAINTE" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CODE_PLAINTE" Type="Int32" />
                <asp:Parameter Name="DESCRIPTION_PLAINTE" Type="String" />
                <asp:Parameter Name="ID_CATEG_PLAINTES" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRIPTION_PLAINTE" Type="String" />
                <asp:Parameter Name="ID_CATEG_PLAINTES" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp;
    </center>
    <br />
</asp:Content>

