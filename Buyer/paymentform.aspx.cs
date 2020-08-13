using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class paymentform : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        txtpid.Text = dobj.max("select isnull(max(paymentid),0)+1 from paymentMst").ToString();
        txtpid.Enabled = false;
        txtpdate.Text = DateTime.Now.ToShortDateString();
        txtpdate.Enabled = false;
        Label1.Text = Session["buyer"].ToString();
        txtamount.Enabled = false;
        txtsellerid.Enabled = false;
        txtpmode.Text = "On Delivery".ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter pid = new SqlParameter("@paymentid", txtpid.Text);
        SqlParameter pdate = new SqlParameter("@payment_date", txtpdate.Text);
        SqlParameter sid = new SqlParameter("@sellerid", txtsellerid.Text);
        SqlParameter pmode = new SqlParameter("@payment_mode", txtpmode.Text);
        SqlParameter amount = new SqlParameter("@amount", txtamount.Text);

        SqlParameter[] pdata = new SqlParameter[5] { pid, pdate,sid, pmode,amount };
        try
        {
            int x = bobj.insert("paymentInfo", pdata);
            if (x != 0)
            {
                lblerror.Visible = true;
                lblerror.Text = "Successfully Inserted";
                string url = "";

                string business = "richa.seller@gmail.com";  // your paypal email
                string description = txtpid.Text;            // '%20' represents a space. remember HTML!
                string country = "US";                  // AU, US, etc.
                string currency = "USD";                 // AUD, USD, etc.
                string amounts = txtamount.Text;
                string return1 = "http://localhost:1204/Buyer/Default2.aspx";
                string authToken = "TnPawNadt_p3sXb_Yk-nEoQt1CbXKIKNtWQjKd0d6iIEA6GfeLcE3PdVp8K";

                url += "https://www.sandbox.paypal.com/cgi-bin/webscr" +
                    "?cmd=" + "_xclick" +
                    "&business=" + business +
                    "&lc=" + country +
                    "&item_name=" + description +
                    "&currency_code=" + currency +
                    "&amount=" + amounts +
                    "&return=" + return1 +
                    "&at=" + authToken +
                    "&bn=" + "PP%2dDonationsBF";

                System.Diagnostics.Process.Start(url);
            }
        }
        catch (Exception ex)
        {
            lblerror.Visible = true;
            lblerror.Text = ex.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        txtsellerid.Text = row.Cells[4].Text;
        txtamount.Text = row.Cells[5].Text;
    }
}