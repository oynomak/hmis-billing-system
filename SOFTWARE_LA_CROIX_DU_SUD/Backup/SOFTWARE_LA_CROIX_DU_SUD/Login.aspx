<%@ Page Language="C#" MasterPageFile="~/MasterPage_LOGIN.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Page de Connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Login ID="Login1" runat="server" Width="480px" BackColor="AliceBlue" Font-Bold="True" PasswordRequiredErrorMessage="Le mot de passe est nécessaire!" UserNameRequiredErrorMessage="Le nom d'utilisateur est nécessaire" UserNameLabelText="Username:" FailureText="Vérifiez le mot de passe ou le nom de l'utilisateur et Réessayez!">
        <LayoutTemplate>
            <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
                <tr>
                    <td style="width: 421px; height: 162px">
                        <table border="0" cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bold; font-size: small; text-transform: capitalize; color: #ffffff; font-family: Verdana; background-color: dodgerblue">
                                    <span style="font-size: 1.2em; text-decoration: underline">Veuillez vous identifier
                                        S.V.P!<br />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="vertical-align: middle; text-align: left; height: 27px;">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="79px">Username:</asp:Label></td>
                                <td style="vertical-align: middle; width: 299px; text-align: left; height: 27px;">
                                    <asp:TextBox ID="UserName" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="185px"></asp:TextBox><asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator><img
                                            src="Images%20TMS%20MANZI/user.jpg" style="width: 20px; height: 19px" /></td>
                            </tr>
                            <tr>
                                <td align="right" style="vertical-align: middle; text-align: left">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="115px">Password:</asp:Label></td>
                                <td style="vertical-align: middle; width: 299px; text-align: left">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="185px"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator><img
                                            src="Images%20TMS%20MANZI/security.jpg" style="width: 18px; height: 18px" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: red; font-weight: bold; font-size: small; font-family: Verdana;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2" style="height: 24px">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Connecter" ValidationGroup="Login1" BackColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="DodgerBlue" Width="140px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>

