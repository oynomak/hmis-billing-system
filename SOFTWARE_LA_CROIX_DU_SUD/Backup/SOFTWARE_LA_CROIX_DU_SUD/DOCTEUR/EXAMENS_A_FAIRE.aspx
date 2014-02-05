<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true" CodeFile="EXAMENS_A_FAIRE.aspx.cs" Inherits="DOCTEUR_EXAMENS_A_FAIRE" Title="EXAMENS A FAIRE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/DOCTEUR/CONSULTATION.aspx"
        Text="<<< Retour aux propositions d'examens" /></center>
    <center>
        &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1"
        DataTextField="NOM_DEPART_LABO" DataValueField="ID_DEPART_LABO" Width="143px">
    </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
        TypeName="DataSet_LA_CROIX_DU_SUDTableAdapters.LABO_DEPARTMENTTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID_DEPART_LABO" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOM_DEPART_LABO" Type="String" />
            <asp:Parameter Name="Original_ID_DEPART_LABO" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="NOM_DEPART_LABO" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="CODE_EXAMEN,ID_SERVICES_RENDUS" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:BoundField DataField="CODE_EXAMEN" HeaderText="CODE_EXAMEN" ReadOnly="True"
                SortExpression="CODE_EXAMEN" />
            <asp:BoundField DataField="ID_SERVICES_RENDUS" HeaderText="ID_SERVICES_RENDUS" ReadOnly="True"
                SortExpression="ID_SERVICES_RENDUS" />
            <asp:BoundField DataField="EXAM_DESCRIPTION" HeaderText="EXAM_DESCRIPTION" SortExpression="EXAM_DESCRIPTION" />
            <asp:BoundField DataField="ID_DEPART_LABO" HeaderText="ID_DEPART_LABO" SortExpression="ID_DEPART_LABO" />
            <asp:BoundField DataField="UNITE_DE_MESURE" HeaderText="UNITE_DE_MESURE" SortExpression="UNITE_DE_MESURE" />
            <asp:BoundField DataField="VALEUR_NORMALE" HeaderText="VALEUR_NORMALE" SortExpression="VALEUR_NORMALE" />
            <asp:CheckBoxField DataField="PAYES" HeaderText="PAYES" SortExpression="PAYES" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetData" TypeName="DataSet_LA_CROIX_DU_SUDTableAdapters.EXAMENS_A_FAIRETableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID_DEPART_LABO" QueryStringField="ID_DEPARTMENT"
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    </center>
</asp:Content>

