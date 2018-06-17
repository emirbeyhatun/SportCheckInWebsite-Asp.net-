using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_usprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (txt_yeni_sifre.Text == txt_yeni_sifre_tekrar.Text)
        {
            SqlConnection baglanti = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString());
            baglanti.Open();
            SqlCommand sorgula = new SqlCommand("update  tbl_user set password=@password where aid=@aid", baglanti);
            sorgula.Parameters.Add(new SqlParameter("@password", txt_yeni_sifre.Text));
            sorgula.Parameters.Add(new SqlParameter("@aid", Request.Cookies["aid"].Value.ToString()));

            int sayi = sorgula.ExecuteNonQuery();

            if (sayi > 0)
            {
                lbBilgi.Text = "Şifre başarıyla güncellendi";
            }
            else
            {
                lbBilgi.Text = "İşlem başarısız hata oluştu!!!";

            }
        }
        else
        {
            lbBilgi.Text = "Girilen iki şifre birbiriyle uymuyor hata oluştu!!!";
        }

    }
}