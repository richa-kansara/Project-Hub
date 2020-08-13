using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changepw : System.Web.UI.Page
{
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtuserid.Text = Session["seller"].ToString();
        txtuserid.Enabled = false;
        lblerror.Visible = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int x = dobj.update("update usermst set password ='"+txtnewpassword.Text+"' where username ='"+txtuserid.Text+"' and password ='"+txtoldpassword.Text+"'");
        if (x != 0)
        {
            lblerror.Visible = true;
            lblerror.Text = "Successfully Updated";
        }
        else
        {
            lblerror.Visible = true;
            lblerror.Text = "Invalid Info";
        }
    }
}