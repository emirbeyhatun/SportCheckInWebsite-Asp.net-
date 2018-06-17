using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class signin : System.Web.UI.Page
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
      
    
        int sayi = 0;
        SqlConnection baglanti = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString());
        baglanti.Open();
        SqlCommand emailsorgu = new SqlCommand("Select  count(*) as sayi from tbl_user Where email='" + txtemail.Text + "'", baglanti);
        SqlDataReader dr = emailsorgu.ExecuteReader();



        while (dr.Read())
        {
            sayi = dr.GetInt32(0);
        }

        dr.Close();

        if (sayi <= 0)
        {
            SqlCommand sorgukaydet = new SqlCommand("Insert Into tbl_user (username,name,surname,gsm,email,password,active_flag) values ('" + txtadi.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + txttel.Text + "','" + txtemail.Text + "','" + txtsifre.Text + "','" + 0 + "')", baglanti);
            sorgukaydet.ExecuteNonQuery();

            lblkayit.Text = "Kaydınız Başarıyla Gerçekleşmiştir. Yönetici Onayından Sonra Üyeliğiniz Aktif Hale Gelecektir";
            
            baglanti.Close();
            baglanti.Dispose();
        }
        else
            lblkayit.Text = "Bu email daha önce sitemize kayıtlıdır.";
        txtemail.Text = "";
        txtadi.Text = "";
        txtsifre.Text = "";
        txttel.Text = "";
        TextBox4.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }


    }
