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

public partial class HR_Registration : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");    
    protected void page_Preinit(object sender, EventArgs e)
    {
        string var = "";
        try
        {
            var = Session["cname"].ToString();
            Response.Redirect("SearchResume.aspx");
        }
        catch
        {            
        }        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Visible = false;
        //string var = Session["jsname"].ToString();
        //string str = "select email from js_login where jsid=" + var;
        //sql1.Open();
        //SqlCommand com = new SqlCommand(str, sql1);
        //var = com.ExecuteScalar().ToString();
        //sql1.Close();
        //mailid.Text = var;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s2 = "insert into hr_login (email,pwd) values('" + mailid.Text.ToString() + "','" + pwd.Text.ToString()+ "')";
            string s1 = "select * from hr_login where email='" + mailid.Text.ToString() + "'";
            string s3 = "select hrid from hr_login where email='" + mailid.Text.ToString() + "'";
            SqlCommand com1 = new SqlCommand(s1, sql1);
            SqlCommand com2 = new SqlCommand(s2, sql1);
            SqlCommand com3 = new SqlCommand(s3,sql1);
            try
            {                
                if (sql1.State == ConnectionState.Closed)
                    sql1.Open();                
                bool found = false;                
                SqlDataReader dr = com1.ExecuteReader();
                while (dr.Read())
                {
                    if (dr[2].ToString().Equals(mailid.Text.ToString().Trim()))
                    {
                        found = true;
                        Label6.Visible = true;
                        Label6.Text = "EMail Id already exists.";
                        mailid.Focus();                        
                    }                  
                }                
                dr.Close();
                if (found == false)
                {
                    if (com2.ExecuteNonQuery() > 0)
                    {
                    }                    
                }                
                com2.Dispose();
                s2 = com3.ExecuteScalar().ToString();                
                string s4 = "insert into hr_profile (name,website,location,company_desc,email) values ('" + compname.Text.ToString() + "','" + website.Text.ToString() + "','" + loc.Text.ToString() + "','" + compdesc.Text.ToString() + "','" + TextBox1.Text.ToString()+ "')";
                SqlCommand com4 = new SqlCommand(s4, sql1);
                com4.ExecuteNonQuery();                
                sql1.Close();
                Session["cname"] = s2;
                Response.Redirect("SearchResume.aspx");
        }
        catch (Exception ex)
        {
            Label6.Text = ex.Message;
        }
    }
    protected void mailid_TextChanged(object sender, EventArgs e)
    {
        string s1 = "select * from hr_login where email='" + mailid.Text.ToString().Trim() + "'";
        try
        {
            SqlCommand com1 = new SqlCommand(s1, sql1);
            if (sql1.State == ConnectionState.Closed)
                sql1.Open();

            SqlDataReader dr = com1.ExecuteReader();
            while (dr.Read())
            {
                if (dr[2].ToString().Equals(mailid.Text.ToString().Trim()))
                {
                    Label6.Visible = true;
                    Label6.Text = "EMail Id already exists.";
                    mailid.Focus();
                }
            }
            dr.Close();
            sql1.Close();
        }
        catch(Exception ex)
        {
            Label6.Text = ex.Message;
        }
    }
}
