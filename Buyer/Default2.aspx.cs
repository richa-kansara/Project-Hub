using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Net;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;

public partial class Buyer_Default2 : System.Web.UI.Page
{
    private string Encode(string oldValue)
    {
        string newValue = oldValue.Replace("\"", "'");
        newValue = System.Web.HttpUtility.UrlEncode(newValue);
        newValue = newValue.Replace("%2f", "/");
        return newValue;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        //string authToken = "obODssXgEBKM-eun35UEmAXgD7NsinJOPzqw7RABoXJSSBphtLBBwsm9O9e";
        string authToken = "TnPawNadt_p3sXb_Yk-nEoQt1CbXKIKNtWQjKd0d6iIEA6GfeLcE3PdVp8K";
        string txToken = Request.QueryString["tx"];
        string query = "cmd=_notify-synch&tx=" + txToken + "&at=" + authToken;
        ServicePointManager.Expect100Continue = true;
        ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;
        ServicePointManager.DefaultConnectionLimit = 9999;

        //Post back to either sandbox or live
        string strSandbox = "https://www.sandbox.paypal.com/cgi-bin/webscr";
        //string strLive = "https://www.paypal.com/cgi-bin/webscr";

        HttpWebRequest req = (HttpWebRequest)WebRequest.Create(strSandbox);
        //Set values for the request back
        req.Method = "POST";
        req.ContentType = "application/x-www-form-urlencoded";
        req.ContentLength = query.Length;
        //Send the request to PayPal and get the response
        StreamWriter streamOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
        streamOut.Write(query);
        streamOut.Close();
        StreamReader streamIn = new StreamReader(req.GetResponse().GetResponseStream());
        string strResponse = streamIn.ReadToEnd();
        streamIn.Close();
        Dictionary<string, string> results = new Dictionary<string, string>();
        if (strResponse != "")
        {
            StringReader reader = new StringReader(strResponse);
            string line = reader.ReadLine();
            if (line == "SUCCESS")
            {
                while ((line = reader.ReadLine()) != null)
                {
                    results.Add(line.Split('=')[0], line.Split('=')[1]);
                }
              
                DLL obj = new DLL();
               int x= obj.update("update paymentmst set TransactionId='" + txToken + "' where paymentid=" + results["item_name"] + "");
               if (x != 0)
               {
                   Label1.Text = "Successfully Payment Done";
                   Label1.Visible = true;
               }
               else
               {
                   Label1.Text = " Server Down Please Try After Some Time";
                   Label1.Visible = true;
               }
            }
            else if (line == "FAIL")
            {
                Response.Write("Unable to retrive transaction detail");
            }
        }
        else
        {
            Response.Write("ERROR");
        } 


    }
}