using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentElectionSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = conString;
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.CommandText = "SELECT COUNT(1) FROM voter_info WHERE enroll_num=@enrollment AND name = @name AND semester=@sem";
            sqlCommand.Parameters.AddWithValue("@enrollment", Enroll.Text);
            sqlCommand.Parameters.AddWithValue("@name", Name.Text);
            sqlCommand.Parameters.AddWithValue("@sem", Convert.ToInt32(Semester.Text));
            int count = Convert.ToInt32(sqlCommand.ExecuteScalar());

            SqlCommand sqlCommand2 = new SqlCommand();
            sqlCommand2.Connection = sqlConnection;
            sqlCommand2.CommandType = System.Data.CommandType.Text;
            sqlCommand2.CommandText = "SELECT logged_in FROM voter_info WHERE enroll_num=@enrollment2 AND name = @name2 AND semester=@sem2";
            sqlCommand2.Parameters.AddWithValue("@enrollment2", Enroll.Text);
            sqlCommand2.Parameters.AddWithValue("@name2", Name.Text);
            sqlCommand2.Parameters.AddWithValue("@sem2", Convert.ToInt32(Semester.Text));
            int Logged_in = Convert.ToInt32(sqlCommand2.ExecuteScalar());

            SqlCommand sqlCommand4 = new SqlCommand();
            sqlCommand4.Connection = sqlConnection;
            sqlCommand4.CommandType = System.Data.CommandType.Text;
            sqlCommand4.CommandText = "SELECT voted from voter_info WHERE enroll_num=@enroll1";
            sqlCommand4.Parameters.AddWithValue("@enroll1", Enroll.Text);
            int voted = Convert.ToInt32(sqlCommand4.ExecuteScalar());



            if (count == 1 && voted == 0)
            {
                if (Logged_in == 0)
                {
                    Session["enroll"] = Enroll.Text;

                    SqlCommand sqlCommand3 = new SqlCommand();
                    sqlCommand3.Connection = sqlConnection;
                    sqlCommand3.CommandType = System.Data.CommandType.Text;
                    sqlCommand3.CommandText = "UPDATE voter_info SET logged_in=@login WHERE enroll_num=@enrollment3";
                    sqlCommand3.Parameters.AddWithValue("@enrollment3", Enroll.Text);
                    sqlCommand3.Parameters.AddWithValue("@login", 1);
                    sqlCommand3.ExecuteNonQuery();
                    sqlConnection.Close();

                    Response.Redirect("StudentPresident.aspx");
                }
                else //Alert box that displays user already logged in
                {
                    Response.Write("<script>alert('User already logged in!');</script>");
                }
            }
            else if(count==1 && voted == 1) //Alert box that displays already voted
            {
                
                Response.Write("<script>alert('Already voted!');</script>");
            }
            else //Alert box that displays wrong credentials
            {
                Response.Write("<script>alert('Wrong credentials!');</script>");
            }
        }

    }

}