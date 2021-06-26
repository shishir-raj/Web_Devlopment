using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ecom
{
    public partial class buynow : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();
            DataSet ds = new DataSet();
            string s = "select * from master_data where id='" + Session["id_obj"].ToString() + "'";
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0][3].ToString();
            Label2.Text = ds.Tables[0].Rows[0][1].ToString();
            Label3.Text = ds.Tables[0].Rows[0][2].ToString();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}