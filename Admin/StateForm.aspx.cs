using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class StateForm : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label1.Visible = false;
        txtstateid.Text = dobj.max("select isnull(max(stateId),0)+1 from stateMst").ToString();
        txtstateid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter sid = new SqlParameter("@StateId", txtstateid.Text);
        SqlParameter sname = new SqlParameter("@StateNme", txtstatename.Text);

        SqlParameter[] pdata = new SqlParameter[2] { sid,sname};
        try
        {
            int x = bobj.insert("StateInfo", pdata);
            if (x != 0)
            {
                lblerror.Visible = true;
                lblerror.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            lblerror.Visible = true;
            lblerror.Text = ex.Message;
        }
    }
    protected void txtstatename_TextChanged(object sender, EventArgs e)
    {
        int x = dobj.check("select stateNme from stateMst where stateNme='" + txtstatename.Text + "'");
        if (x != 0)
        {
            Label1.Visible = true;
            txtstatename.Text = null;
            txtstatename.Focus();
        }
    }
}
