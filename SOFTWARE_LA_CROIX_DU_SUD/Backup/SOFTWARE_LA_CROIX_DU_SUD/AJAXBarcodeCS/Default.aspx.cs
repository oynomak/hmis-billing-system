using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


using Neodynamic.WebControls.BarcodeProfessional;


public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [
    System.Web.Services.WebMethod()
    ]
    public static string GetBarcode(string valueToEncode, string symbology)
    { 
        //Create an instance of BarcodeProfessional class
        BarcodeProfessional barcode = new BarcodeProfessional();
        //Set the barcode symbology based on the symbology parameter
        barcode.Symbology = (Symbology)System.Enum.Parse(typeof(Symbology), symbology);
        //Set the value to encode based on the valueToEncode parameter
        barcode.Code = valueToEncode;
        
        //If barcode symbology is Code 39
        if (barcode.Symbology == Neodynamic.WebControls.BarcodeProfessional.Symbology.Code39)
        {
            //Disable checksum    
            barcode.AddChecksum = false;
            //Use extended mode for full ASCII encoding
            barcode.Extended = true;
        }

        //Set HTTP Handler rendering method for better performance
        //IMPORTANT: Look for the following setting in the web.config file to learn how to configure it
        //<add verb="*" path="BarcodeProfessional.aspx" type="Neodynamic.WebControls.BarcodeProfessional.BarcodeProfessional, Neodynamic.WebControls.BarcodeProfessional"/>
        barcode.RenderingMethod = RenderingMethod.HttpHandler;

        //Return url for barcode generation
        return barcode.GetBarcodeUrl();
    }
}