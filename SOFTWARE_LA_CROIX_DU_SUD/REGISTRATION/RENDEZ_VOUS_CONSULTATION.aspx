<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/RECEPTIONNISTE.master" AutoEventWireup="true" CodeFile="RENDEZ_VOUS_CONSULTATION.aspx.cs" Inherits="RENDEZ_VOUS_CONSULTATION" Title="RENDEZ-VOUS DE CONSULTATION" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="text-align: left">
        <table style="width: 287px">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td>
                    CONFIRM :
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="292px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="424px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD ITEM >>" Font-Bold="True" /></td>
            </tr>
        </table>
        <asp:ListBox ID="ListBox1" runat="server" Height="120px" Width="253px" style="font-weight: bold; font-size: xx-small; overflow: visible; text-transform: capitalize; color: dodgerblue; font-family: Cambria; list-style-type: decimal; text-decoration: underline" SelectionMode="Multiple" AutoPostBack="True"></asp:ListBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:ListBox ID="ListBox2" runat="server" Height="122px" SelectionMode="Multiple"
            Width="329px" AppendDataBoundItems="True" AutoPostBack="True" ToolTip="-"></asp:ListBox>&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CONFIRM" />
        &nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="621px"></asp:TextBox></center>
</asp:Content>

