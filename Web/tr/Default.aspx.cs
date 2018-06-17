using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    public string metin_kisalt_yan(string metin)
    {

        metin = Regex.Replace(metin, @"<(.\n)*?>", string.Empty);

        if (metin.Length > 185) metin = metin.Substring(0, 185);

        metin = metin + "...";

        return metin;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField2.Value = DateTime.Now.ToString("dd.MM.yyyy");
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + DateTime.Now.ToString("dd.MM.yyyy") + "'";
        rptders.DataSourceID = "SqlDataSource1";
        rptders.DataBind();
    }
}