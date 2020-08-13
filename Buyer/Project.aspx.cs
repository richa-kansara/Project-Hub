using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Buyer_Project : System.Web.UI.Page
{
    DLL obj = new DLL();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string project_id = Request.QueryString[0].ToString();
        ds = obj.selecall("SELECT projectinfoMst.projectid, projectinfoMst.project_name, projectinfoMst.upload_date, projectinfoMst.version, userMst.name, categoryMst.categoryname, categoryMst.language, projectinfoMst.ammount, projectinfoMst.commision_rate, projectdetailMst.description, projectdetailMst.image1, projectdetailMst.image2,projectdetailMst.image3, projectdetailMst.image4, projectdetailMst.video FROM projectdetailMst INNER JOIN projectinfoMst ON projectdetailMst.projectid = projectinfoMst.projectid INNER JOIN categoryMst ON projectinfoMst.categoryid = categoryMst.categoryId INNER JOIN userMst ON projectinfoMst.seller_id = userMst.user_id where projectinfoMst.projectid="+project_id);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtpid.Text = ds.Tables[0].Rows[0]["projectid"].ToString();
            txtpname.Text = ds.Tables[0].Rows[0]["project_name"].ToString();
            txtudate.Text = ds.Tables[0].Rows[0]["upload_date"].ToString();
            txtversion.Text = ds.Tables[0].Rows[0]["version"].ToString();
            txtsname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            txtcategorynane.Text = ds.Tables[0].Rows[0]["categoryname"].ToString();
            txlang.Text = ds.Tables[0].Rows[0]["language"].ToString();
            txtamount.Text = ds.Tables[0].Rows[0]["ammount"].ToString();
            txtcomrate.Text = ds.Tables[0].Rows[0]["commision_rate"].ToString();
            txtdescription.Text = ds.Tables[0].Rows[0]["description"].ToString();


            Image1.ImageUrl = ds.Tables[0].Rows[0]["image1"].ToString();
            Image2.ImageUrl = ds.Tables[0].Rows[0]["image1"].ToString();
            Image3.ImageUrl = ds.Tables[0].Rows[0]["image2"].ToString();
            Image4.ImageUrl = ds.Tables[0].Rows[0]["image3"].ToString();

            Label11.Text = ds.Tables[0].Rows[0]["video"].ToString();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Session["pid"] = txtpid.Text;
        Session["pname"] = txtpname.Text;
        Session["amt"] = txtamount.Text;
        Response.Redirect("~/buyer/buyinfoform.aspx");
    }
}