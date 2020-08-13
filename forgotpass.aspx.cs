using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class forgotpass : System.Web.UI.Page
{
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        int flag = 0;
        DataSet ds = new DataSet();
        ds = dobj.selecall("SELECT * FROM USERMST");
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            if (string.Compare(txtuid.Text, temp["username"].ToString()) == 0)
            {
                if (string.Compare(DropDownList1.SelectedValue, temp["questionid"].ToString()) == 0)
                {
                    if (string.Compare(txtans.Text, temp["answer"].ToString()) == 0)
                    {
                        flag = 1;
                        lblerror.Visible = true;
                        lblerror.Text = "Your password is" + temp["password"].ToString();


                        MailMessage mail = new MailMessage();
                        SmtpClient smtp = new SmtpClient()
                        {
                            Host = "smtp.gmail.com",
                            Port = 587,
                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            //UseDefaultCredentials = true,
                            Credentials = new NetworkCredential("crmsoftsys@gmail.com", "dhruti123"),
                            EnableSsl = true
                        };
                        MailAddress esender = new MailAddress("crmsoftsys@gmail.com");
                        mail.From = esender;
                        MailAddress erec = new MailAddress(temp["Email_id"].ToString());
                        mail.To.Add(erec);

                        mail.Body = "Your password is" + temp["password"].ToString();
                        mail.Subject = "ForGot Password";
                        smtp.Send(mail);
                        Response.Redirect("~/Login.aspx");
                    
                    }
                }
            }
        }
        if (flag == 0)
        {
            lblerror.Visible = true;
            lblerror.Text = "Invalid INfo";
        }
    }
}