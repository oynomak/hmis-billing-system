<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="CHAMBRES.aspx.cs" Inherits="CHAMBRES" Title="CHAMBRES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="No_CHAMBRE"
            DataSourceID="SqlDataSource_CHAMBRES">
            <EditItemTemplate>
                <br />
                <table style="width: 275px">
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CHAMBRE:" Width="214px"></asp:Label></td>
                        <td style="width: 220px">
                        </td>
                        <td style="width: 169px">
                            <asp:Label ID="No_CHAMBRELabel1" runat="server" Text='<%# Eval("No_CHAMBRE") %>' Width="176px"></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE LA CHAMBRE:" Width="313px"></asp:Label></td>
                        <td style="width: 220px">
                        </td>
                        <td style="width: 169px">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_CATEG_CHAMBRES"
                                DataTextField="DESCRIPTION" DataValueField="ID_CATEG_CHAMBRE" Width="147px" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_CHAMBRE", "{0}") %>'>
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="ELLE EST DISPONIBLE?:" Width="214px"></asp:Label></td>
                        <td style="width: 220px">
                        </td>
                        <td style="width: 169px">
                            <asp:CheckBox ID="DISPONIBLECheckBox" runat="server" Checked='<%# Bind("DISPONIBLE") %>'
                                Width="186px" /></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Update" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="31px" Text="Update"
                    Width="100px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp;
                <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="31px" Text="Cancel"
                    Width="94px"></asp:LinkButton>
                <br />
            <asp:SqlDataSource ID="SqlDataSource_CATEG_CHAMBRES" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_CATEG_CHAMBRE], [DESCRIPTION] FROM [CATEGORY_CHAMBRE]">
                            </asp:SqlDataSource>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 269px">
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CHAMBRE:" Width="214px"></asp:Label></td>
                        <td style="width: 219px">
                        </td>
                        <td>
                            <asp:TextBox ID="No_CHAMBRETextBox" runat="server" Text='<%# Bind("No_CHAMBRE") %>'></asp:TextBox></td>
                        <td style="width: 27px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE LA CHAMBRE:" Width="307px"></asp:Label></td>
                        <td style="width: 219px">
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_CATEG_CHAMBRES"
                                DataTextField="DESCRIPTION" DataValueField="ID_CATEG_CHAMBRE" Width="157px" AutoPostBack="True" SelectedValue='<%# Bind("ID_CATEG_CHAMBRE", "{0}") %>'>
                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource_CATEG_CHAMBRES" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_CATEG_CHAMBRE], [DESCRIPTION] FROM [CATEGORY_CHAMBRE]">
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 27px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="ELLE EST DISPONIBLE?:" Width="214px"></asp:Label></td>
                        <td style="width: 219px">
                        </td>
                        <td>
                            <asp:CheckBox ID="DISPONIBLECheckBox" runat="server" Checked='<%# Bind("DISPONIBLE") %>'
                                Width="214px" /></td>
                        <td style="width: 27px">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Insert" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Insert"
                    Width="92px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Cancel"
                    Width="96px"></asp:LinkButton>
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table style="width: 259px">
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CHAMBRE:" Width="214px"></asp:Label></td>
                        <td>
                            <asp:Label ID="No_CHAMBRELabel" runat="server" Text='<%# Eval("No_CHAMBRE") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA CATEGORIE DE LA CHAMBRE:" Width="311px"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                DataTextField="DESCRIPTION" DataValueField="ID_CATEG_CHAMBRE" SelectedValue='<%# Bind("ID_CATEG_CHAMBRE", "{0}") %>'
                                Width="145px">
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 217px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="ELLE EST DISPONIBLE?:" Width="214px"></asp:Label></td>
                        <td>
                            <asp:CheckBox ID="DISPONIBLECheckBox" runat="server" Checked='<%# Bind("DISPONIBLE") %>'
                                Enabled="false" Width="196px" /></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="Edit"
                    Width="67px"></asp:LinkButton>
                &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" BackColor="#FFFFC0"
                    BorderStyle="Groove" CausesValidation="False" CommandName="Delete" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000"
                    Height="30px" Text="Delete" Width="91px"></asp:LinkButton>
                &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="New" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="30px" Text="New"
                    Width="74px"></asp:LinkButton>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_CATEG_CHAMBRE], [DESCRIPTION] FROM [CATEGORY_CHAMBRE]">
                </asp:SqlDataSource>
            </ItemTemplate>
            <HeaderTemplate>
                <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline"><strong>
                    LES CHAMBRES:</strong></span>
            </HeaderTemplate>
        </asp:FormView></center>
        <asp:SqlDataSource ID="SqlDataSource_CHAMBRES" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_CHAMBRE_TABLE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_CHAMBRE_TABLE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT CHAMBRES.* FROM CHAMBRES"
            UpdateCommand="UPDATE_CHAMBRES_TABLE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="No_CHAMBRE" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="No_CHAMBRE" Type="String" />
                <asp:Parameter Name="ID_CATEG_CHAMBRE" Type="Int32" />
                <asp:Parameter Name="DISPONIBLE" Type="Boolean" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="No_CHAMBRE" Type="String" />
                <asp:Parameter Name="ID_CATEG_CHAMBRE" Type="Int32" />
                <asp:Parameter Name="DISPONIBLE" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
</asp:Content>

