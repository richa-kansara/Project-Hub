using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class complainform : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        txtcomplaintid.Text = dobj.max("select isnull(max(complaintid),0)+1 from complaintMst").ToString();
        txtcomplaintid.Enabled = false;
        txtcomplaintdate.Text = DateTime.Now.ToShortDateString();
        txtcomplaintuserid.Text = dobj.fetch("select user_id from usermst where username='" + Session["buyer"].ToString() + "'").ToString();
        txtcomplaintuserid.Enabled = false;
        txtprojectid.Text = dobj.fetch("select project_id from buyinfomst where user_id='" + txtcomplaintuserid.Text + "'").ToString(); 


    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        SqlParameter cid = new SqlParameter("@complaintId", txtcomplaintid.Text);
        SqlParameter cdate = new SqlParameter("@complaintdate", txtcomplaintdate.Text);
        SqlParameter uid = new SqlParameter("@userid", txtcomplaintuserid.Text);
        SqlParameter cdescription = new SqlParameter("@complaint_description", txtcomplaintdec.Text);
        
        SqlParameter[] pdata = new SqlParameter[4] {cid,cdate,uid,cdescription };
        try
        {
            int x = bobj.insert("complaintInsert", pdata);
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
}