using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentElectionSystem
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = conString;
            sqlConnection.Open();


            SqlCommand sqlCommand1 = new SqlCommand();
            sqlCommand1.Connection = sqlConnection;
            sqlCommand1.CommandType = System.Data.CommandType.Text;
            sqlCommand1.CommandText = "SELECT MAX(votes) from candidate_info WHERE post=@post1";
            sqlCommand1.Parameters.AddWithValue("@post1", "Student President");
            int votesSP = Convert.ToInt32(sqlCommand1.ExecuteScalar());
            sqlCommand1.CommandText = "SELECT name FROM candidate_info WHERE votes = @votes1 AND post = @post1";
            sqlCommand1.Parameters.AddWithValue("@votes1", votesSP);

            String candSP = Convert.ToString(sqlCommand1.ExecuteScalar());
            imgSP.ImageUrl = Photo(candSP);
            lbcandSP.Text = candSP;
            lbvoteSP.Text = votesSP.ToString();


            SqlCommand sqlCommand2 = new SqlCommand();
            sqlCommand2.Connection = sqlConnection;
            sqlCommand2.CommandType = System.Data.CommandType.Text;
            sqlCommand2.CommandText = "SELECT MAX(votes) from candidate_info WHERE post=@post2";
            sqlCommand2.Parameters.AddWithValue("@post2", "Student Treasurer");
            int votesST = Convert.ToInt32(sqlCommand2.ExecuteScalar());
            sqlCommand2.CommandText = "SELECT name FROM candidate_info WHERE votes = @votes2 AND post = @post2";
            sqlCommand2.Parameters.AddWithValue("@votes2", votesST);

            String candST = Convert.ToString(sqlCommand2.ExecuteScalar());
            imgST.ImageUrl = Photo(candST);
            lbcandST.Text = candST;
            lbvoteST.Text = votesST.ToString();



            SqlCommand sqlCommand3 = new SqlCommand();
            sqlCommand3.Connection = sqlConnection;
            sqlCommand3.CommandType = System.Data.CommandType.Text;
            sqlCommand3.CommandText = "SELECT MAX(votes) from candidate_info WHERE post=@post3";
            sqlCommand3.Parameters.AddWithValue("@post3", "Events Head");
            int votesEH = Convert.ToInt32(sqlCommand3.ExecuteScalar());
            sqlCommand3.CommandText = "SELECT name FROM candidate_info WHERE votes = @votes3 AND post = @post3";
            sqlCommand3.Parameters.AddWithValue("@votes3", votesEH);

            String candEH = Convert.ToString(sqlCommand3.ExecuteScalar());
            imgEH.ImageUrl = Photo(candEH);
            lbcandEH.Text = candEH;
            lbvoteEH.Text = votesEH.ToString();

        }

        protected void BtLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected String Photo(String Name)
        {

            if(Name == "Lauren Cox")
            {
                return "~/Images/lauren-cox.jpg";
            }
            else if (Name == "Jessie Barnett")
            {
                return "~/Images/jessie-barnett.jpg";
            }
            else if (Name == "Terry Fletcher")
            {
                return "~/Images/terry-fletcher.jpg";
            }
            else
            {
                return " ";
            }
        }
    }
}
