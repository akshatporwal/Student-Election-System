using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentElectionSystem
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Hyper1.Enabled = false;
            Hyper2.Enabled = false;
            Hyper3.Enabled = false;
            if (Request.Path.ToLower().EndsWith("studentpresident.aspx"))
            {
                Hyper1.ForeColor= System.Drawing.Color.Orange;
                Hyper1.Font.Bold = true;
                
            }
            else if (Request.Path.ToLower().EndsWith("studenttreasurer.aspx"))
            {
                Hyper2.ForeColor = System.Drawing.Color.Orange;
                Hyper2.Font.Bold = true;
                
            }
            else if (Request.Path.ToLower().EndsWith("eventhead.aspx"))
            {
                Hyper3.ForeColor = System.Drawing.Color.Orange;
                Hyper3.Font.Bold = true;
                
            }
        }
    }
}