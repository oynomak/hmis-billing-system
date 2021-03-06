<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CARTE_DU_PATIENT.aspx.cs" Inherits="REGISTRATION_CARTE_DU_PATIENT" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>La carte du patient</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
</head>
<body style="vertical-align: top; background-color: #f0f8ff; text-align: center">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                </td>
                <td style="width: 3px; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid; background-color: #ffffff;">
                    <asp:Button ID="Button_RETOUR_BACK" runat="server" BackColor="White" Font-Bold="True" Font-Names="Cambria"
                        Font-Underline="True" ForeColor="DodgerBlue" PostBackUrl="~/REGISTRATION/Add_PATIENTS.aspx"
                        Text="Retour à la page précédente >>>" OnClick="Button_RETOUR_BACK_Click" /></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 3px; background-color: #ffffff; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid; text-align: left;">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True"
                        DisplayGroupTree="False" ReuseParameterValuesOnRefresh="True" ToolbarStyle-BackColor="DodgerBlue"
                        ToolbarStyle-BorderColor="White" HasCrystalLogo="False" HasDrillUpButton="False" HasExportButton="False" HasPageNavigationButtons="False" HasRefreshButton="True" HasToggleGroupTreeButton="False" HasViewList="False" Height="50px" ReportSourceID="CrystalReportSource1" Width="350px" />
                    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                        <Report FileName="REPORTS\CrystalReport_CARTE_de_PATIENT.rpt">
                        </Report>
                    </CR:CrystalReportSource>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 3px; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid; background-color: #ffffff;">
                    <asp:TextBox ID="TextBox_ID_PATIENT" runat="server" Visible="False"></asp:TextBox></td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
