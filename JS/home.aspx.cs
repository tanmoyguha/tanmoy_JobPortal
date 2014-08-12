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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{

    protected void page_Preinit(object sender, EventArgs e)
    {
        try
        {
            string s = Session["jname"].ToString();
        }
        catch (Exception)
        {
            Server.Transfer("../anyuser/home.aspx", true);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

/*    protected void Button1_Click(object sender, EventArgs e)
    {

    }*/
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session.Abandon();

        Response.Redirect("../anyuser/logout.aspx", true);
    }    
    protected void searchjobs_Click(object sender, EventArgs e)
    {
        string s = "?skill=" + skill.Text + "=" + location.Text;
        Response.Redirect("JobSearch.aspx" + s);
    }    
}
