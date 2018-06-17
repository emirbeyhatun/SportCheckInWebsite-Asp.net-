using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class admin_program : System.Web.UI.Page
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            RadDatePicker3.SelectedDate = DateTime.Now;
            RadDatePicker1.SelectedDate = DateTime.Now;
        }
    }
   
    protected void RadButton4_Click(object sender, EventArgs e)
    {
        if (RadDatePicker3.SelectedDate==null)
        {
            DataList1.DataBind();
        }
        else
        {
            SqlDataSource3.SelectCommand = "SELECT [id], [ders_ad], salon_ad,[ders_tarih], [ders_saat], [ders_katilimci_sayi], [ders_katilan_sayi], [ders_dolu] FROM [dersler] where ders_tarih='" + RadDatePicker3.SelectedDate.Value.ToString("dd.MM.yyyy") + "' order by cast(replace(ders_saat,'-','') as integer) asc";
            DataList1.DataBind();
        }
      
    
    }
   
    protected void RadButton1_Click1(object sender, EventArgs e)
    {
      
        
        
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("select count(*) as sayi from dersler where salon_ad=@salon_ad and ders_tarih=@ders_tarih and ders_saat=@ders_saat", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@salon_ad", ddlSalon.SelectedItem.Text));
                cmd2.Parameters.Add(new SqlParameter("@ders_tarih",  RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy")));
                cmd2.Parameters.Add(new SqlParameter("@ders_saat", ddlDersSaat.Text));
                con2.Open();
                SqlDataReader dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    int x = int.Parse(dr["sayi"].ToString());
                    if (x > 0)
                    {
                        lbl_error.Text =  RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "  tarihinin  " + ddlDersSaat.Text + " saatinde ders tanımı yapılmıştır kayıt yapılamaz.";
                        lbl_success.Text = string.Empty;
                        return;
                    }

                }
                con2.Close();
                dr.Close();
            }
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("insert into dersler (salon_ad,ders_ad,ders_tarih,ders_saat,ders_katilimci_sayi,ders_tarih1) values (@salon_ad,@ders_ad,@ders_tarih,@ders_saat,@ders_katilimci_sayi,@ders_tarih1)", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@ders_ad", txtDersAd.Text));
                cmd2.Parameters.Add(new SqlParameter("@salon_ad", ddlSalon.SelectedItem.Text));
                cmd2.Parameters.Add(new SqlParameter("@ders_tarih", RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy")));
                cmd2.Parameters.Add(new SqlParameter("@ders_saat", ddlDersSaat.Text));
                cmd2.Parameters.Add(new SqlParameter("@ders_katilimci_sayi", txtKatilimciSayi.Text));

                cmd2.Parameters.Add(new SqlParameter("@ders_tarih1", DateTime.Now));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            DataList1.DataBind();
            lbl_error.Text = string.Empty;
            lbl_success.Text = "Kayıt Başarıyla tamamlandı";
        
      
    }
    protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Label lb_id = e.Item.FindControl("lbl_id") as Label;
        
        if (e.CommandName == "cmd_delete")
        {
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("delete from dersler  where id=@id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@id", lb_id.Text));

                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }


            DataList1.DataBind();
        }
       
    }
    
    
   
}