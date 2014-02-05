<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true" CodeFile="TRANSFERTS.aspx.cs" Inherits="TRANSFERTS" Title="LES TRANSFERTS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    &nbsp;</center>
    <center>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_TRANSFERT" DataSourceID="SqlDataSource_TRANSFERT" AllowPaging="True">
            <EditItemTemplate>
                <table style="width: 295px">
                    <tr>
                        <td>
                            ID_TRANSFERT:</td>
                        <td>
                        </td>
                        <td>
                <asp:Label ID="ID_TRANSFERTLabel1" runat="server" Text='<%# Eval("ID_TRANSFERT") %>'>
                </asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ID_CONSULTATION:</td>
                        <td>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_CONSULTATION"
                                DataTextField="ID_CONSULTATION" DataValueField="ID_CONSULTATION" SelectedValue='<%# Bind("ID_CONSULTATION", "{0}") %>'
                                Width="163px">
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ID_DESTINATION:</td>
                        <td>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_DESTINATION"
                                DataTextField="NOM_DESTINATION" DataValueField="ID_DESTINATION" SelectedValue='<%# Bind("ID_DESTINATION", "{0}") %>'
                                Width="165px">
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE_TRANSFERT:</td>
                        <td>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                ForeColor="#663399" Height="1px" SelectedDate='<%# Bind("DATE_TRANSFERT") %>'
                                ShowGridLines="True" Width="1px">
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            HEURE_TRANSFERT:</td>
                        <td>
                        </td>
                        <td>
                <asp:TextBox ID="HEURE_TRANSFERTTextBox" runat="server" Text='<%# Bind("HEURE_TRANSFERT") %>'>
                </asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            RECOMMANDATIONS:</td>
                        <td>
                        </td>
                        <td>
                <asp:TextBox ID="RECOMMANDATIONSTextBox" runat="server" Text='<%# Bind("RECOMMANDATIONS") %>' Width="259px"></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            OBSERVATIONS:</td>
                        <td>
                        </td>
                        <td>
                <asp:TextBox ID="OBSERVATIONSTextBox" runat="server" Text='<%# Bind("OBSERVATIONS") %>' Width="185px"></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update" BackColor="#FFFFC0" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="27px" Width="108px"></asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel" BackColor="#FFFFC0" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="27px" Width="102px"></asp:LinkButton>
                <br />
                <asp:SqlDataSource ID="SqlDataSource_CONSULTATION" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_CONSULTATION] FROM [CONSULTATION]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource_DESTINATION" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_DESTINATION], [NOM_DESTINATION] FROM [DESTINATION_TRANSFERT]">
                </asp:SqlDataSource>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 339px">
                    <tr>
                        <td>
                            ID_TRANSFERT:</td>
                        <td>
                <asp:TextBox ID="ID_TRANSFERTTextBox" runat="server" Text='<%# Bind("ID_TRANSFERT") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            ID_CONSULTATION:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_CONSULTATION"
                                DataTextField="ID_CONSULTATION" DataValueField="ID_CONSULTATION" SelectedValue='<%# Bind("ID_CONSULTATION", "{0}") %>'
                                Width="157px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ID_DESTINATION:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_HOSPITAL_DESTINATION"
                                DataTextField="NOM_DESTINATION" DataValueField="ID_DESTINATION" SelectedValue='<%# Bind("ID_DESTINATION", "{0}") %>'
                                Width="157px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE_TRANSFERT:</td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                ForeColor="#663399" Height="90px" ShowGridLines="True" Width="68px">
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            HEURE_TRANSFERT:</td>
                        <td>
                <asp:TextBox ID="HEURE_TRANSFERTTextBox" runat="server" Text='<%# Bind("HEURE_TRANSFERT") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            RECOMMANDATIONS:</td>
                        <td>
                <asp:TextBox ID="RECOMMANDATIONSTextBox" runat="server" Text='<%# Bind("RECOMMANDATIONS") %>' Width="249px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            OBSERVATIONS:</td>
                        <td>
                <asp:TextBox ID="OBSERVATIONSTextBox" runat="server" Text='<%# Bind("OBSERVATIONS") %>'></asp:TextBox></td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="28px" Width="90px"></asp:LinkButton>
                &nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="28px" Width="94px"></asp:LinkButton>
                <br />
                <asp:SqlDataSource ID="SqlDataSource_HOSPITAL_DESTINATION" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT * FROM [DESTINATION_TRANSFERT]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource_CONSULTATION" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                    SelectCommand="SELECT [ID_CONSULTATION] FROM [CONSULTATION]"></asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                <table style="width: 325px">
                    <tr>
                        <td>
                            ID_TRANSFERT:</td>
                        <td>
                <asp:Label ID="ID_TRANSFERTLabel" runat="server" Text='<%# Eval("ID_TRANSFERT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ID_CONSULTATION:</td>
                        <td>
                <asp:Label ID="ID_CONSULTATIONLabel" runat="server" Text='<%# Bind("ID_CONSULTATION") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ID_DESTINATION:</td>
                        <td>
                <asp:Label ID="ID_DESTINATIONLabel" runat="server" Text='<%# Bind("ID_DESTINATION") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE_TRANSFERT:</td>
                        <td>
                <asp:Label ID="DATE_TRANSFERTLabel" runat="server" Text='<%# Bind("DATE_TRANSFERT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            HEURE_TRANSFERT:</td>
                        <td>
                <asp:Label ID="HEURE_TRANSFERTLabel" runat="server" Text='<%# Bind("HEURE_TRANSFERT") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            RECOMMANDATIONS:</td>
                        <td>
                <asp:Label ID="RECOMMANDATIONSLabel" runat="server" Text='<%# Bind("RECOMMANDATIONS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            OBSERVATIONS:</td>
                        <td>
                <asp:Label ID="OBSERVATIONSLabel" runat="server" Text='<%# Bind("OBSERVATIONS") %>'></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                </table>
                &nbsp;<br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="28px" Width="72px"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="28px" Width="87px"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New" BackColor="#FFFFC0" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="#FF8000" Height="28px" Width="78px"></asp:LinkButton>
                <br />
            </ItemTemplate>
            <HeaderTemplate>
                <h3>
                    <span style="color: dodgerblue; font-family: Verdana; text-decoration: underline">LES
                        TRANSFERTS:</span></h3>
            </HeaderTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_TRANSFERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
            DeleteCommand="DELETE_TRANSFERT_TABLE" DeleteCommandType="StoredProcedure" InsertCommand="INSERT_INTO_TRANSFERT_TABLE"
            InsertCommandType="StoredProcedure" SelectCommand="SELECT TRANSFERT.* FROM TRANSFERT"
            UpdateCommand="UPDATE_TRANSFERT_TABLE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ID_TRANSFERT" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_TRANSFERT" Type="String" />
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="ID_DESTINATION" Type="Int32" />
                <asp:Parameter Name="DATE_TRANSFERT" Type="DateTime" />
                <asp:Parameter Name="HEURE_TRANSFERT" Type="String" />
                <asp:Parameter Name="RECOMMANDATIONS" Type="String" />
                <asp:Parameter Name="OBSERVATIONS" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_TRANSFERT" Type="String" />
                <asp:Parameter Name="ID_CONSULTATION" Type="String" />
                <asp:Parameter Name="ID_DESTINATION" Type="Int32" />
                <asp:Parameter Name="DATE_TRANSFERT" Type="DateTime" />
                <asp:Parameter Name="HEURE_TRANSFERT" Type="String" />
                <asp:Parameter Name="RECOMMANDATIONS" Type="String" />
                <asp:Parameter Name="OBSERVATIONS" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;
    </center>
</asp:Content>

