using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString());
        baglanti.Open();
        SqlCommand sorgula = new SqlCommand("Select * From tbl_user Where email='" + txt_email.Text + "'and password='" + txt_password.Text + "' and active_flag=1", baglanti);
        SqlDataReader droku = sorgula.ExecuteReader();

        if (droku.Read())
        {
            Response.Cookies["aid"].Value = droku["aid"].ToString();
            Response.Cookies["aid"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["email"].Value = droku["email"].ToString();
            Response.Cookies["email"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["password"].Value = droku["password"].ToString();
            Response.Cookies["password"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["name"].Value = droku["name"].ToString();
            Response.Cookies["name"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["surname"].Value = droku["surname"].ToString();
            Response.Cookies["surname"].Expires = DateTime.Now.AddHours(1);
            Response.Redirect("../User/Default.aspx");
        }
        else
        {

            lbluyarı.Text = "Kullanıcı Bulunamadı";
        }
    }
}