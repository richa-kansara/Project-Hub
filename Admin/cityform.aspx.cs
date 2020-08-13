using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label1.Visible = false;
        txtcityid.Text = dobj.max("select isnull(max(cityid),0)+1 from citymst").ToString();
        txtcityid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter cid = new SqlParameter("@cityid", txtcityid.Text);
        SqlParameter cname = new SqlParameter("@cityname", txtcityname.Text);
        SqlParameter sid = new SqlParameter("@stateid", DropDownList1.SelectedValue);
       
        SqlParameter[] pdata = new SqlParameter[3] {cid,cname,sid };
        try
        {
            int x = bobj.insert("CityInsert", pdata);
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
    protected void txtcityname_TextChanged(object sender, EventArgs e)
    {
        int x = dobj.check("select cityname from citymst where cityname='" + txtcityname.Text + "'");
        if (x != 0)
        {
            Label1.Visible = true;
            txtcityname.Text = null;
            txtcityname.Focus();
        }
    }
}