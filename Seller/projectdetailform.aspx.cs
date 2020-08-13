using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class projectdetail_form : System.Web.UI.Page
{
    BLL bobj = new BLL();
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label3.Text = dobj.fetch("select user_id from usermst where username='"+Session["seller"].ToString()+"'").ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string temp = null, temp1 = null, temp2 = null, temp3 = null, temp4 = null;

        if (FileUpload1.HasFile)
        {
            temp = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }

        
        if (FileUpload2.HasFile) {
            temp1 = "~/img/" + FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath(temp1));
        }

        if (FileUpload3.HasFile)
        {
            temp2 = "~/img/" + FileUpload3.FileName;
            FileUpload3.SaveAs(Server.MapPath(temp2));
        }

        if (FileUpload4.HasFile)
        {
            temp3 = "~/img/" + FileUpload4.FileName;
            FileUpload4.SaveAs(Server.MapPath(temp3));
        }


        if (FileUpload5.HasFile)
        {
            temp4 = "~/img/" +FileUpload5.FileName;
            FileUpload5.SaveAs(Server.MapPath(temp4));

        }

        
        



        SqlParameter pid = new SqlParameter("@projectid", txtProjectId.Text);
        SqlParameter description = new SqlParameter("@description", txtdescription.Text);
        SqlParameter image1 = new SqlParameter("@image1",temp);
        SqlParameter image2 = new SqlParameter("@image2", temp1);
         SqlParameter image3 = new SqlParameter("@image3",temp2);
         SqlParameter image4 = new SqlParameter("@image4",temp3);
        SqlParameter video = new SqlParameter("@video", FileUpload5.FileName);

        SqlParameter[] pdata = new SqlParameter[7] { pid, description, image1, image2, image3, image4, video };

        try
        {
            int x = bobj.insert("projectdetailInfo", pdata);
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        txtProjectId.Text = row.Cells[1].Text;
        txtProjectId.Enabled = false;
    }
}