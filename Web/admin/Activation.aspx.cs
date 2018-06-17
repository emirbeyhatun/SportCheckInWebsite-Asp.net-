using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Activation : System.Web.UI.Page
{
    string ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["DersDbConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, ListViewCommandEventArgs e)
    {
        Label lb_id = e.Item.FindControl("lbl_id") as Label;
        if (e.CommandName == "cmd_active")
        {  
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("update  tbl_user  set active_flag='1' where aid=@id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@id", lb_id.Text));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            

            DataList1.DataBind();
        }
        if (e.CommandName == "cmd_passive")
        {
            using (SqlConnection con2 = new SqlConnection(ConnStr))
            using (SqlCommand cmd2 = new SqlCommand("update  tbl_user  set active_flag='0'where aid=@id", con2))
            {
                cmd2.Parameters.Add(new SqlParameter("@id", lb_id.Text));
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
            }
            DataList1.DataBind();
            
        }
    }
  
  
    protected void btn_save0_Click(object sender, EventArgs e)
    {
       
    }
    protected void DataList1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        Label lblDurum = e.Item.FindControl("lblDurum") as Label;
        if (lblDurum.Text=="0")
        {
            lblDurum.Text = "Pasif";
        }
        else
        {
            lblDurum.Text = "Aktif";
        }
    }

    
}