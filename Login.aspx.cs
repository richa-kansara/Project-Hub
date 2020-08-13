using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DLL dobj = new DLL();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int flag = 0;
        if (flag == 0 && RadioButtonList1.SelectedIndex == 0)
        {
            if (string.Compare(txtuserid.Text, "Admin") == 0)
            {
                if (string.Compare(txtpassword.Text, "Admin") == 0)
                {
                    flag = 1;
                    Session["Admin"] = txtuserid.Text;
                    Response.Redirect("~/Admin/Home.aspx");

                }

            }
        }
        if (flag == 0 && RadioButtonList1.SelectedIndex == 1)
        {
            x = dobj.check("select username, password from usermst where username='"+txtuserid.Text+"' and password ='"+txtpassword.Text+"' and user_type='Seller'");
            if (x != 0)
            {
                flag = 1;
                Session["seller"] = txtuserid.Text;
                Response.Redirect("~/seller/Home.aspx");
            }
        }
        if (flag == 0 && RadioButtonList1.SelectedIndex == 2)
        {
            x = dobj.check("select username, password from usermst where username='" + txtuserid.Text + "' and password ='" + txtpassword.Text + "' and user_type='Buyer'");
            if (x != 0)
            {
                flag = 1;
                Session["buyer"] = txtuserid.Text;
                Response.Redirect("~/buyer/Home.aspx");
            }
        }
        if (flag == 0)
        {
            lblerror.Visible = true;
            lblerror.Text = "Invalid Username and Password";
        }
    }
}