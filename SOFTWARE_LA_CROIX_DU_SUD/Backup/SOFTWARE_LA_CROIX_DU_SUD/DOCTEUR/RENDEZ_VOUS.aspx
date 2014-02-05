<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true" CodeFile="RENDEZ_VOUS.aspx.cs" Inherits="DOCTEUR_RENDEZ_VOUS" Title="LES RENDEZ-VOUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
        Font-Underline="True" ForeColor="#FF8080" Text="LA DATE:"></asp:Label>
    <asp:TextBox ID="TextBox_DATE_AUJOURDHUI" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Small" ForeColor="DodgerBlue" Width="129px"></asp:TextBox>&nbsp;</center>
    <center>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
            Font-Size="8pt" ForeColor="#003399" Height="50px" OnSelectionChanged="Calendar1_SelectionChanged"
            SelectedDate="2008-01-04" Visible="False" Width="195px">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
        &nbsp;</center>
    <center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_RENDEZ_VOUS" DataSourceID="ObjectDataSource_RENDEZ_VOUS" Font-Names="Verdana" Font-Size="X-Small">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID_RENDEZ_VOUS" HeaderText="ID_RENDEZ_VOUS" InsertVisible="False"
                ReadOnly="True" SortExpression="ID_RENDEZ_VOUS" />
            <asp:BoundField DataField="ID_PATIENT" HeaderText="ID_PATIENT" SortExpression="ID_PATIENT" />
            <asp:BoundField DataField="ID_SERVICE" HeaderText="ID_SERVICE" SortExpression="ID_SERVICE" />
            <asp:BoundField DataField="DATE_RENDEZ_VOUS" HeaderText="DATE_RENDEZ_VOUS" SortExpression="DATE_RENDEZ_VOUS" />
            <asp:BoundField DataField="HEURE_RENDEZ_VOUS" HeaderText="HEURE_RENDEZ_VOUS" SortExpression="HEURE_RENDEZ_VOUS" />
            <asp:HyperLinkField DataNavigateUrlFields="ID_PATIENT" DataNavigateUrlFormatString="CONSULTATION.aspx"
                HeaderText="CONSULTATION" Text="Consulter" />
        </Columns>
    </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource_RENDEZ_VOUS" runat="server" DeleteMethod="Delete"
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
            TypeName="DataSet_LA_CROIX_DU_SUDTableAdapters.RENDEZ_VOUS_CONSULTATIONTableAdapter"
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID_RENDEZ_VOUS" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_PATIENT" Type="String" />
                <asp:Parameter Name="ID_SERVICE" Type="String" />
                <asp:Parameter Name="DATE_RENDEZ_VOUS" Type="DateTime" />
                <asp:Parameter Name="HEURE_RENDEZ_VOUS" Type="String" />
                <asp:Parameter Name="Original_ID_RENDEZ_VOUS" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox_DATE_AUJOURDHUI" Name="DATE_RENDEZ_VOUS"
                    PropertyName="Text" Type="DateTime" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_PATIENT" Type="String" />
                <asp:Parameter Name="ID_SERVICE" Type="String" />
                <asp:Parameter Name="DATE_RENDEZ_VOUS" Type="DateTime" />
                <asp:Parameter Name="HEURE_RENDEZ_VOUS" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </center>
</asp:Content>

