using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class category_form : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
       
        txtcategoryid.Text = dobj.max("select isnull(max(categoryId),0)+1 from categoryMst").ToString();
        txtcategoryid.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlParameter cid = new SqlParameter("@categoryId", txtcategoryid.Text);
        SqlParameter cname = new SqlParameter("@categoryname", txtcategoryname.Text);
      
        SqlParameter language = new SqlParameter("@language", txtlanguage.Text);
        SqlParameter[] pdata = new SqlParameter[3] { cid,cname,language };
        try
        {
            int x = bobj.insert("categoryInsert", pdata);
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
