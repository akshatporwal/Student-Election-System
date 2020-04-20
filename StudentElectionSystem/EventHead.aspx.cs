using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentElectionSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtvCandA_Click(object sender, EventArgs e)
        {
            VoteSubmit("Lauren Cox");
        }
        protected void BtvCandB_Click(object sender, EventArgs e)
        {
            VoteSubmit("Jessie Barnett");

        }
        protected void BtvCandC_Click(object sender, EventArgs e)
        {
            VoteSubmit("Terry Fletcher");
        }

        protected void VoteSubmit(String candidate)
        {
            String stud_events = candidate;
            String stud_pres = Session["Student President"].ToString();
            String stud_tres = Session["Student Treasurer"].ToString();
            String voter_enroll = Session["enroll"].ToString();
            String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = conString;
            sqlConnection.Open();

                SqlCommand sqlCommand1 = new SqlCommand();
                sqlCommand1.Connection = sqlConnection;
                sqlCommand1.CommandType = System.Data.CommandType.Text;
                sqlCommand1.CommandText = "SELECT votes from candidate_info WHERE name=@name1 AND post=@post1";
                sqlCommand1.Parameters.AddWithValue("@name1", stud_pres);
                sqlCommand1.Parameters.AddWithValue("@post1", "Student President");
                int votesSP = Convert.ToInt32(sqlCommand1.ExecuteScalar());
                votesSP += 1;
                sqlCommand1.CommandText = "UPDATE candidate_info SET votes=@votes WHERE name = @name2 AND post = @post2";
                sqlCommand1.Parameters.AddWithValue("@name2", stud_pres);
                sqlCommand1.Parameters.AddWithValue("@post2", "Student President");
                sqlCommand1.Parameters.AddWithValue("@votes", votesSP);
                sqlCommand1.ExecuteNonQuery();
                 
                SqlCommand sqlCommand2 = new SqlCommand();
                sqlCommand2.Connection = sqlConnection;
                sqlCommand2.CommandType = System.Data.CommandType.Text;
                sqlCommand2.CommandText = "SELECT votes from candidate_info WHERE name=@name3 AND post=@post3";
                sqlCommand2.Parameters.AddWithValue("@name3", stud_tres);
                sqlCommand2.Parameters.AddWithValue("@post3", "Student Treasurer");
                int votesST = Convert.ToInt32(sqlCommand2.ExecuteScalar());
                votesST += 1;
                sqlCommand2.CommandText = "UPDATE candidate_info SET votes=@votes WHERE name = @name4 AND post = @post4";
                sqlCommand2.Parameters.AddWithValue("@name4", stud_tres);
                sqlCommand2.Parameters.AddWithValue("@post4", "Student Treasurer");
                sqlCommand2.Parameters.AddWithValue("@votes", votesST);
                sqlCommand2.ExecuteNonQuery();

                SqlCommand sqlCommand3 = new SqlCommand();
                sqlCommand3.Connection = sqlConnection;
                sqlCommand3.CommandType = System.Data.CommandType.Text;
                sqlCommand3.CommandText = "SELECT votes from candidate_info WHERE name=@name5 AND post=@post5";
                sqlCommand3.Parameters.AddWithValue("@name5", stud_events);
                sqlCommand3.Parameters.AddWithValue("@post5", "Events Head");
                int votesEH = Convert.ToInt32(sqlCommand3.ExecuteScalar());
                votesEH += 1;
                sqlCommand3.CommandText = "UPDATE candidate_info SET votes=@votes WHERE name = @name6 AND post = @post6";
                sqlCommand3.Parameters.AddWithValue("@name6", stud_events);
                sqlCommand3.Parameters.AddWithValue("@post6", "Events Head");
                sqlCommand3.Parameters.AddWithValue("@votes", votesEH);
                sqlCommand3.ExecuteNonQuery();

                SqlCommand sqlCommand4 = new SqlCommand();
                sqlCommand4.Connection = sqlConnection;
                sqlCommand4.CommandType = System.Data.CommandType.Text;
                sqlCommand4.CommandText = "UPDATE voter_info SET voted=@voted WHERE enroll_num=@enroll2";
                sqlCommand4.Parameters.AddWithValue("@voted", 1);
                sqlCommand4.Parameters.AddWithValue("@enroll2", voter_enroll);
                sqlCommand4.ExecuteNonQuery();

                
            
            
            SqlCommand sqlCommand5 = new SqlCommand();
            sqlCommand5.Connection = sqlConnection;
            sqlCommand5.CommandType = System.Data.CommandType.Text;
            sqlCommand5.CommandText = "UPDATE voter_info SET logged_in=@login WHERE enroll_num=@enrollment3";
            sqlCommand5.Parameters.AddWithValue("@enrollment3", voter_enroll);
            sqlCommand5.Parameters.AddWithValue("@login", 0);
            sqlCommand5.ExecuteNonQuery();
            sqlConnection.Close();

            Response.Redirect("Result.aspx");
        }
    }
}