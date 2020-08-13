using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class userform : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label1.Visible = false;
        txtuid.Text = dobj.max("select isnull(max(user_id),0)+1 from userMst").ToString();
        txtuid.Enabled = false;
       
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }
        SqlParameter utype = new SqlParameter("@user_type", DropDownList4.Text);
        SqlParameter uid = new SqlParameter("@user_id", txtuid.Text); 
        SqlParameter name = new SqlParameter("@name", txtname.Text); 
        SqlParameter add1 = new SqlParameter("@addressline1", txtad1.Text); 
        SqlParameter add2 = new SqlParameter("@addressline2", txtad2.Text);
        SqlParameter sid = new SqlParameter("@stateid", DropDownList1.SelectedValue);
        SqlParameter cid = new SqlParameter("@cityid", DropDownList2.SelectedValue);
        SqlParameter pcode = new SqlParameter("@pincode", txtpc.Text); 
        SqlParameter cno = new SqlParameter("@contactno", txtcn.Text);
        SqlParameter eid = new SqlParameter("@Email_id", txteid.Text);
        SqlParameter qid = new SqlParameter("@questionid", DropDownList3.SelectedValue);
        SqlParameter ans = new SqlParameter("@answer", txtans.Text);
        SqlParameter uname = new SqlParameter("@username", txtun.Text);
        SqlParameter ps = new SqlParameter("@password", txtpw.Text);
        SqlParameter img = new SqlParameter("@image", temp);

        SqlParameter[] pdata = new SqlParameter[15] { utype,uid,name,add1,add2,sid,cid,pcode,cno,eid,qid,ans,uname,ps,img };

        try
        {
            int x = bobj.insert("userInfo", pdata);
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
    protected void txteid_TextChanged(object sender, EventArgs e)
    {

        int x = dobj.check("select Email_id from userMst where Email_id='" + txteid.Text + "'");
        if (x != 0)
        {
            Label1.Visible = true;
            txteid.Text = null;
            txteid.Focus();
        }
    }
    
}