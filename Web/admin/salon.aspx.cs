using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_salon : System.Web.UI.Page
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadButton1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con2 = new SqlConnection(ConnStr))
        using (SqlCommand cmd2 = new SqlCommand("insert into  tbl_salon(name) values(@name)", con2))
        {
            cmd2.Parameters.Add(new SqlParameter("@name", txtSalon.Text));
            con2.Open();
            cmd2.ExecuteNonQuery();
            con2.Close();
        }

    }

  
}