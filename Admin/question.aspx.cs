using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class question : System.Web.UI.Page
{
    BLL bobj = new BLL();
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        txtqid.Text = dobj.max("select isnull(max(questionid),0)+1 from questionMst").ToString();
        txtqid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter qid = new SqlParameter("@questionid", txtqid.Text);
        SqlParameter qdescription = new SqlParameter("@question_description", txtqde.Text);

        SqlParameter[] pdata = new SqlParameter[2] { qid, qdescription};
        try
        {
            int x = bobj.insert("questionInfo", pdata);
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