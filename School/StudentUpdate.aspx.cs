using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                //get the connection string
                string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("select ID,Name,Type,Address,Email,Age from Student where ID=@ID", con);
                //create object
                cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        TxtID.Text = rdr["ID"].ToString();
                        TxtName.Text = rdr["Name"].ToString();
                        TxtAddress.Text = rdr["Address"].ToString();
                        TxtType.Text = rdr["Type"].ToString();
                        TxtEmail.Text = rdr["Email"].ToString();
                        TxtAge.Text = rdr["Age"].ToString();

                    }
                }
                rdr.Close();
            }
        }catch(Exception ee)
        { }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        if(Page.IsValid)
        {
            //get the connection string
            string conStr = ConfigurationManager.ConnectionStrings["SchoolConStr"].ConnectionString;
            //update command
            string query = "Update Student set Name=@Name,Address=@Address,Type=@Type,Email=@Email,Age=@Age where ID=@ID";
            //create object
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            //add values to object
            cmd.Parameters.AddWithValue("@Name", TxtName.Text);
            cmd.Parameters.AddWithValue("@Address", TxtAddress.Text );
            cmd.Parameters.AddWithValue("@Type", TxtType.Text);
            cmd.Parameters.AddWithValue("@Email",TxtEmail.Text);
            cmd.Parameters.AddWithValue("@Age", TxtAge.Text);
            cmd.Parameters.AddWithValue("@ID",  TxtID.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            //redirect page
            Response.Redirect("Students.aspx");


        }
    }
}