using System;
using System.Collections;
using System.Collections.Generic;
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


public partial class JS_JobSearch : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");
    string str;
    bool a=false;
    DataSet ds = new DataSet();
    protected void page_Preinit(object sender, EventArgs e)
    {
        if (sessvalid())
        {
            Button1.Enabled = true;
            Button1.Visible = true;
        }
        else
        {
            Button1.Visible = false;
            Button1.Enabled = false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        grid.Visible = false;
        applied_jobs.Visible = false;
        if (!IsPostBack)
        {
            sql1.Open();
            string farea = "select * from functional_area";
            SqlCommand com1=new SqlCommand(farea,sql1);
            SqlDataAdapter da1 = new SqlDataAdapter(com1);
            da1.Fill(ds, "farea");
            da1.Dispose();
            sql1.Close();            
            DropDownList1.DataSource = ds.Tables["farea"];
            DropDownList1.DataTextField = ds.Tables["farea"].Columns["role"].ToString();
            DropDownList1.DataValueField = ds.Tables["farea"].Columns["id"].ToString();
            DropDownList1.DataBind();                        
            string in1 = "select * from industry";
            sql1.Open();
            SqlCommand com2 = new SqlCommand(in1, sql1);
            SqlDataAdapter da2 = new SqlDataAdapter(com2);
            da2.Fill(ds, "industry");
            DropDownList2.DataSource = ds.Tables["industry"];
            DropDownList2.DataTextField = ds.Tables["industry"].Columns["role"].ToString();
            DropDownList2.DataValueField = ds.Tables["industry"].Columns["id"].ToString();
            DropDownList2.DataBind();            
            da1.Dispose();            
            sql1.Close();
            if (sessvalid())
            {
                a = true;
                str = "select hr_profile.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where hr_jobpost.hrid=hr_profile.hrid and jobid in (select jobs_applied.jobid from jobs_applied,links where jobs_applied.jsid=links.linkid and links.jsid=" + Session["jname"].ToString() + ")";
                srjobs();
            }
        }
    }

    protected void srjobs()
    {
        //sql1.Open();
        //SqlCommand com = new SqlCommand(str, sql1);
        //SqlDataAdapter da = new SqlDataAdapter(com);                
        //da.Fill(ds,"hrjob");        
        dbclass cl = new dbclass();
        cl.srchjobs(ds, str);
        DataTable a1 = new DataTable("a1");
        a1.Columns.Add("jobid",typeof(string));        
        a1.Columns.Add("location",typeof(string));         
        a1.Columns.Add("jobdetails1",typeof(string));        
        a1.Columns.Add("jobdetails2",typeof(string));        
        DataRow drow;
        int k = ds.Tables["hrjob"].Rows.Count;
        int l=0;
        while(l<k)
        {
            drow = a1.NewRow();
            drow["jobid"]=ds.Tables["hrjob"].Rows[l]["jobid"];
            drow["location"]=ds.Tables["hrjob"].Rows[l]["location"];
            drow["jobdetails1"] = ds.Tables["hrjob"].Rows[l]["name"] + ", Min Exp : " + ds.Tables["hrjob"].Rows[l]["exp_req"]+ ", Salary : "+ds.Tables["hrjob"].Rows[l]["salary"];
            drow["jobdetails2"] = ds.Tables["hrjob"].Rows[l]["position"] + ", Degree : " + ds.Tables["hrjob"].Rows[l]["qual1"] + ", " + ds.Tables["hrjob"].Rows[l]["qual2"] + ", Preferred Skills  = " + ds.Tables["hrjob"].Rows[l]["skill1"] + ", " + ds.Tables["hrjob"].Rows[l]["skill2"];
            a1.Rows.Add(drow);
            l++;
        }
        if (k == 0 && a == false)
        {
            grid.Visible = true;
            grid.Text = "No Jobs Found.";
        }
        if (a == true && k>0)
        {
            grid.Visible = true;
            grid.Text = "There are " + k + " Jobs in your Network.";
        }
        ds.Tables.Add(a1);
        //ds.Tables["a1"].Columns.Add() = ds.Tables["hr_jobpost"].Columns["location"];        
        GridView1.DataSource = ds.Tables["a1"];
        GridView1.DataBind();
        //sql1.Close();
    }

    protected void searchjobs_Click(object sender, EventArgs e)
    {
        string sr = skill.Text.Trim() + "=" + location.Text.Trim();//Request.QueryString["skill"].ToString().Trim();
        int i = 0;
        int j = 0;
        grid.Visible = false;
        applied_jobs.Visible = false;
            if (sr != "=")
            {
                char ch1 = '=';//{',','l','o','c','='};
                string[] s = sr.Split(ch1);
                //while (j < 2)
                //{
                //sub1[j][] ;
                string[] sub1 = s[j].Split(',');
                s[j] = "";
                //int j;
                while (i < 10)
                {
                    try
                    {
                        sub1[i] = "'" + sub1[i].Trim().ToLower() + "'";
                        sub1[i + 1] = sub1[i + 1];
                        s[0] = s[0] + sub1[i] + ",";
                        i++;
                    }
                    catch
                    {
                        s[0] = s[0] + sub1[i];
                        i = 11;
                    }
                }
                string[] sub2 = s[1].Split(',');
                s[1] = "";
                i = 0;
                while (i < 10)
                {
                    try
                    {
                        sub2[i] = "'" + sub2[i].Trim().ToLower() + "'";
                        sub2[i + 1] = sub2[i + 1];
                        s[1] = s[1] + sub2[i] + ",";
                        i++;
                    }
                    catch
                    {
                        s[1] = s[1] + sub2[i];
                        i = 11;
                    }
                    //}
                }
                /*string[] sa = sr.Split(",", 4, StringSplitOptions.RemoveEmptyEntries);
                int j=0;
                while (j < s.Length)
                {
                    if (s[j].Contains("loc="))                 
                        s[j] = s[j].Remove(0, 4);                
                    j++;
                }*/
                if (s[1].ToString() == "''")
                    str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ")) and hr_jobpost.hrid=hr_profile.hrid and active=1";
                else if (s[0].ToString() == "''")
                    str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where loc in (" + s[1].ToString() + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                else
                    str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ")) and loc in (" + s[1].ToString() + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                int val1 = 0;
                int val2 = 0;
                if(DropDownList1.SelectedIndex > 0)
                {
                    val1 = DropDownList1.SelectedIndex;
                    if(s[1].ToString()=="''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or functional_area=" + val1 + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else if (s[0].ToString() == "''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where loc in ("+s[1].ToString()+") and functional_area=" + val1 + " and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or functional_area=" + val1 + ") and loc in (" + s[1].ToString() + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    //str = DropDownList1.Text.ToString();
                }
                if(DropDownList2.SelectedIndex > 0)
                {
                    val2 = DropDownList2.SelectedIndex;
                    if (s[1].ToString() == "''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or industry_type=" + val2 + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else if (s[0].ToString() == "''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where loc in (" + s[1].ToString() + ") and industry_type=" + val2 + " and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or industry_type=" + val2 + ") and loc in (" + s[1].ToString() + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                }
                if(val1*val2 > 0)
                {
                    if (s[1].ToString() == "''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or functional_area=" + val1 + " or industry_type=" + val2 + " ) and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else if (s[0].ToString() == "''")
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where loc in (" + s[1].ToString() + ") or (functional_area=" + val1 + " and industry_type=" + val2 + ") and hr_jobpost.hrid=hr_profile.hrid and active=1";
                    else
                        str = "select hr_jobpost.hrid as hrid,jobid,name,loc as location,exp_req,position,qual1,qual2,skill1,skill2,salary from hr_jobpost,hr_profile where (skill1 in (" + s[0].ToString() + ") or skill2 in (" + s[0].ToString() + ") or functional_area=" + val1 + " or industry_type=" + val2 + " ) and loc in (" + s[1].ToString() + ")  and hr_jobpost.hrid=hr_profile.hrid and active=1";
                }                
                Session["str1"] = str;
                srjobs();                 
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdBind")
        {
            LinkButton l = (LinkButton)e.CommandSource;              
            Response.Redirect("Jobdetails.aspx?jid=" + l.Text + "");
        }
        if (e.CommandName == "apply")
        {
            if (!sessvalid())
                Response.Redirect("../JS/js_login.aspx");
            LinkButton l1 = (LinkButton)e.CommandSource;
            string k = l1.ToolTip;            
            sql1.Open();
            string st = "insert into jobs_applied values("+ Session["jname"].ToString()+","+ l1.ToolTip +",0)";
            SqlCommand com = new SqlCommand(st, sql1);
            try
            {
                com.ExecuteNonQuery();
                applied_jobs.Visible = true;
                applied_jobs.Text = "       You have Successfully Applied for the Job, with JobID : " + k.ToString() + ".       ";
            }
            catch
            {
                applied_jobs.Visible = true;
                applied_jobs.Text = "                    You have alresdy Applied for the Job.               ";
            }
            finally
            {
                sql1.Close();
            }
        }
    }
    
    private bool sessvalid()
    {
        try
        {
            string a = Session["jname"].ToString();
        }
        catch
        {
            return false;
        }
        return true;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        str = Session["str1"].ToString();
        srjobs();
        GridView1.DataSource = ds.Tables["hrjob"];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../anyuser/logout.aspx");
    }
}
