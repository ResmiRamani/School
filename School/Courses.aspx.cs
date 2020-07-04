using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get the connection string
        string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
        string query = "SELECT ID,CourseName,Description from Course";
        //create objects
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query);
        SqlDataAdapter sdas = new SqlDataAdapter();
        cmd.Connection = con;
        sdas.SelectCommand = cmd;
        DataSet ds = new DataSet();
        //to fill datagrid
        sdas.Fill(ds);
        dgvCourses.DataSource = ds.Tables[0];
        dgvCourses.DataBind();

    }
}