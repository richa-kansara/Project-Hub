using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblerror.Visible = false;
        Label7.Visible = false;
        txtadminid.Text = dobj.max("select isnull(max(adminId),0)+1 from adminMst").ToString();
        txtadminid.Enabled = false;
    }
        
    
    protected void btnsub_Click(object sender, EventArgs e)
    {
        SqlParameter aid = new SqlParameter("@adminId", txtadminid.Text);
        SqlParameter aname = new SqlParameter("admin_name", txtadminname.Text);
        SqlParameter password = new SqlParameter("@admin_password", txtadinpassword.Text);
        SqlParameter eid = new SqlParameter("@admin_email", txtadminemailid.Text);
        SqlParameter mobileno = new SqlParameter("@mobile_no", txtadminmob_no.Text);
        SqlParameter[] pdata = new SqlParameter[5] {aid,aname,password,eid,mobileno };
        try
        {
            int x = bobj.insert("AdminInsert", pdata);
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


    protected void txtadminname_TextChanged(object sender, EventArgs e)
    {
        int x = dobj.check("select admin_name from adminMst where admin_name='" + txtadminname.Text + "'");
        if (x != 0)
        {
            Label7.Visible = true;
            txtadminname.Text = null;
            txtadminname.Focus();
        }
    }
}

