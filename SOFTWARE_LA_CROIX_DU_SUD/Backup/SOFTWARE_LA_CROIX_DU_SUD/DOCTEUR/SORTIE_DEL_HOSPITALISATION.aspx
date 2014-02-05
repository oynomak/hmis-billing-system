<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MEDECINS.master" AutoEventWireup="true" CodeFile="SORTIE_DEL_HOSPITALISATION.aspx.cs" Inherits="DOCTEUR_SORTIE_DEL_HOSPITALISATION" Title="PATIENTS HOSPITALISES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="ID_HOSPITALISATION" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ID_HOSPITALISATION" HeaderText="ID_HOSPITALISATION" ReadOnly="True"
                SortExpression="ID_HOSPITALISATION" />
            <asp:BoundField DataField="NOM" HeaderText="NOM" SortExpression="NOM" />
            <asp:BoundField DataField="PRENOM" HeaderText="PRENOM" SortExpression="PRENOM" />
            <asp:BoundField DataField="SEXE" HeaderText="SEXE" SortExpression="SEXE" />
            <asp:BoundField DataField="No_CHAMBRE" HeaderText="No_CHAMBRE" SortExpression="No_CHAMBRE" />
            <asp:BoundField DataField="ID_SERVICE" HeaderText="ID_SERVICE" SortExpression="ID_SERVICE" />
            <asp:BoundField DataField="DATE_D_ENTREE" HeaderText="DATE_D_ENTREE" SortExpression="DATE_D_ENTREE" />
            <asp:BoundField DataField="HEURE_D_ENTREE" HeaderText="HEURE_D_ENTREE" SortExpression="HEURE_D_ENTREE" />
            <asp:HyperLinkField DataNavigateUrlFields="ID_HOSPITALISATION" DataNavigateUrlFormatString="SORTIE_D_HOPITAL.aspx?ID_HOSPITALISATION={0}"
                HeaderText="SORTIES" Text="Sortir" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetData" TypeName="DataSet_LA_CROIX_DU_SUDTableAdapters.PATIENTS_HOSPITALISESTableAdapter" DataObjectTypeName="DataSet_LA_CROIX_DU_SUD+PATIENTS_HOSPITALISESDataTable" InsertMethod="Fill" UpdateMethod="Fill">
    </asp:ObjectDataSource>
    &nbsp;

</center>
</asp:Content>

