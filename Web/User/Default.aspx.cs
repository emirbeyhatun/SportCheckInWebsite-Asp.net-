using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class User_Default : System.Web.UI.Page
{
    public int ders_katilan_sayi { get; set; }
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            RadDatePicker1.SelectedDate = DateTime.Now;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlDataSource2.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "'";
        rptDersler.DataSourceID = "SqlDataSource2";
        rptDersler.DataBind();
    }

    protected void rptDersler_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Label lb_id = e.Item.FindControl("lbl_id") as Label;
        Label lblTarih = e.Item.FindControl("lblTarih") as Label;
        if (e.CommandName == "cmdJoin")
        {
            RadMultiPage1.SelectedPageView.Visible = false;
            

            string hf_ders_id = string.Empty;
            string ders_tarih = string.Empty;

            ders_tarih = lblTarih.Text;
            hf_ders_id = lb_id.Text;
           


           




            List<string> idList = new List<string>();
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("select  *from dersler d where  d.ders_tarih=@ders_tarih", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@ders_tarih", ders_tarih));
                con2.Open();
                SqlDataReader datareader1 = cmd2.ExecuteReader();
                while (datareader1.Read())
                {
                    string id = datareader1["id"].ToString();
                    idList.Add(id);

                }

                datareader1.Close();
                con2.Close();
            }

            for (int i = 0; i < idList.Count; i++)
            {


                using (SqlConnection con2 = new SqlConnection(ConnStr))
                using (SqlCommand cmd2 = new SqlCommand("select  count(*)  as sayi from ders_uye where uye_id=@uye_id and ders_id=@ders_id", con2))
                {
                    cmd2.Parameters.Add(new SqlParameter("@uye_id", Request.Cookies["aid"].Value.ToString()));
                    cmd2.Parameters.Add(new SqlParameter("@ders_id", idList[i]));
                    con2.Open();
                    SqlDataReader datareader1 = cmd2.ExecuteReader();
                    while (datareader1.Read())
                    {
                        if (int.Parse(datareader1["sayi"].ToString()) > 0)
                        {

                            RadMultiPage1.SelectedIndex = 0;
                            RadMultiPage1.SelectedPageView.Visible = true;
                            SqlDataSource2.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "'";
                            rptDersler.DataSourceID = "SqlDataSource2";
                            rptDersler.DataBind();
                            return;
                        }

                    }

                    datareader1.Close();
                    con2.Close();
                }
            }

            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("select   *from dersler where  id=@ders_id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@ders_id", hf_ders_id));
                con2.Open();
                SqlDataReader datareader1 = cmd2.ExecuteReader();
                while (datareader1.Read())
                {
                    if (int.Parse(datareader1["ders_katilimci_sayi"].ToString()) == int.Parse(datareader1["ders_katilan_sayi"].ToString()))
                    {

                        RadMultiPage1.SelectedIndex = 1;
                        RadMultiPage1.SelectedPageView.Visible = true;
                        SqlDataSource2.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "'";
                        rptDersler.DataSourceID = "SqlDataSource2";
                        rptDersler.DataBind();
                        return;
                    }

                }

                datareader1.Close();
                con2.Close();
            }



            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("update   dersler set ders_katilan_sayi=ders_katilan_sayi+1  where id=@id", con2))
            {

                cmd2.Parameters.Add(new SqlParameter("@id", hf_ders_id));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("insert into ders_uye(uye_id,ders_id) values(@uye_id,@ders_id)", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@uye_id", Request.Cookies["aid"].Value.ToString()));
                cmd2.Parameters.Add(new SqlParameter("@ders_id", hf_ders_id));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            SqlDataSource2.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "'";
            rptDersler.DataSourceID = "SqlDataSource2";
            rptDersler.DataBind();

        }
        if (e.CommandName == "cmdCancel")
        {
            RadMultiPage1.SelectedPageView.Visible = false;
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("delete from ders_uye where ders_id=@ders_id and uye_id=@uye_id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@uye_id", Request.Cookies["aid"].Value.ToString()));
                cmd2.Parameters.Add(new SqlParameter("@ders_id", lb_id.Text));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("update  dersler set ders_katilan_sayi=ders_katilan_sayi-1  where id=@ders_id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@ders_id", lb_id.Text));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }

            SqlDataSource2.SelectCommand = "select *from dersler where salon_ad='" + DropDownList2.SelectedItem.Text + "' and ders_tarih='" + RadDatePicker1.SelectedDate.Value.ToString("dd.MM.yyyy") + "'";
            rptDersler.DataSourceID = "SqlDataSource2";
            rptDersler.DataBind();
        }

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        SqlDataSource4.SelectCommand = "select  tu.name,tu.surname,d.ders_ad  FROM ders_uye du,tbl_user tu,dersler d where d.salon_ad='" + ddlSalonBugun.SelectedItem.Text + "' and d.ders_saat='" + ddlsaatbugun.SelectedItem.Text + "' and  d.ders_tarih='" + DateTime.Now.ToString("dd.MM.yyyy") + "' and tu.aid=du.uye_id and d.id=du.ders_id order by  d.ders_ad ";
        Repeater1.DataSourceID = "SqlDataSource4";
        Repeater1.DataBind();
    }
   
    protected void rptDersler_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem)
            return;
       
       
        Label lb_id = e.Item.FindControl("lbl_id") as Label;
        RadButton btnCancel = e.Item.FindControl("btnCancel") as RadButton;
        using (SqlConnection con2 = new SqlConnection(ConnStr))
        using (SqlCommand cmd2 = new SqlCommand("select count(*) as sayi from ders_uye where ders_id=@ders_id and uye_id=@uye_id", con2))
        {
            cmd2.Parameters.Add(new SqlParameter("@ders_id", lb_id.Text));
            cmd2.Parameters.Add(new SqlParameter("@uye_id", Request.Cookies["aid"].Value.ToString()));
            con2.Open();
            SqlDataReader dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                if (int.Parse(dr["sayi"].ToString()) > 0)
                {
                    btnCancel.Visible = true;
                }
            }
            con2.Close();
        }

    }

}