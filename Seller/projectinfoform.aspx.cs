using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class projectinfo_form : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label3.Visible = false;
        txtprojectid.Text = dobj.max("select isnull(max(projectid),0)+1 from projectinfoMst").ToString();
        txtprojectid.Enabled = false;
        txtuploaddate.Text = DateTime.Now.ToShortDateString();
        txtuploaddate.Enabled = false;
        txtsellername.Text = Session["seller"].ToString();
        txtsellerid.Text = dobj.fetch("select user_id from usermst where username='"+txtsellername.Text+"'").ToString();
        txtsellername.Enabled = false;
        txtsellerid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter pid = new SqlParameter("@projectid", txtprojectid.Text);
        SqlParameter pname = new SqlParameter("@project_name", txtprojectname.Text);
        SqlParameter uploaddate = new SqlParameter("@upload_date", txtuploaddate.Text);
        SqlParameter version = new SqlParameter("@version", txtversion.Text);
        SqlParameter sid = new SqlParameter("@seller_id", txtsellerid.Text);
        SqlParameter cid = new SqlParameter("@categoryid", DropDownList2.SelectedValue);
        SqlParameter ammount = new SqlParameter("@ammount", txtammount.Text);
        SqlParameter commisionrate = new SqlParameter("@commision_rate", txtcommisonrate.Text);
        
        SqlParameter[] pdata = new SqlParameter[8] { pid, pname, uploaddate, version ,sid ,cid ,ammount ,commisionrate };
        try
        {
            int x = bobj.insert("projectinfoInsert", pdata);
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
    protected void txtprojectname_TextChanged(object sender, EventArgs e)
    {
        int x = dobj.check("select cityname from citymst where cityname='" + txtprojectname.Text + "'");
        if (x != 0)
        {
            Label3.Visible = true;
            txtprojectname.Text = null;
            txtprojectname.Focus();
        }
    }
}