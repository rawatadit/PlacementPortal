using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_filter_students : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string crse = "select";
            if(Request.QueryString["course"]!= "" && Request.QueryString["course"]!=null)
            {
                crse = Request.QueryString["course"];
            }
            string yr = "2016";
            if(Request.QueryString["pyear"] != "" && Request.QueryString["pyear"]!=null)
            {
                yr = Request.QueryString["pyear"];
            }
            string ten = "0";
            if(Request.QueryString["tenth"] != "" && Request.QueryString["tenth"]!=null)
            {
                ten = Request.QueryString["tenth"];
            }
            string twelve = "0";
            if(Request.QueryString["twelveth"] != "" && Request.QueryString["twelveth"]!=null)
            {
                twelve = Request.QueryString["twelveth"];
            }
            string graduation = "0";
            if (Request.QueryString["pyear"] != "" && Request.QueryString["pyear"] != null)            
            {
                graduation = Request.QueryString["graduation"];
            }

            DropDownList1.SelectedValue = crse;
            tbyear.Text = yr;
            tbtenth.Text = ten;
            tbtwelve.Text = twelve;
            tbgrad.Text = graduation;
            BindData(crse, yr, ten, twelve, graduation);
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string crse = DropDownList1.SelectedValue;
        string yr = tbyear.Text;
        string ten = tbtenth.Text;
        string twelve = tbtwelve.Text;
        string graduation = tbgrad.Text;
        Response.Redirect("filter-students.aspx?course="+crse+"&year="+yr+"&tenth="+ten+"&twelveth="+twelve+"&graduation="+graduation+"");
        
    }

    public void exportToExcel(DataTable dt)
    {
        if(dt.Rows.Count>0)
        {
            string filename = "StudentRecord.xls";
            StringWriter tw = new StringWriter();

            System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw);
            DataGrid dgGrid = new DataGrid();
            dgGrid.DataSource = dt;
            dgGrid.DataBind();

            dgGrid.RenderControl(hw);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AppendHeader("Content-Disposition", "attachment; filename = " + filename + "");
            this.EnableViewState = false;
            Response.Write(tw.ToString());
            Response.End();

        }
    }

    public DataTable getstu(string crse, string yr, string ten, string twelve, string grad)
    {
        SqlCommand cmd = new SqlCommand("select name, regno, email from Students where course = '" + crse + "' AND batch = '" + yr + "' AND tnper >= " + ten + " AND twper >= " + twelve + " AND grper >= " + grad + " order by Id desc", con);

        DataTable dt = new DataTable();
        try
        {
            if(cmd.Connection.State != ConnectionState.Open)
            {
                cmd.Connection.Open();
            }
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        catch(Exception ex)
        {
            throw new Exception("Invalid Command "+ex.Message);
        }
        finally
        {
            if(cmd.Connection.State != ConnectionState.Closed)
            {
                cmd.Connection.Close();
            }
        }

        return dt;
    }

    void BindData(string crse, string yr, string ten, string twelve, string graduation)
    {
        GridView1.DataSource = getstu(crse, yr, ten, twelve, graduation);
        GridView1.DataBind();
    }
    protected void excelExport_Click(object sender, EventArgs e)
    {
        DataTable ddt = getstu(DropDownList1.SelectedValue, tbyear.Text, tbtenth.Text, tbtwelve.Text, tbgrad.Text);
  
        if(ddt!=null && ddt.Rows.Count>0)
        {
            exportToExcel(ddt);
        }
        else
        {
            Response.Write("Error!");
        }
    }
}