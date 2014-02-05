<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FACTURE_des_EXAMENS_a_FAIRE.aspx.cs" Inherits="CAISSIERE_FACTURE_des_EXAMENS_a_FAIRE" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
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
                <td style="width: 3px; text-align: right; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid; background-color: #ffffff;">
                    </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 3px; background-color: #ffffff; text-align: left; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid;">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True"
                        DisplayGroupTree="False" HasCrystalLogo="False" HasDrillUpButton="False" HasExportButton="False"
                        HasGotoPageButton="False" HasPageNavigationButtons="False" HasSearchButton="False"
                        HasToggleGroupTreeButton="False" HasViewList="False" Height="50px" ReportSourceID="CrystalReportSource1"
                        Width="350px" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 3px; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid; background-color: #ffffff; text-align: right;">
                    <asp:TextBox ID="TextBox_ID_CONSULTATION" runat="server" Visible="False"></asp:TextBox></td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
