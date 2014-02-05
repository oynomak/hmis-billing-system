<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/CONFIG_SYSTEM.master" AutoEventWireup="true" CodeFile="Page_d_Accueil.aspx.cs" Inherits="Page_d_Accueil" Title="LA PAGE D'ACCUEIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style=" background-color:#f0f8ff">
        &nbsp;</center>
    <center style=" background-color:#f0f8ff">
        &nbsp;</center>
    <center style=" background-color:#f0f8ff">
        &nbsp;</center>
    <center style=" background-color:#f0f8ff">
        <table style="width: 633px; height: 319px;">
        <tr>
            <td style="width: 300px">
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align: center"
                    Text="RECEPTION " Width="217px" CausesValidation="False" PostBackUrl="~/REGISTRATION/Reception_Page.aspx" /><br />
                &nbsp; &nbsp;&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align: center"
                    Text="MEDECINS" Width="217px" CausesValidation="False" PostBackUrl="~/DOCTEUR/Medecins_Page.aspx" /><br />
                &nbsp; &nbsp;&nbsp;</td>
            <td style="width: 3px">
                <asp:Button ID="Button5" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align: center"
                    Text="LABORATOIRE" Width="217px" CausesValidation="False" PostBackUrl="~/LABORANTIN/Laboratory_Page.aspx" /></td>
        </tr>
        <tr>
            <td style="width: 300px">
                <br />
                <asp:Button ID="Button3" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align:center;"
                    Text="NURSES" Width="217px" CausesValidation="False" PostBackUrl="~/INFIRMIERES/Nurses_Page.aspx" /><br />
                &nbsp; &nbsp;&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button4" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align: center"
                    Text="FINANCE" Width="217px" CausesValidation="False" PostBackUrl="~/CAISSIERE/Finance_Page.aspx" /><br />
                &nbsp; &nbsp;&nbsp;</td>
            <td style="width: 3px">
                <asp:Button ID="Button6" runat="server" BackColor="DodgerBlue" BorderColor="White"
                    BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
                    ForeColor="White" Height="76px" Style="vertical-align: middle; text-align: center"
                    Text="ADMINISTRATION" Width="217px" CausesValidation="False" PostBackUrl="~/ADMINISTRATOR/Administration_Page.aspx" /></td>
        </tr>
    </table>
    </center>
</asp:Content>

