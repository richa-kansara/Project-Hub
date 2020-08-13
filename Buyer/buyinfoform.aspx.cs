using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class buyinfo_form : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        txtseller_id.Enabled = false;
        txtbuyid.Enabled = false;
        txtdate.Text = DateTime.Now.ToShortDateString();
        txtbuyid.Text = dobj.fetch("select isnull(max(buyid),0)+1 from buyinfomst").ToString();
        txtprojectid.Text = Session["pid"].ToString();
        txtprojectname.Text = Session["pname"].ToString();
        txtammount.Text = Session["amt"].ToString();
        txtseller_id.Text = dobj.fetch("select user_id from usermst where username='"+Session["buyer"]+"'").ToString();


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
 
        int x = dobj.update("insert into buyinfomst values ("+txtbuyid.Text+",'"+txtdate.Text+"',"+txtprojectid.Text+","+txtseller_id.Text+","+txtammount.Text+",'"+Session["buyer"].ToString()+"')");
            if (x != 0)
            {
                lblerror.Visible = true;
                lblerror.Text = "Successfully Inserted";
            }
                 
    }
    
}