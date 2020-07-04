using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentDelete : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        //get the connection string
        string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
        //delete query
        string query = "Delete from Student where  ID=@ID  ";
        //add objects
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        //redirect page
        Response.Redirect("Students.aspx");

    }

    
}