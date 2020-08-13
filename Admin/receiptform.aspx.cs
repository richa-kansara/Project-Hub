using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class receiptform : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        txtrid.Text = dobj.max("select isnull(max(receiptid),0)+1 from receiptMst").ToString();
        txtrid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter rid = new SqlParameter("@receiptid", txtrid.Text);
        SqlParameter rdate = new SqlParameter("@receipt_date", txtrdate.Text);
        SqlParameter bid = new SqlParameter("@buyid", txtbuyid.Text);
        SqlParameter pmode = new SqlParameter("@payment_mode", txtpmode.Text);
        SqlParameter amount = new SqlParameter("@amount", txtamount.Text);




        SqlParameter[] pdata = new SqlParameter[5] { rid, rdate , bid , pmode , amount };
        try
        {
            int x = bobj.insert("receiptInfo", pdata);
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