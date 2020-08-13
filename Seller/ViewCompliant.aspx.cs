using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_ViewCompliant : System.Web.UI.Page
{
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        TextBox1.Text = row.Cells[1].Text;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status = "confirm";
        int x = dobj.update("update complaintmst set action_taken = '"+TextBox2.Text+"', complaint_status = '"+status+"' where complaintid="+TextBox1.Text+"");
        GridView1.DataBind();
    }
}