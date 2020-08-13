using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class feedbackform : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
   protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible=false;
        txtfeedbackid.Text = dobj.max("select isnull(max(feedbackid),0)+1 from feedbackMst").ToString();
        txtfeedbackid.Enabled = false;

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        SqlParameter fid = new SqlParameter("@feedbackid", txtfeedbackid.Text);
        SqlParameter fdate = new SqlParameter("@feedback_date", txtfeedbackdate.Text);
        SqlParameter uid = new SqlParameter("@userid", txtuserid.Text);
        SqlParameter description = new SqlParameter("@description", txtdecsciption.Text);

        SqlParameter[] pdata = new SqlParameter[4] { fid, fdate, uid, description };
        
         try
        {
            int x = bobj.insert("feedbackInfo", pdata);
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
