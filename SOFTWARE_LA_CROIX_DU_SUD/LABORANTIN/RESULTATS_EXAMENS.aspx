<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_LABORATOIRE.master" AutoEventWireup="true" CodeFile="RESULTATS_EXAMENS.aspx.cs" Inherits="RESULTATS_EXAMENS" Title="LES RESULTATS D'EXAMENS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        &nbsp;</center>
    <center>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CODE_EXAMEN,ID_SERVICES_RENDUS" DataSourceID="SqlDataSource_RESULTATS_EXAMENS">
            <EditItemTemplate>
                <br />
                <table style="width: 175px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE CODE DE L'EXAMEN:" Width="257px"></asp:Label></td>
                        <td>
                            <asp:Label ID="CODE_EXAMENLabel1" runat="server" Text='<%# Eval("CODE_EXAMEN") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE SERVICE RENDUS:" Width="256px"></asp:Label></td>
                        <td>
                            <asp:Label ID="ID_SERVICES_RENDUSLabel1" runat="server" Text='<%# Eval("ID_SERVICES_RENDUS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CONSULTATION:" Width="283px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="ID_CONSULTATIONTextBox" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA DATE:" Width="243px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="DATE_EXAMENTextBox" runat="server" Text='<%# Bind("DATE_EXAMEN") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE TYPE D'ECHANTILLON:" Width="286px"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_TYPE_D_ECHANTILLON"
                                DataTextField="TYPE_D_ECHANTILLON" DataValueField="ID_TYPE_ECHANTILLON" Width="157px">
                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource_TYPE_D_ECHANTILLON" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT * FROM [TYPE_D_ECHANTILLON]"></asp:SqlDataSource>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LES RESULTATS:" Width="281px"></asp:Label></td>
                        <td>
                            <textarea id="TextArea1" cols="20" rows="2"></textarea></td>
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
                &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="31px" Text="Cancel"
                    Width="94px"></asp:LinkButton>
                <br />
            </EditItemTemplate>
            <InsertItemTemplate>
                <br />
                <table style="width: 221px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE CODE DE L'EXAMEN:" Width="257px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="CODE_EXAMENTextBox" runat="server" Text='<%# Bind("CODE_EXAMEN") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE SERVICE RENDUS:" Width="256px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="ID_SERVICES_RENDUSTextBox" runat="server" Text='<%# Bind("ID_SERVICES_RENDUS") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE NUMERO DE LA CONSULTATION:" Width="283px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="ID_CONSULTATIONTextBox" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LA DATE:" Width="243px"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="DATE_EXAMENTextBox" runat="server" Text='<%# Bind("DATE_EXAMEN") %>'></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LE TYPE D'ECHANTILLON:" Width="286px"></asp:Label></td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFC0" Height="50px" Width="125px">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource_TYPE_D_ECHANTILLON"
                                    DataTextField="TYPE_D_ECHANTILLON" DataValueField="ID_TYPE_ECHANTILLON" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="XX-Small">
                                </asp:RadioButtonList></asp:Panel>
                            &nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                Text="LES RESULTATS:" Width="281px"></asp:Label></td>
                        <td>
                            <textarea id="TextArea1" cols="20" rows="2"></textarea></td>
                        <td>
                        </td>
                    </tr>
                </table>
                &nbsp;<br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="True" CommandName="Insert" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="33px" Text="Insert"
                    Width="94px"></asp:LinkButton>
                &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Cancel" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="33px" Text="Cancel"
                    Width="98px"></asp:LinkButton>
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="SqlDataSource_RESULTATS_EXAMENS"
                    Font-Names="Verdana" Font-Size="XX-Small" ForeColor="#333333" GridLines="None"
                    Style="font-size: x-small; text-transform: capitalize" Visible="False">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Edit"
                    Width="71px" Visible="False"></asp:LinkButton>
                &nbsp; &nbsp;
                <asp:LinkButton ID="DeleteButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="Delete"
                    Width="95px" Visible="False"></asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" BackColor="#FFFFC0" BorderStyle="Groove"
                    CausesValidation="False" CommandName="New" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF8000" Height="29px" Text="New"
                    Width="78px"></asp:LinkButton>
                <br />
            </ItemTemplate>
    </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_RESULTATS_EXAMENS" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_RESULTATS_EXAMEN" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_RESULTATS_EXAMEN"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT RESULTATS_EXAMEN.* FROM RESULTATS_EXAMEN WHERE (CODE_EXAMEN = @CODE_EXAMEN) AND (ID_SERVICES_RENDUS = @ID_SERVICES_RENDUS)"
            UpdateCommand="UPDATE_RESULTATS_EXAMEN" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="DATE_EXAMEN" Type="DateTime" />
                <asp:Parameter Name="ID_TYPE_ECHANTILLON" Type="Int32" />
                <asp:Parameter Name="RESULTATS" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="CODE_EXAMEN" QueryStringField="CODE_EXAMEN" />
                <asp:QueryStringParameter Name="ID_SERVICES_RENDUS" QueryStringField="ID_SERVICES_RENDUS" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="CODE_EXAMEN" Type="String" />
                <asp:Parameter Name="ID_SERVICES_RENDUS" Type="String" />
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="DATE_EXAMEN" Type="DateTime" />
                <asp:Parameter Name="ID_TYPE_ECHANTILLON" Type="Int32" />
                <asp:Parameter Name="RESULTATS" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
    </center>
</asp:Content>

