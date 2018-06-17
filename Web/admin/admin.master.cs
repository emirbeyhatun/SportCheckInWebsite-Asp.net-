using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
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
            

        }
        else
        {

            Response.Redirect("default.aspx");
        }
    }
}
