<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true" CodeFile="Medecins_Page.aspx.cs" Inherits="Medecins_Page" Title="LA PAGE DES MEDECINS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="font-size: small; vertical-align: top; width: 800px; font-family: Broadway;
        text-align: left">
        <tr>
            <td colspan="5" style="font-size: medium; vertical-align: middle; height: 44px; text-align: center">
                <span style="font-size: 14pt">
                    <br />
                    Bienvenu dans notre service des Consultations</span></td>
        </tr>
        <tr>
            <td colspan="5" rowspan="2">
                <br />
                <span style="font-size: 12pt; font-family: Cambria">Ce service s'occupe des consultations,des
                    soins m�dicaux, des historiques de patients. Seul le m�decin ayant les privil�ges,
                    est habilit� pour utiliser cette page.<br />
                    <br />
                    Veuillez remplir tous les champs importants pour la bonne marche des enregistrements
                    des consultations et des traitements effectu�s sur le patient. Cela pourra aider
                    pour une bonne suite des traitements effectu�s sur le patient.<br />
                    <br />
                    Ces enregistrements seront utilis�s pour aider les autres services de proc�der avec
                    pr�cision.
                    <br />
                    Cela pour le bien de notre <strong>Polyclinique "Croix du Sud".</strong></span></td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <span style="font-size: 14pt; font-family: Cambria"><strong>Si vous voulez proc�der,
                    veuillez cliquer ici S.V.P!</strong> &nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium"
                        ForeColor="Blue" PostBackUrl="~/DOCTEUR/CONSULTATION.aspx" Text="Page m�decins"
                        Width="240px" /></span></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
    &nbsp; &nbsp;<br />
    &nbsp;&nbsp;
    &nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Verdana"
        Font-Size="X-Small" NavigateUrl="~/DOCTEUR/CONSULTATION.aspx" Width="153px" Visible="False">Proc�der</asp:HyperLink>
</asp:Content>

