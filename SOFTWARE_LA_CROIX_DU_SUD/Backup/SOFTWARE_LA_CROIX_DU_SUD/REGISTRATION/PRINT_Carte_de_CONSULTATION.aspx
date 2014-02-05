<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/RECEPTIONNISTE.master" AutoEventWireup="true" CodeFile="PRINT_Carte_de_CONSULTATION.aspx.cs" Inherits="REGISTRATION_PRINT_Carte_de_CONSULTATION" Title="Untitled Page" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True"
        DisplayGroupTree="False" HasCrystalLogo="False" HasDrillUpButton="False" HasRefreshButton="True"
        Height="50px" ReportSourceID="CrystalReportSource1" ReuseParameterValuesOnRefresh="True"
        Width="350px" ToolbarStyle-BackColor="DodgerBlue" ToolbarStyle-BorderColor="White" />
    <br />
    <asp:TextBox ID="TextBox_ID_CONSULTATION" runat="server" Visible="False"></asp:TextBox>
</asp:Content>

