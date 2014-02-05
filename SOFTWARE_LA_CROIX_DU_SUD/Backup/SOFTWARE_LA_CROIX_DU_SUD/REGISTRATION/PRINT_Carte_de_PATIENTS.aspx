<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/RECEPTIONNISTE.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="PRINT_Carte_de_PATIENTS.aspx.cs" Inherits="REGISTRATION_PATIENTS" Title="LE PATIENT" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" DisplayGroupTree="False" ReuseParameterValuesOnRefresh="True" ToolbarStyle-BackColor="DodgerBlue" ToolbarStyle-BorderColor="White" />
    <br />
    <asp:TextBox ID="TextBox_ID_PATIENT_parameter" runat="server" Visible="False"></asp:TextBox>
</asp:Content>

