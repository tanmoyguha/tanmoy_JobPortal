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

public partial class JS_Jobdetails : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qs = "";
            applied_jobs.Visible = false;
            try
            {
                qs = Request.QueryString["jid"].ToString().Trim();
                //   exp.Text = qs;
            }
            catch
            {
                Response.Redirect("../JS/JobSearch.aspx", true);
            }
            string str = "select * from hr_jobpost where jobid=" + qs;
            SqlCommand com = new SqlCommand(str, sql1);
            sql1.Open();
            SqlDataReader dr = com.ExecuteReader();
            bool found = false;
            string i = "";
            string j = "";
            string hrid = "";
            while (dr.Read())
            {
                hrid = dr["hrid"].ToString();
                exp.Text = dr["exp_req"].ToString();
                salary.Text = dr["salary"].ToString();
                loc.Text = dr["loc"].ToString();
                qual.Text = dr["qual1"].ToString() + ", " + dr["qual2"].ToString();
                jtype.Text = dr["job_type"].ToString();
                pdate.Text = dr["posted_date"].ToString();
                eligibility.Text = "Qualification Required :- " + dr["qual1"].ToString() + ", " + dr["qual2"].ToString() + "\nSkills Required :- " + dr["skill1"].ToString() + ", " + dr["skill2"].ToString() + ". ";
                jdesc.Text = "CTC : Around " + dr["salary"].ToString() + " " + dr["value"].ToString() + "p.a. \nJob Profile : " + dr["job_desc"].ToString();
                i = dr["industry_type"].ToString();
                j = dr["functional_area"].ToString();
                found = true;
                if (dr["active"].ToString().Equals("0"))
                {
                    applied_jobs.Visible = true;
                    applied_jobs.Text = "     This Job is Currently InActive.     ";
                    apply.Visible = false;
                    apply.Enabled = false;
                }
            }
            dr.Close();
            dr.Dispose();
            com.Dispose();
            if (found == true)
            {
                str = "select role from industry where id=" + i;
                com = new SqlCommand(str, sql1);
                //object ind = com.ExecuteScalar();
                //string ss = ind.ToString();
                //object ind = new object();
                //ind = com.ExecuteScalar();
                //string ss = ind.ToString();
                industry.Text = com.ExecuteScalar().ToString();
                str = "select role from functional_area where id=" + j;
                com.Dispose();
                com = new SqlCommand(str, sql1);
                //ind = com.ExecuteScalar();
                //ss = ind.ToString();
                func.Text = com.ExecuteScalar().ToString();
                str = "select * from hr_profile where hrid=" + hrid;
                com = new SqlCommand(str, sql1);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    cname.Text = dr["name"].ToString();
                    website.Text = dr["website"].ToString();
                    cdesc.Text = dr["company_desc"].ToString();
                }
            }
            else
            {
                applied_jobs.Text = "    Invalid JobID or The Job you are looking for has been removed. ";
                applied_jobs.Visible = true;
                apply.Visible = false;
                apply.Enabled = false;
            }
            sql1.Close();
        }
    }
    protected void apply_Click(object sender, EventArgs e)
    {
        try
        {
            string s = Session["jname"].ToString();
            string qs = Request.QueryString["jid"].ToString().Trim();
            string str = "insert into jobs_applied values(" + s + "," + qs + ",0)";
            sql1.Open();
            SqlCommand com = new SqlCommand(str, sql1);
            if (com.ExecuteNonQuery() == 0)
            {
                applied_jobs.Text = "          You have already applied to this Job .              ";
                applied_jobs.Visible = true;
                apply.Visible = false;
                apply.Enabled = false;
            }
            else
            {
                applied_jobs.Text = "         You have Successfully Applied to this Job .         ";
                applied_jobs.Visible = true;
                apply.Visible = false;
                apply.Enabled = false;
            }
        }
        catch (SqlException s)
        {
            applied_jobs.Text = "          You have already applied to this Job .              ";
            applied_jobs.Visible = true;
            apply.Visible = false;
            apply.Enabled = false;
            //Server.Transfer("JSRegistration.aspx", true);
        }
        catch (Exception)
        {
            Server.Transfer("../JS/JSRegistration.aspx", true);
        }
    }
}
