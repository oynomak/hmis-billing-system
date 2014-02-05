<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_ADMINISTRATOR.master" AutoEventWireup="true" CodeFile="ASSUREUR.aspx.cs" Inherits="ASSUREUR" Title="ASSUREUR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_ASSUREUR"
            DataSourceID="SqlDataSource_ASSUREUR">
            <EditItemTemplate>
                <br />
                <table style="width: 271px">
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ASSUREUR:" Width="272px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:Label ID="ID_ASSUREURLabel1" runat="server" Text='<%# Eval("ID_ASSUREUR") %>'></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NOM DE L'ASSUREUR:" Width="240px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="NOM_ASSUREURTextBox" runat="server" Text='<%# Bind("NOM_ASSUREUR") %>'></asp:TextBox></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE POURCENTAGE DE L'ASSUREUR:" Width="284px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="POURCENTAGETextBox" runat="server" Text='<%# Bind("POURCENTAGE") %>'></asp:TextBox></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Update" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Update"
                    Width="98px"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Cancel"
                    Width="92px"></asp:LinkButton>
                <br />
            </EditItemTemplate>
            <InsertItemTemplate>
                &nbsp;<table style="width: 287px">
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ASSUREUR:" Width="272px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="ID_ASSUREURTextBox" runat="server" Text='<%# Bind("ID_ASSUREUR") %>'></asp:TextBox></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NOM DE L'ASSUREUR:" Width="240px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="NOM_ASSUREURTextBox" runat="server" Text='<%# Bind("NOM_ASSUREUR") %>'></asp:TextBox></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE POURCENTAGE DE L'ASSUREUR:" Width="284px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="POURCENTAGETextBox" runat="server" Text='<%# Bind("POURCENTAGE") %>'></asp:TextBox></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Insert" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="26px" Text="Insert"
                    Width="86px"></asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="26px" Text="Cancel"
                    Width="90px"></asp:LinkButton><br />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table style="width: 257px">
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE L'ASSUREUR:" Width="272px"></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="ID_ASSUREURLabel" runat="server" Text='<%# Eval("ID_ASSUREUR") %>'></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NOM DE L'ASSUREUR:" Width="240px"></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="NOM_ASSUREURLabel" runat="server" Text='<%# Bind("NOM_ASSUREUR") %>'></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 3px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE POURCENTAGE DE L'ASSUREUR:" Width="284px"></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="POURCENTAGELabel" runat="server" Text='<%# Bind("POURCENTAGE") %>'></asp:Label></td>
                        <td style="width: 3px">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Edit"
                    Width="69px"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Delete"
                    Width="93px" BorderColor="Transparent"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="New" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="New"
                    Width="76px"></asp:LinkButton>
                <br />
            </ItemTemplate>
            <HeaderTemplate>
                <h4>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        ASSUREURS:</span></h4>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_ASSUREUR" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_ASSUREUR_TABLE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_ASSUREUR_TABLE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT ASSUREUR.* FROM ASSUREUR"
            UpdateCommand="UPDATE_ASSUREUR_TABLE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_ASSUREUR" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_ASSUREUR" Type="String" />
                <asp:Parameter Name="NOM_ASSUREUR" Type="String" />
                <asp:Parameter Name="POURCENTAGE" Type="Double" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_ASSUREUR" Type="String" />
                <asp:Parameter Name="NOM_ASSUREUR" Type="String" />
                <asp:Parameter Name="POURCENTAGE" Type="Double" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>

</asp:Content>

