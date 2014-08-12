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
using System.Data.SqlClient;

public partial class JS_SearchResume : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");
    string str;
    DataSet ds = new DataSet();

    protected void page_Preinit(object sender, EventArgs e)
    {
        try
        {
            string s = Session["jname"].ToString();
            //string s2 = Session["comp"].ToString().Trim();
            //if (s2 == "no")
            //{
              //  Response.Redirect("../JS/SearchResume.aspx");
            //}
        }
        catch (Exception)
        {
            Server.Transfer("../JS/js_login.aspx", true);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        grid.Visible = false;
        result.Visible = false;
        if (!IsPostBack)
        {
            string a;
            ListItem l1;
            for (int i = 0; i < 31; i++)
            {
                a = i + "";
                l1 = new ListItem(a, a);
                experience.Items.Add(l1);
            }
            l1 = new ListItem("30+", "31");
            experience.Items.Add(l1);
        }
    }
    protected void searchjobs_Click(object sender, EventArgs e)
    {
        string sr = skill.Text.ToString().Trim();
        string[] sub1 = sr.Split(',');
        sr = "";
        int i = 0;
        while (i < 10)
        {
            try
            {
                sub1[i] = "'" + sub1[i].Trim().ToLower() + "'";
                sub1[i + 1] = sub1[i + 1];
                sr = sr + sub1[i] + ",";
                i++;
            }
            catch
            {
                if (i == 0)
                    sr = sub1[0];                
                sr = sr + sub1[i];
                i = 11;
            }
        }
        str = "select jsid,qualification,total_exp,months,current_industry,functional_area,skill1,skill2,skill3 from js_profile where (skill1 in (" + sr + ") or skill2 in (" + sr + ") or skill3 in (" + sr + ")) and total_exp>=" + experience.SelectedIndex + " and hr_login.jsid not in (" + Session["jname"].ToString() + ")"; //and js_login.jsid not in (select linkid from links where jsid=" + Session["jname"].ToString() + ")";
        Session["str1"] = str;
        srresume();
    }
    protected void srresume()
    {
        sql1.Open();
        SqlCommand com = new SqlCommand(str, sql1);
        SqlDataAdapter da = new SqlDataAdapter(com);        
        da.Fill(ds, "jsprof");        
        DataTable a1 = new DataTable("a1");
        a1.Columns.Add("jsid", typeof(string));
        //a1.Columns["jobid"] = (DataColumn)ds.Tables["hrjob"].Columns["jobid"];
        a1.Columns.Add("qualification", typeof(string));        
        //a1.Columns.Add("email", typeof(string));        
        a1.Columns.Add("experience", typeof(string));
        //    ds.Tables["hrjob"].Columns["position"] + ", Degree : " + ds.Tables["hrjob"].Columns["qual1"] + ", " + ds.Tables["hrjob"].Columns["qual2"] + ", Preferred Skills  = " + ds.Tables["hrjob"].Columns["skill1"] + ", " + ds.Tables["hrjob"].Columns["skill2"];
        a1.Columns.Add("prof_details", typeof(string));
        a1.Columns.Add("skills", typeof(string));
        DataRow drow;
        int k = ds.Tables["jsprof"].Rows.Count;
        int l = 0;
        while (l < k)
        {
            drow = a1.NewRow();
            drow["jsid"] = ds.Tables["jsprof"].Rows[l]["jsid"];
            drow["qualification"] = ds.Tables["jsprof"].Rows[l]["qualification"];
            //drow["email"] = ds.Tables["jsprof"].Rows[l]["email"];
            drow["experience"] = ds.Tables["jsprof"].Rows[l]["total_exp"] + " Years, " + ds.Tables["jsprof"].Rows[l]["months"] + " Months";
            drow["prof_details"] = "Industry-" + ds.Tables["jsprof"].Rows[l]["current_industry"] + ", Functional Area-" + ds.Tables["jsprof"].Rows[l]["functional_area"];
            drow["skills"] = ds.Tables["jsprof"].Rows[l]["skill1"] + ", " + ds.Tables["jsprof"].Rows[l]["skill2"] + ", " + ds.Tables["jsprof"].Rows[l]["skill3"];
            a1.Rows.Add(drow);
            l++;
        }
        if (k == 0)
        {
            grid.Visible = true;
            grid.Text = "No Profiles Found matching your Criteria.";
        }
        ds.Tables.Add(a1);
        //ds.Tables["a1"].Columns.Add() = ds.Tables["hr_jobpost"].Columns["location"];        
        GridView1.DataSource = ds.Tables["a1"];
        GridView1.DataBind();
        sql1.Close();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdBind")
        {
            LinkButton l = (LinkButton)e.CommandSource;
            Response.Redirect("JSDetails.aspx?jid=" + l.Text + "");
        }
        if (e.CommandName == "apply")
        {
            LinkButton l1 = (LinkButton)e.CommandSource;
            string k = l1.ToolTip.ToString();
            string s = "insert into links values(" + Session["jname"].ToString() + "," + k + ")";
            sql1.Open();
            SqlCommand com = new SqlCommand(s, sql1);
            string s1 = "select linkid from links where jsid=" + Session["jname"].ToString() + " and linkid=" + k;
            SqlCommand com1 = new SqlCommand(s1,sql1);
            SqlDataReader dr = com1.ExecuteReader();
            bool found = false;
            while (dr.Read())
            {
                found = true;
                result.Text = " Already in the Network. ";
                result.Visible = true;
            }
            dr.Close();
            if (found == false)
            {
                if (com.ExecuteNonQuery() > 0)
                {
                    result.Text = " Successfully Added to Network. ";
                    result.Visible = true;
                }
            }
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        str = Session["str1"].ToString();
        srresume();
        GridView1.DataSource = ds.Tables["jsprof"];
        GridView1.DataBind();
    }
}