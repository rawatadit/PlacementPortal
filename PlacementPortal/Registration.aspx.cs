using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public static int checkroll(string r)
    {
        int chk = 0;
        SqlCommand cmd = new SqlCommand("select regno from Students", con);

        if(con.State != ConnectionState.Open)
        {
            con.Open();
        }
        if(con.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            
            while(dr.Read())
            {
                if(r==dr["regno"].ToString().Trim())
                {
                    chk = 1;
                }
            }
            dr.Close();
        }
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }

            return chk;
        
    }

    public static int checkmail(string r)
    {
        int chk = 0;

        SqlCommand cmd = new SqlCommand("Select email from Students", con);

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        if (con.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (r == dr["email"].ToString().Trim())
                {
                    chk = 1;
                }               

            }
            dr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }

        return chk;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(checkroll(tbroll.Text)==0)
        {
            if(checkmail(tbemail.Text)==0)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("insert into Students(name, email, password, regno, course, batch, mob) values ('" + tbname.Text + "', '" + tbemail.Text + "','" + tbpass.Text + "','" + tbroll.Text + "','" + DropDownList1.SelectedValue +"','" + tbbatch.Text + "','" + tbnumber.Text + "')",con);
                    if(con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    if(con.State == ConnectionState.Open)
                    {
                        cmd.ExecuteNonQuery();
                    }
                    if(con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }

                    Response.Redirect("Log-in.aspx?q=success");
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("Email already registered");
            }
        }
        else
        {
            Response.Write("Student already registered for this roll number");
        }
    }
}