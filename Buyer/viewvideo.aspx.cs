using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buyer_viewvideo : System.Web.UI.Page
{
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "2";//Session["pid"].ToString();
        Label1.Text = dobj.fetch("SELECT VIDEO FROM PROJECTDETAILMST WHERE PROJECTID="+Label1.Text+"").ToString();
    }
}