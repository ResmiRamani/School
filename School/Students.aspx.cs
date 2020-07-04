using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    //private object txtFilter;
    //private object dgvStudent;

    protected void Page_Load(object sender, EventArgs e)
    {
        //get the connection string
        string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
        string query = "SELECT id,Name,Type from Student";
        //create objects
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query);
        SqlDataAdapter sdas = new SqlDataAdapter();
        cmd.Connection = con;
        sdas.SelectCommand = cmd;
        DataSet ds = new DataSet();
        //fill datagrid
        sdas.Fill(ds);
        dgvStudent.DataSource = ds.Tables[0];
        dgvStudent.DataBind();

            
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //redirect page
        Response.Redirect("AddStudent.aspx");
    }
    protected void btnFilter_click(object sender, EventArgs e)
    {
        //get the connection string
        string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
        string query = "SELECT id,Name,Type from Student where Name like @Name";
        //create object
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@Name", txtFilter.Text);
        SqlDataAdapter sdas = new SqlDataAdapter();
        cmd.Connection = con;
        sdas.SelectCommand = cmd;
        DataSet ds = new DataSet();
        sdas.Fill(ds);
        //fill datagrid
        dgvStudent.DataSource = ds.Tables[0];
        dgvStudent.DataBind();

    }

}