using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["aid"].Expires = DateTime.Now.AddHours(-1);
        Response.Redirect("../tr/login.aspx");
    }
}