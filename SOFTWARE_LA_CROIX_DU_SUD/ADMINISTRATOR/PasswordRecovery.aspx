<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true"
    CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" Title="PASSWORD RECOVERY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <strong><span style="font-size: 16pt; color: #0099cc; font-family: Verdana; text-decoration: underline">
        </span></strong>&nbsp;</center>
    <center>
        <strong><span style=" font-size:x-small; color: #0099cc; font-family: Verdana; text-decoration: underline">
            AVEZ-VOUS OUBLIE VOTRE MOT DE PASSE?</span></strong></center>
    <center>
        &nbsp;</center>
    <center>
        <strong><span style="font-size: x-small; color: #0099cc; font-family: Verdana; text-decoration: underline">
        </span></strong>&nbsp;</center>
    <center>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerLabelText="Réponse:"
            AnswerRequiredErrorMessage="La Réponse est requise." BackColor="#EFF3FB" BorderColor="#B5C7DE"
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana"
            Font-Size="0.8em" Height="94px" QuestionInstructionText="Répondez à la question secrète pour avoir votre mot de passe"
            QuestionLabelText="Question Secrète:" QuestionTitleText=" Confirmation de Votre Identité"
            SubmitButtonText="VALIDER" Width="385px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <SuccessTextStyle Font-Bold="True" ForeColor="#507CD1" />
            <ValidatorTextStyle Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" />
            <TextBoxStyle Font-Bold="True" Font-Size="Medium" ForeColor="DodgerBlue" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                Font-Underline="True" ForeColor="White" />
            <SubmitButtonStyle BackColor="CornflowerBlue" BorderColor="White" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="AliceBlue" />
            <MailDefinition From="oynomak@hotmail.com" IsBodyHtml="True" Priority="High" Subject="Your new temporary password">
            </MailDefinition>
            <UserNameTemplate>
                <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="width: 385px; height: 103px">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: large; color: white;
                                        font-family: Verdana; background-color: #507cd1; text-decoration: underline">
                                        <h5>
                                            Forgot Your Password?</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: black; font-style: italic">
                                        Enter your User Name to receive your password.</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Size="X-Small">User Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="DodgerBlue"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="User Name is required." Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
                                            ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" BackColor="CornflowerBlue" BorderColor="White"
                                            BorderStyle="Solid" BorderWidth="1px" CommandName="Submit" Font-Bold="True" Font-Names="Verdana"
                                            Font-Size="X-Small" ForeColor="White" Text="VALIDER" ValidationGroup="PasswordRecovery1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
        </asp:PasswordRecovery>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <strong><span style="font-size:x-small; color: #0099cc; font-family: Verdana; text-decoration: underline">
            VOULEZ-VOUS CHANGER VOTRE MOT DE PASSE?</span></strong></center>
    <center>
        <strong><span style="font-size: 10pt; color: #0099cc; font-family: Verdana; text-decoration: underline">
        </span></strong>&nbsp;&nbsp;<asp:ChangePassword ID="ChangePassword1" runat="server"
            BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" Height="167px"
            Width="479px">
            <CancelButtonStyle BackColor="CornflowerBlue" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1" />
            <ChangePasswordButtonStyle BackColor="CornflowerBlue" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" />
            <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                Font-Underline="True" ForeColor="White" />
            <TextBoxStyle Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" />
            <ChangePasswordTemplate>
                <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="width: 479px; height: 184px">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: large; color: white;
                                        font-family: Verdana; background-color: #507cd1; text-decoration: underline">
                                        <span style="font-size: 11pt">Change Your Password</span></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 242px">
                                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword" Font-Size="X-Small">Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="CurrentPassword" runat="server" Font-Bold="True" Font-Names="Verdana"
                                            Font-Size="X-Small" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                            ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 242px">
                                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword" Font-Size="X-Small">New Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="NewPassword" runat="server" Font-Bold="True" Font-Names="Verdana"
                                            Font-Size="X-Small" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                            ErrorMessage="New Password is required." ToolTip="New Password is required."
                                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 242px">
                                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword" Font-Size="X-Small">Confirm New Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="ConfirmNewPassword" runat="server" Font-Bold="True" Font-Names="Verdana"
                                            Font-Size="X-Small" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                            ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required."
                                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                            ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                                            ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 242px">
                                        <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="CornflowerBlue"
                                            BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="ChangePassword"
                                            Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White" Text="Change Password"
                                            ValidationGroup="ChangePassword1" />
                                    </td>
                                    <td>
                                        <asp:Button ID="CancelPushButton" runat="server" BackColor="CornflowerBlue" BorderColor="#507CD1"
                                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Cancel"
                                            Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White" Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ChangePasswordTemplate>
        </asp:ChangePassword>
    </center>
</asp:Content>
