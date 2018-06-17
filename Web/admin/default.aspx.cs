using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_default : System.Web.UI.Page
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
   
    protected void RadButton2_Click(object sender, EventArgs e)
    {

        if (Request.Cookies["aid"] == null)
        {
           
            using (SqlConnection con = new SqlConnection(ConnStr))
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_admin_user", con))
            {
                con.Open();
                SqlDataReader dataReader = cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    if (txt_email.Text == dataReader["username"].ToString() && txt_password.Text == dataReader["password"].ToString())
                    {
                        Response.Cookies["admn_full_name"].Value = dataReader["name"].ToString() + " " + dataReader["surname"].ToString();
                        Response.Cookies["admn_full_name"].Expires = DateTime.Now.AddDays(1);

                        Response.Cookies["admin_ad"].Value = dataReader["name"].ToString();
                        Response.Cookies["admin_ad"].Expires = DateTime.Now.AddDays(1);

                        Response.Cookies["admin_soyad"].Value = dataReader["surname"].ToString();
                        Response.Cookies["admin_soyad"].Expires = DateTime.Now.AddDays(1);

                        Response.Cookies["admin_email"].Value = dataReader["email"].ToString();
                        Response.Cookies["admin_email"].Expires = DateTime.Now.AddDays(1);

                        Response.Cookies["aid"].Value = dataReader["aid"].ToString();
                        Response.Cookies["aid"].Expires = DateTime.Now.AddDays(1);

                        Response.Redirect("dashboard.aspx");

                    }
                }
                con.Close();
                dataReader.Close();
            }
        }
        else
        {
            Response.Redirect("dashboard.aspx");
        }
    
    }
}