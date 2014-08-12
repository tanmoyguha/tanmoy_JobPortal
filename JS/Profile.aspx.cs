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

public partial class JS_Profile : System.Web.UI.Page
{
    protected void page_Preinit(object sender, EventArgs e)
    {
        try
        {
            string s = Session["jname"].ToString();
        }
        catch (Exception ex)
        {
            Server.Transfer("js_login.aspx", true);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fresher_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void experienced_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
