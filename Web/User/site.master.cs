using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_site : System.Web.UI.MasterPage
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

        login_check();
        
    }
    private void login_check()
    {
        if (Request.Cookies["aid"] != null)

        {
            //lbl_loged_in_text.Text = "Sayın " + Request.Cookies["full_name"].Value.ToString() + ", ";
            //lbl_logout.Visible = true;

        }
        else
        {

            Response.Redirect("../tr/login.aspx");
        }
    }


    
}
