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

public partial class JS_js_login : System.Web.UI.Page
{    
    protected void page_Preinit(object sender, EventArgs e)
    {
        if (Session["jname"] != null)
        {
            Response.Redirect("../JS/JobSearch.aspx");
        }
        if(Session["cname"]!= null)
        {
            Response.Redirect("../HR/Jobpost.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {                         
        //Session.Abandon();
        /*try
        {
            Session["jname"].ToString();
            Response.Redirect("home.aspx");
        }
        catch (Exception ex)
        {
        }*/
        warn.Visible = false;        
        Button1.Visible = true;
    }
    private void validate(string s1, string s2)
    {        
        if (RegularExpressionValidator1.IsValid == true && RequiredFieldValidator1.IsValid==true && RequiredFieldValidator2.IsValid==true)
        {
            SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");
            SqlDataReader dr;
            SqlDataReader dr1;
            //SqlConnection sql1 = new SqlConnection("Data Source=.\\pioneer-0715f43\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\pmsystem.dbo;Integrated Security=True;User Instance=True");
            //SqlConnection sql1 = new SqlConnection("server=(local);"+"database=ASPNETDB;Trusted_Connection=yes");            
            try
            {
                SqlCommand com = new SqlCommand(s1, sql1);
                if (sql1.State == ConnectionState.Closed)
                    sql1.Open();

                dr = com.ExecuteReader();
                com.Dispose();
                bool found = false;
                while (dr.Read())
                {
                    found = true;
                    if (dr[1].ToString().Equals(pwd.Text.ToString()))
                    {                                               
                        //Session.Add(dr[0].ToString(), dr[0].ToString());
                        Session["jname"] = dr[0].ToString();
                        sql1.Close();
                        Response.Redirect("../JS/JobSearch.aspx",true);
                        //Session["comp"] = dr[3].ToString().Trim();   
                    }
                }
                dr.Close();
                dr.Dispose();
                sql1.Close();

                sql1.Open();
                SqlCommand com1 = new SqlCommand(s2, sql1);
                dr1 = com1.ExecuteReader();
                while(dr1.Read())
                {
                    found = true;
                    if (dr1[1].ToString().Equals(pwd.Text.ToString().Trim()))
                    {                                               
                        Session["cname"] = dr1[0].ToString();
                        sql1.Close();
                        Response.Redirect("../HR/JobPost.aspx",true);
                    }
                }
                if (found == true)
                {
                    warn.Visible = true;
                    warn.Text = "Wrong Password.";
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
                dr.Dispose();
                dr1.Close();
                dr1.Dispose();
            }
            catch (Exception ex)
            {
                warn.Text = "Could Not retrieve Data. Try Again. Error - " + ex.Message.ToString();
            }
            finally
            {
                sql1.Close();
            }            
        }    
    }
    /*protected void employer_Click(object sender, EventArgs e)
    {
        //Button1.Visible = false; 
        //Button2.Visible = true;
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (pwd.Text.Trim().Length < 6)
        {
            warn.Visible = true;
            warn.Text = " Password should be atleast 6 Characters. ";
        }
        else if (Page.IsValid)
        {
            string s1 = "select * from js_login where email='" + uname.Text.ToString() + "'";
            string s2 = "select * from hr_login where email='" + uname.Text.ToString() + "'";
            validate(s1, s2);
        }
        else
        {
            warn.Visible = true;
            warn.Text = " Invalid Format. ";
            //
            //    Session["jname"] = dr[0].ToString();
            //    Response.Redirect("../JS/JobSearch.aspx");

            /*if (validate(s1))
            {
                Session["cname"] = dr[0].ToString();
                Response.Redirect("../HR/JobPost.aspx");
            }*/
        }
    }
}
