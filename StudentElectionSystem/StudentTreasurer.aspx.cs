using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentElectionSystem
{
    public partial class WebForm2 : System.Web.UI.Page
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
            Session["Student Treasurer"] = candidate;
            Response.Redirect("EventHead.aspx");
        }
    }
}