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
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("select ID,CourseName,Description from Course where ID=@ID", con);
                cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        TxtID.Text = rdr["ID"].ToString();
                        TxtCourseName.Text = rdr["CourseName"].ToString();
                        TxtDescription.Text = rdr["Description"].ToString();
                    }
                }
                rdr.Close();
            }
        }catch(Exception ee)
        { }

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {

            //get the connection string
            string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
            //update query
            string query = "Update Course set CourseName=@CourseName,Description=@Description where ID=@ID";
            //create objects
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            //add valus to text box
            cmd.Parameters.AddWithValue("@CourseName", TxtCourseName.Text);
            cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
            cmd.Parameters.AddWithValue("@ID", TxtID.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("Courses.aspx");


        }

    }

}
