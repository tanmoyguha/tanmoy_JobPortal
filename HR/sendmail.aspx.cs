using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;

public partial class HR_sendmail : System.Web.UI.Page
{
    string from = "";
    string to = "";
    protected void page_Preinit(object sender, EventArgs e)
    {
        int c = 0;
        try
        {
            string s = Session["cname"].ToString();
            c = 1;
            to = Session["sendmailmsg"].ToString();
        }
        catch 
        {
            if (c == 0)
            {
                Response.Redirect("../HR/hr_login.aspx");
            }
            else
            {
                Response.Redirect("../HR/SearchResume.aspx");
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (!IsPostBack)
        {
            txtmail.Text = "False";
        }
        else
        {
            txtmail.Text = "Gappo \n  >";
        }*/
        from = "zenith9999@gmail.com";
        status.Visible = false;
    }
    protected void send_Click(object sender, EventArgs e)
    {
        MailMessage msg;
        MailAddress maddr=new MailAddress(from);
        MailAddress toaddr = new MailAddress(to);
        msg = new MailMessage(maddr, toaddr);
        msg.Subject = "Hello .... Gop Gap !!!!!! ";
        msg.IsBodyHtml = true;
        msg.Body = txtmail.Text.ToString(); ;
        string serversend = "smtp.gmail.com";
        SmtpClient cl = new SmtpClient(serversend,465);
        cl.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;
        cl.Send(msg);
        status.Visible = true;
    }
}
