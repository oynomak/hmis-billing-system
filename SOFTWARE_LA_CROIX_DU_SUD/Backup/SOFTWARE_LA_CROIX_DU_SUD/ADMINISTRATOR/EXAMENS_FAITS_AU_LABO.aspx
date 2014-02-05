<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="EXAMENS_FAITS_AU_LABO.aspx.cs" Inherits="EXAMENS_FAITS_AU_LABO" Title="LES EXAMENS FAITS PAR LE LABO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <table style="font-weight: bold; font-size: x-small; text-transform: capitalize; width: 370px; color: dodgerblue; font-family: Verdana; text-align: left">
            <tr>
                <td>
                    CODE_EXAMEN:</td>
                <td style="width: 3px">
                    <asp:TextBox ID="TextBox_codExamen" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    ID_SERVICES_RENDUS:</td>
                <td style="width: 3px">
                    <asp:DropDownList ID="DropDownList_IDSERVICE_RENDU" runat="server" Width="155px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    EXAM_DESCRIPTION:</td>
                <td style="width: 3px">
                    <asp:DropDownList ID="DropDownList_EXAM_DESCRIPTION" runat="server" Width="155px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    ID_DEPART_LABO:
                </td>
                <td style="width: 3px">
                    <asp:DropDownList ID="DropDownList_ID_DEPART_LABO" runat="server" Width="155px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    UNITE_DE_MESURE:</td>
                <td style="width: 3px">
                    <asp:TextBox ID="TextBox_UNITE_DE_MESURE" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    VALEUR_NORMALE:</td>
                <td style="width: 3px">
                    <asp:TextBox ID="TextBox_VALEUR_NORMALE" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="DodgerBlue" Font-Bold="True" Font-Names="Verdana"
                        Font-Size="Medium" ForeColor="White" Text="AJOUTER" Width="131px" /></td>
                <td style="width: 3px">
                    <asp:Button ID="Button1" runat="server" BackColor="DodgerBlue" Font-Bold="True" Font-Names="Verdana"
                        Font-Size="Medium" ForeColor="White" Text="UPDATE" Width="131px" /></td>
            </tr>
        </table>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CODE_EXAMEN,ID_SERVICES_RENDUS"
            DataSourceID="SqlDataSource_EXAMEN_A_FAIRE" Width="408px">
            <EditItemTemplate>
                CODE_EXAMEN:
                <asp:Label ID="CODE_EXAMENLabel1" runat="server" Text='<%# Eval("CODE_EXAMEN") %>'></asp:Label><br />
                ID_SERVICES_RENDUS:
                <asp:Label ID="ID_SERVICES_RENDUSLabel1" runat="server" Text='<%# Eval("ID_SERVICES_RENDUS") %>'></asp:Label><br />
                EXAM_DESCRIPTION:
                <asp:TextBox ID="EXAM_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("EXAM_DESCRIPTION") %>'></asp:TextBox><br />
                ID_DEPART_LABO:
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_DEPARTMENT_LABO"
                    DataTextField="NOM_DEPART_LABO" DataValueField="ID_DEPART_LABO" SelectedValue='<%# Bind("ID_DEPART_LABO", "{0}") %>' Width="147px">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource_DEPARTMENT_LABO" runat="server"
                    ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_DEPART_LABO], [NOM_DEPART_LABO] FROM [LABO_DEPARTMENT]">
                </asp:SqlDataSource>
                <br />
                UNITE_DE_MESURE:
                <asp:TextBox ID="UNITE_DE_MESURETextBox" runat="server" Text='<%# Bind("UNITE_DE_MESURE") %>'></asp:TextBox><br />
                VALEUR_NORMALE:
                <asp:TextBox ID="VALEUR_NORMALETextBox" runat="server" Text='<%# Bind("VALEUR_NORMALE") %>'></asp:TextBox><br />
                PAYES:
                <asp:CheckBox ID="PAYESCheckBox" runat="server" Checked="True" /><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                &nbsp;<asp:TextBox ID="CODE_EXAMENTextBox" runat="server" Text='<%# Bind("CODE_EXAMEN") %>'></asp:TextBox><br />
                &nbsp;<asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:TextBox><br />
                &nbsp;<asp:TextBox ID="EXAM_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("EXAM_DESCRIPTION") %>'></asp:TextBox><br />
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_DEPART_LABO"
                    DataTextField="NOM_DEPART_LABO" DataValueField="ID_DEPART_LABO" SelectedValue='<%# Bind("ID_DEPART_LABO", "{0}") %>' Width="159px">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource_DEPART_LABO" runat="server"
                    ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_DEPART_LABO], [NOM_DEPART_LABO] FROM [LABO_DEPARTMENT]">
                </asp:SqlDataSource>
                &nbsp;<asp:TextBox ID="VALEUR_NORMALETextBox" runat="server" Text='<%# Bind("VALEUR_NORMALE") %>'></asp:TextBox><br />
                <asp:TextBox ID="UNITE_DE_MESURETextBox" runat="server" Text='<%# Bind("UNITE_DE_MESURE") %>'></asp:TextBox><br />
                &nbsp;<br />
                <asp:CheckBox ID="PAYESCheckBox" runat="server" Checked="True" /><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                CODE_EXAMEN:
                <asp:Label ID="CODE_EXAMENLabel" runat="server" Text='<%# Eval("CODE_EXAMEN") %>'></asp:Label><br />
                ID_SERVICES_RENDUS:
                <asp:Label ID="ID_SERVICES_RENDUSLabel" runat="server" Text='<%# Eval("ID_SERVICES_RENDUS") %>'></asp:Label><br />
                EXAM_DESCRIPTION:
                <asp:Label ID="EXAM_DESCRIPTIONLabel" runat="server" Text='<%# Bind("EXAM_DESCRIPTION") %>'></asp:Label><br />
                ID_DEPART_LABO:
                <asp:Label ID="ID_DEPART_LABOLabel" runat="server" Text='<%# Bind("ID_DEPART_LABO") %>'></asp:Label><br />
                UNITE_DE_MESURE:
                <asp:Label ID="UNITE_DE_MESURELabel" runat="server" Text='<%# Bind("UNITE_DE_MESURE") %>'></asp:Label><br />
                VALEUR_NORMALE:
                <asp:Label ID="VALEUR_NORMALELabel" runat="server" Text='<%# Bind("VALEUR_NORMALE") %>'></asp:Label><br />
                PAYES:
                <asp:CheckBox ID="PAYESCheckBox" runat="server" /><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">EXAMENS
                        FAITS AU LABO:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_EXAMEN_A_FAIRE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_EXAMENS_A_FAIRE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_EXAMENS_A_FAIRE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT EXAMENS_A_FAIRE.* FROM EXAMENS_A_FAIRE"
            UpdateCommand="UPDATE_EXAMENS_A_FAIRE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="EXAM_DESCRIPTION" Type="String" />
                <asp:Parameter Name="ID_DEPART_LABO" Type="Int32" />
                <asp:Parameter Name="UNITE_DE_MESURE" Type="String" />
                <asp:Parameter Name="VALEUR_NORMALE" Type="Double" />
                <asp:Parameter Name="PAYES" Type="Boolean" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="EXAM_DESCRIPTION" Type="String" />
                <asp:Parameter Name="ID_DEPART_LABO" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
    </center>
</asp:Content>

