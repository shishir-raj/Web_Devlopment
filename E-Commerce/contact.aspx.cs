using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecom
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Thank you for your feedback!" + "Response recorded successfully";
            
        }
    }
}