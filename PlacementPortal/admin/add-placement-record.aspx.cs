using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_add_placement_record : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label11.Text = "";

        try
        {
            SqlCommand cmd = new SqlCommand("insert into Placement(name,course, session, company, email, mobile) values ('" + tbname.Text + "','" + DropDownList1.SelectedValue + "','" + tbbatch.Text + "','" + tbcompany.Text + "','" + tbemail.Text + "','" + tbnumber.Text + "')", con);
            if (con.State == ConnectionState.Closed)
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
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Successfully Added";
        }

        catch(Exception ex)
        {
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = ex.Message;
        }
    }
}