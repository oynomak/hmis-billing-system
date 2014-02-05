<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="SERVICES_RENDUS.aspx.cs" Inherits="SERVICES_RENDUS" Title="SERVICES RENDUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_SERVICES_RENDUS"
            DataSourceID="SqlDataSource_SERVICES_RENDUS">
            <EditItemTemplate>
                <br />
                <table style="width: 215px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ACTE:" Width="263px"></asp:Label></td>
                        <td>
                            <asp:Label ID="ID_SERVICES_RENDUSLabel1" runat="server" Text='<%# Eval("ID_SERVICES_RENDUS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="L'ACTE A FAIRE:" Width="248px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="DESCRIPTION_SERV_RENDUSTextBox" runat="server" Text='<%# Bind("DESCRIPTION_SERV_RENDUS") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE L'ACTE:" Width="265px"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_CATEG_SERVICES_RENDUS"
                                DataTextField="DESCRIPTION_SERVICE" DataValueField="ID_CATEG_SER_RENDUS" Width="151px" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_SER_RENDUS", "{0}") %>'>
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Update" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="Update"
                    Width="98px"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="Cancel"
                    Width="92px"></asp:LinkButton>
                <br />
            <asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICES_RENDUS" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT * FROM [CATEG_SERVICES_RENDUS]"></asp:SqlDataSource>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 325px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ACTE:" Width="263px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="L'ACTE A FAIRE:" Width="248px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="DESCRIPTION_SERV_RENDUSTextBox" runat="server" Text='<%# Bind("DESCRIPTION_SERV_RENDUS") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE L'ACTE:" Width="265px"></asp:Label></td>
                        <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource_CATEG_SERVICES_RENDUS"
                                    DataTextField="DESCRIPTION_SERVICE" DataValueField="ID_CATEG_SER_RENDUS" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="XX-Small" Width="62px" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_SER_RENDUS", "{0}") %>'>
                                </asp:RadioButtonList>&nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />
                <asp:LinkButton ID="InsertButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Insert" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="28px" Text="Insert"
                    Width="80px"></asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="28px" Text="Cancel"
                    Width="84px"></asp:LinkButton>
                <br />
                            <asp:SqlDataSource ID="SqlDataSource_CATEG_SERVICES_RENDUS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT * FROM [CATEG_SERVICES_RENDUS]"></asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<table style="width: 259px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ACTE:" Width="263px"></asp:Label></td>
                        <td>
                            <asp:Label ID="ID_SERVICES_RENDUSLabel" runat="server" Text='<%# Eval("ID_SERVICES_RENDUS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="L'ACTE A FAIRE:" Width="248px"></asp:Label></td>
                        <td>
                            <asp:Label ID="DESCRIPTION_SERV_RENDUSLabel" runat="server" Text='<%# Bind("DESCRIPTION_SERV_RENDUS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE L'ACTE:" Width="265px"></asp:Label></td>
                        <td>
                            <asp:Label ID="ID_CATEG_SER_RENDUSLabel" runat="server" Text='<%# Bind("ID_CATEG_SER_RENDUS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Edit"
                    Width="77px"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Delete"
                    Width="101px"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="New" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="New"
                    Width="84px"></asp:LinkButton>
                <br />
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        SERVICES RENDUS (TAXES):</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_SERVICES_RENDUS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_SERVICES_RENDUS" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_SERVICES_RENDUS"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT SERVICES_RENDUS.* FROM SERVICES_RENDUS"
            UpdateCommand="UPDATE_SERVICES_RENDUS" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="DESCRIPTION_SERV_RENDUS" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="DESCRIPTION_SERV_RENDUS" Type="String" />
                <asp:Parameter Name="ID_CATEG_SER_RENDUS" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="DESCRIPTION_SERV_RENDUS" Type="String" />
                <asp:Parameter Name="ID_CATEG_SER_RENDUS" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

