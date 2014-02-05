<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Barcode Generator</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
        <div style="font-size: 10pt; font-family: Arial">
        <h1>ASP.NET AJAX Barcode Generator</h1>
            <table border="1" cellpadding="10" style="width: 398px">
                <tr>
                    <td style="width: 100px">
            <asp:Label ID="Label1" runat="server" Text="Value To Encode:" Width="116px"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox
                ID="txtValueToEncode" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label2" runat="server" Text="Barcode Symbology:" Width="127px"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="ddlSymbology" runat="server">
                            <asp:ListItem Selected="True" Value="Code39"></asp:ListItem>
                            <asp:ListItem Value="Code128"></asp:ListItem>
                            <asp:ListItem Value="DataMatrix"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label3" runat="server" Text="Barcode Preview:" Font-Bold="True" Width="128px"></asp:Label></td>
                    <td style="width: 100px">
            <asp:Image ID="imgBarcodePreview" runat="server" ToolTip="Le numéro de consultation exprimé en Barcode" /></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label_RETOURNE" runat="server" Text="Value To Encode:" Width="116px"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox_VALEUR_RETOURNE" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        <br />
            &nbsp;
        </div>
    </form>
    <script type="text/javascript">
          
        //Set event handlers
        $addHandler($get("txtValueToEncode"), "keyup", barcodeRefresh);
        $addHandler($get("ddlSymbology"), "change", barcodeRefresh);
        
        function barcodeRefresh() 
        {
            //Get barcode
            getBarcode($get('txtValueToEncode').value, $get('ddlSymbology').value);        
        }
        
        // Gets the barcode URL from page
        function getBarcode(valueToEncode, symbology) 
        {
            PageMethods.GetBarcode(valueToEncode, symbology, OnSucceeded, OnFailed);
        }

        // Callback function invoked on successful 
        // completion of the page method.
        function OnSucceeded(result, userContext, methodName) 
        {
            if (methodName == "GetBarcode")
            {
                //Set URL to Barcode Preview Image control
                $get('imgBarcodePreview').src = result;
            }
        }

        // Callback function invoked on failure 
        // of the page method.
        function OnFailed(error, userContext, methodName) 
        {
            if(error != null) 
            {
                
            }
        }

    </script>
</body>
</html>
