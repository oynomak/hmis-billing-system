<%@ Page Language="C#" MasterPageFile="~/MASTER_PAGES/MasterPage_DOCTOR.master" AutoEventWireup="true"
    CodeFile="HOSPITALISATION.aspx.cs" Inherits="DOCTEUR_HOSPITALISATION" Title="HOSPITALISATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:TextBox ID="TextBox_DATE" runat="server" style="font-weight: bold; font-size: medium; text-transform: capitalize; color: dodgerblue; font-family: Verdana; background-color: aliceblue; text-decoration: underline" ReadOnly="True"></asp:TextBox>
    <center>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
            RepeatDirection="Horizontal" Style="font-weight: bold; font-size: x-small; text-transform: capitalize;
            color: darkgreen; font-family: Verdana; background-color: lightcyan" Width="370px">
            <asp:ListItem Value="0">HOSPITALISATION</asp:ListItem>
            <asp:ListItem Value="1">SORTIE D'HOSPITALISATION</asp:ListItem>
        </asp:RadioButtonList>&nbsp;
        <hr style="color: orangered" />
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="font-weight: bold; font-size: x-small; text-transform: capitalize;
                    color: #1e90ff; font-family: Verdana">
                    <tr>
                        <td style="height: 2px">
                        </td>
                        <td style="width: 3px; height: 2px">
                            &nbsp;<asp:Label ID="Label1" runat="server" Text="ID_HOSPITALISATION" Width="184px"></asp:Label>
                        </td>
                        <td style="width: 3px; height: 2px">
                            <asp:TextBox ID="TextBox_IDHOSPITALISATIONVIEW1" runat="server"></asp:TextBox>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="Label2" runat="server" Text="ID SERVICE:" Width="136px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:DropDownList ID="DropDownList_ID_SERVICEVIEW1" runat="server" AutoPostBack="True"
                                Width="152px" DataSourceID="SqlDataSource_SERVICE" DataTextField="NOM_SERVICE"
                                DataValueField="ID_SERVICE">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="Label3" runat="server" Text="NUMERO DE CHAMBRE:" Width="197px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:DropDownList ID="DropDownList_NUMERO_CHAMBRE_VIEW1" runat="server" Width="152px" AutoPostBack="True"
                                DataSourceID="SqlDataSource_NO_CHAMBRE" DataTextField="No_CHAMBRE" DataValueField="No_CHAMBRE">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="Label4" runat="server" Text="ID CONSULTATION" Width="159px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:DropDownList ID="DropDownListCONSULTATIONVIEW1" runat="server" Width="152px" AutoPostBack="True"
                                DataSourceID="SqlDataSource_ID_CONSULTATION" DataTextField="ID_CONSULTATION"
                                DataValueField="ID_CONSULTATION">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="width: 3px">
                            <asp:Label ID="Label6" runat="server" Text="HEURE D'ENTREE:" Width="187px"></asp:Label></td>
                        <td style="width: 3px">
                            <asp:TextBox ID="TextBox_HEUREVIEW1" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="width: 3px">
                            <asp:SqlDataSource ID="SqlDataSource_HOSPITALISATION_INSERT" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT HOSPITALISATION.* FROM HOSPITALISATION" InsertCommand="INSERT_INTO_HOSPITALISATION"
                                InsertCommandType="StoredProcedure" UpdateCommand="DELETE_ASSUREUR_TABLE" UpdateCommandType="StoredProcedure">
                                <UpdateParameters>
                                    <asp:Parameter Name="ID_ASSUREUR" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="TextBox_IDHOSPITALISATIONVIEW1" Name="ID_HOSPITALISATION"
                                        PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList_ID_SERVICEVIEW1" Name="ID_SERVICE" PropertyName="SelectedValue"
                                        Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList_NUMERO_CHAMBRE_VIEW1" Name="No_CHAMBRE" PropertyName="SelectedValue"
                                        Type="String" />
                                    <asp:ControlParameter ControlID="DropDownListCONSULTATIONVIEW1" Name="ID_CONSULTATION"
                                        PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="TextBox_DATE" Name="DATE_D_ENTREE" PropertyName="Text"
                                        Type="DateTime" />
                                    <asp:ControlParameter ControlID="TextBox_HEUREVIEW1" Name="HEURE_D_ENTREE" PropertyName="Text"
                                        Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource_SERVICE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_SERVICE], [NOM_SERVICE] FROM [SERVICES]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource_NO_CHAMBRE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [No_CHAMBRE] FROM [CHAMBRES_DISPONIBLES]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_ID_CONSULTATION" runat="server"
                                ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                                SelectCommand="SELECT [ID_CONSULTATION] FROM [CONSULTATION]"></asp:SqlDataSource>
                        </td>
                        <td style="width: 3px">
                            <asp:Button ID="Button_CONFIRM" runat="server" BackColor="DodgerBlue" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="Medium" ForeColor="White" Height="37px" Text="CONFIRM" Width="149px" OnClick="Button1_Click1" /></td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server"><table style="font-weight: bold; font-size: x-small; text-transform: capitalize;
                    color: #1e90ff; font-family: Verdana">
                <tr>
                    <td style="height: 2px; width: 3px;">
                    </td>
                    <td style="width: 3px; height: 2px">
                        &nbsp;<asp:Label ID="Label7" runat="server" Text="ID_HOSPITALISATION" Width="184px"></asp:Label>
                    </td>
                    <td style="width: 3px; height: 2px">
                        &nbsp;
                        <asp:DropDownList ID="DropDownList_IDHOSPITALISATION_VIEW2" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource_IDHOSP_CHAMB_OCCUPE" DataTextField="ID_HOSPITALISATION"
                            DataValueField="ID_HOSPITALISATION" OnSelectedIndexChanged="DropDownList_IDHOSPITALISATION_VIEW2_SelectedIndexChanged"
                            Width="140px">
                        </asp:DropDownList>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td style="width: 3px">
                        <asp:Label ID="Label5" runat="server" Text="LA CHAMBRE:" Width="184px"></asp:Label></td>
                    <td style="width: 3px">
                        <asp:DropDownList ID="DropDownList_NoCHAMBREVIEW2" runat="server" BackColor="AliceBlue"
                            DataSourceID="SqlDataSource_CHAMBRE" DataTextField="No_CHAMBRE" DataValueField="No_CHAMBRE"
                            Width="142px">
                        </asp:DropDownList>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 3px">
                    </td>
                    <td style="width: 3px">
                        <asp:Label ID="Label12" runat="server" Text="HEURE D'ENTREE:" Width="187px"></asp:Label></td>
                    <td style="width: 3px">
                        <asp:TextBox ID="TextBox_HEURE_VIEW2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 3px; height: 53px">
                    </td>
                    <td style="width: 3px; height: 53px;">
                        &nbsp; &nbsp;&nbsp;
                    </td>
                    <td style="width: 3px; height: 53px;">
                        <asp:Button ID="Button_UPDATE_HOSPIT" runat="server" BackColor="DodgerBlue" Font-Bold="True"
                            Font-Names="Verdana" Font-Size="Medium" ForeColor="White" OnClick="Button_UPDATE_HOSPIT_Click"
                            Text="CONFIRMER LA SORTIE" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource_IDHOSP_CHAMB_OCCUPE" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT [ID_HOSPITALISATION] FROM [PATIENTS_HOSPITALISES]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_CHAMBRE" runat="server" ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            SelectCommand="SELECT No_CHAMBRE FROM HOSPITALISATION WHERE (ID_HOSPITALISATION = @ID_HOSPITALISATION)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList_IDHOSPITALISATION_VIEW2" Name="ID_HOSPITALISATION"
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_UPDATEHOSPITALISATION" runat="server"
                            ConnectionString="<%$ ConnectionStrings:LA_CROIX_DU_SUD_String_de_Connexion %>"
                            OnDataBinding="DropDownList_IDHOSPITALISATION_VIEW2_SelectedIndexChanged" SelectCommand="SELECT ID_SERVICE, No_CHAMBRE, ID_CONSULTATION, DATE_D_ENTREE, HEURE_D_ENTREE, DATE_DE_SORTIE, HEURE_DE_SORTIE, DECHARGE FROM HOSPITALISATION WHERE (ID_HOSPITALISATION = @ID_HOSPITALISATION)"
                            UpdateCommand="UPDATE_HOSPITALISATION" UpdateCommandType="StoredProcedure">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox_DATE" Name="DATE_DE_SORTIE" PropertyName="Text"
                                    Type="DateTime" />
                                <asp:ControlParameter ControlID="DropDownList_IDHOSPITALISATION_VIEW2" Name="ID_HOSPITALISATION"
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="TextBox_HEURE_VIEW2" Name="HEURE_DE_SORTIE" PropertyName="Text"
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownList_NoCHAMBREVIEW2" Name="No_CHAMBRE" PropertyName="SelectedValue"
                                    Type="String" />
                            </UpdateParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList_IDHOSPITALISATION_VIEW2" Name="ID_HOSPITALISATION"
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
            </asp:View>
        </asp:MultiView>
    </center>
</asp:Content>
