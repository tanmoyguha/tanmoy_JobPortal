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

public partial class HR_hr_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        warn.Visible = false;
        try
        {
            Session["jname"].ToString();
            Response.Redirect("../JS/JobSearch.aspx");
        }
        catch (Exception ex)
        {            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {        
        if (Page.IsValid)
        {
            SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");
            sql1.Open();
            string s1 = "select * from hr_login where email = '" + uname.Text.ToString().Trim() + "'";
            SqlCommand com = new SqlCommand(s1, sql1);
            SqlDataReader dr = com.ExecuteReader();
            bool found = false;
            while (dr.Read())
            {
                if (dr[1].ToString().Equals(pwd.Text.ToString().Trim()))
                {
                    found = true;
                    Session["cname"] = dr[0].ToString();
                    Response.Redirect("SearchResume.aspx");
                }
                else
                {
                    found = true;
                    warn.Visible = true;
                    warn.Text = "Wrong Password.";
                }
            }
            if (found == false)
            {
                warn.Visible = true;
                warn.Text = "Account Not Found, You Need To Register.";
                uname.Text = "";
                pwd.Text = "";
                uname.Focus();
            }
            dr.Close();
            sql1.Close();
        }
    }    
}