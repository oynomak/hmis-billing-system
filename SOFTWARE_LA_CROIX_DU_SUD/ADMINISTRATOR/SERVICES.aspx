<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="SERVICES.aspx.cs" Inherits="ADMINISTRATOR_SERVICES" Title="LES SERVICES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <center>
        &nbsp;
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_SERVICE"
        DataSourceID="SqlDataSource_SERVICES">
        <EditItemTemplate>
            <br />
            <table style="width: 241px">
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE NUMERO DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
            <asp:Label ID="ID_SERVICELabel1" runat="server" Text='<%# Eval("ID_SERVICE") %>'>
            </asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE SERVICE:" Width="194px"></asp:Label></td>
                    <td>
            <asp:TextBox ID="NOM_SERVICETextBox" runat="server" Text='<%# Bind("NOM_SERVICE") %>'>
            </asp:TextBox></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LA CATEGORIE DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_CATEG_SERVICES"
                            DataTextField="NOM_CATEG_SERVICE" DataValueField="ID_CATEG_SERVICE" Width="153px" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_SERVICE", "{0}") %>'>
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Width="110px"></asp:LinkButton>
            &nbsp;&nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Width="104px"></asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICES" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT [ID_CATEG_SERVICE], [NOM_CATEG_SERVICE] FROM [CATEGORY_SERVICE]">
                        </asp:SqlDataSource>
            <br />
        </EditItemTemplate>
        <InsertItemTemplate>
            <br />
            <table style="width: 217px">
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE NUMERO DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
            <asp:TextBox ID="ID_SERVICETextBox" runat="server" Text='<%# Bind("ID_SERVICE") %>'>
            </asp:TextBox></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE SERVICE:" Width="194px"></asp:Label></td>
                    <td>
            <asp:TextBox ID="NOM_SERVICETextBox" runat="server" Text='<%# Bind("NOM_SERVICE") %>'>
            </asp:TextBox></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LA CATEGORIE DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource_CATEG_SERVICES"
                                DataTextField="NOM_CATEG_SERVICE" DataValueField="ID_CATEG_SERVICE" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="XX-Small" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_SERVICE", "{0}") %>'>
                            </asp:RadioButtonList><asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT [ID_CATEG_SERVICE], [NOM_CATEG_SERVICE] FROM [CATEGORY_SERVICE]">
                        </asp:SqlDataSource>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Width="86px"></asp:LinkButton>
            &nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Width="90px"></asp:LinkButton>
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            &nbsp;<table style="width: 187px">
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE NUMERO DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
                        &nbsp;<asp:Label ID="ID_SERVICELabel" runat="server" Text='<%# Eval("ID_SERVICE") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LE SERVICE:" Width="194px"></asp:Label></td>
                    <td>
            <asp:Label ID="NOM_SERVICELabel" runat="server" Text='<%# Bind("NOM_SERVICE") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                            Text="LA CATEGORIE DU SERVICE:" Width="278px"></asp:Label></td>
                    <td>
            <asp:Label ID="ID_CATEG_SERVICELabel" runat="server" Text='<%# Bind("ID_CATEG_SERVICE") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Width="83px"></asp:LinkButton>
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Delete" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Width="107px"></asp:LinkButton>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Text="New" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Width="90px"></asp:LinkButton>
            <br />
        </ItemTemplate>
        <HeaderTemplate>
            <h3>
                <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                    SERVICES DE LA CLINIQUE:</span></h3>
        </HeaderTemplate>
    </asp:FormView></center>
    <asp:SqlDataSource ID="SqlDataSource_SERVICES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
        DeleteCommand="DELETE_SERVICES_TABLE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_SERVICE_TABLE"
        InsertCommandType="StoredProcedure" SelectCommand="SELECT SERVICES.* FROM SERVICES"
        UpdateCommand="UPDATE_SERVICES_TABLE" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="ID_SERVICE" Type="String" />
            <asp:Parameter Name="NOM_SERVICE" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID_SERVICE" Type="String" />
            <asp:Parameter Name="NOM_SERVICE" Type="String" />
            <asp:Parameter Name="ID_CATEG_SERVICE" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_SERVICE" Type="String" />
            <asp:Parameter Name="NOM_SERVICE" Type="String" />
            <asp:Parameter Name="ID_CATEG_SERVICE" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

