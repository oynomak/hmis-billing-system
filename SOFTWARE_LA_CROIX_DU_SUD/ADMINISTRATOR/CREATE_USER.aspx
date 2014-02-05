<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true"
    CodeFile="CREATE_USER.aspx.cs" Inherits="CREATE_USER" Title="CREATE USER PAGE" %>

<script runat="server">
    public void ActivateStep(Object sender, EventArgs e)
    {
        string kam = CreateUserWizard2.UserName.ToString();
        ListBox1.DataSource = Roles.GetAllRoles();
        ListBox1.DataBind();
        int nbre = ListBox1.Items.Count;
        for (int i = 0; i < nbre; i++)
        {
            ListBox2.Items.Add(ListBox1.Items[i].Text);
        }
        TextBox1.Text = kam;
    }

    public void DeactivateStep(Object sender, EventArgs e)
    {
        string kam = CreateUserWizard2.UserName.ToString();
        TextBox1.Text = kam;
        Roles.AddUserToRole(TextBox1.Text, ListBox2.SelectedItem.Text);
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" ContinueDestinationPageUrl="~/Page_d_Accueil.aspx" LoginCreatedUser="False">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" Title="Cr&#233;er un nouveau compte">
                <ContentTemplate>
                    <table border="0">
                        <tr>
                            <td align="center" colspan="2">
                                <strong><span style="font-size: 14pt; text-decoration: underline">Créer votre compte
                                    ici:</span></strong><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue" Width="71px">User Name:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" Width="181px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue">Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                                    Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue">Confirm Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                    ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                    ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue">E-mail:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" Width="179px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                    ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue">Security Question:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" Width="179px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                    ErrorMessage="Security question is required." ToolTip="Security question is required."
                                    ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="Small" ForeColor="DodgerBlue">Security Answer:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" Width="178px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                    ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                                    ValidationGroup="CreateUserWizard2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                    ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                    ValidationGroup="CreateUserWizard2"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: red">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:WizardStep runat="server" Title="Choisis le role" OnActivate="ActivateStep"
                OnDeactivate="DeactivateStep" StepType="Step">
                <strong><span style="text-decoration: underline">Choisis le role:<br />
                </span></strong>
                <br />
                <asp:ListBox ID="ListBox2" runat="server" Height="158px" Width="151px"></asp:ListBox>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:ListBox ID="ListBox1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                    Height="146px" Width="152px" Visible="False"></asp:ListBox>
            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
        <CreateUserButtonStyle BackColor="White" Font-Bold="True" Font-Size="Small" ForeColor="DodgerBlue" />
    </asp:CreateUserWizard>
    <br />
    <br />
    <center>
        &nbsp;</center>
</asp:Content>
