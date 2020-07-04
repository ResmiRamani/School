using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get the connection string
            string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
            //string query = "Update Student set Name=@Name,Address=@Address,Type=@Type,Email=@Email,Age=@Age where ID=@ID";

            string query = "Insert into Student (ID, Name, Address,Type,Email,Age) values(@ID, @Name, @Address,@Type,@Email,@Age) ";
            //create objects
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            //add values
            cmd.Parameters.AddWithValue("@ID", TxtID.Text);
            cmd.Parameters.AddWithValue("@Name", TxtName.Text);
            cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
            cmd.Parameters.AddWithValue("@Type", TxtType.Text);
            cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
            cmd.Parameters.AddWithValue("@Age", TxtAge.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            //direct page
            Response.Redirect("Students.aspx");


        }
    }
}