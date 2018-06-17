<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="program.aspx.cs" Inherits="admin_program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     

 
 
             
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 300px">
                        <tr>
                            <td align="center" style="height: 30px; " valign="middle">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 40px">
                                    <tr>
                                        <td align="left" style="width: 50px" valign="middle">
                                            <asp:Label ID="Label5" runat="server" Font-Size="20pt" ForeColor="#333333" Text="Programlar"></asp:Label>
                                        </td>
                                        <td align="center" valign="middle">&nbsp;</td>
                                        <td align="center" style="width: 50px" valign="middle"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 3px; background-color: #F0F0F0;" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px; " valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 35px" valign="middle">
                                <asp:Label ID="Label77" runat="server" Font-Size="12pt" ForeColor="#0072C8" Text="Açıklama"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="color: #666666; " valign="top">Program ekleme, güncelleme ve katılan üyeleri görüntülemek için bu bölümü kullanabilirsiniz. 
            <br />
                               </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                <telerik:RadTabStrip ID="RadTabStrip1" runat="server" 
                                    MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Glow">
                                    <Tabs>
                                        <telerik:RadTab runat="server" PageViewID="RadPageView3" SelectedIndex="0"  
                                            Text="Program  Listesi">
                                        </telerik:RadTab>
                                        <telerik:RadTab runat="server" PageViewID="RadPageView1" SelectedIndex="1" 
                                            TabIndex="1" Text="Yeni Program  Ekle" Selected="True">
                                        </telerik:RadTab>
                                       
                                       
                                    </Tabs>
                                </telerik:RadTabStrip>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle">
                                   <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" Width="600px" 
                                   >
                                    <telerik:RadPageView ID="RadPageView1" runat="server"  ><table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0" 
                                                        style="height: 130px; width: 582px;"><tr><td align="left" colspan="4" style="height: 20px;" valign="middle"></td></tr><tr><td align="left" style="width: 153px; height: 38px;" valign="middle"><asp:Label ID="Label78" runat="server" Font-Size="10pt" ForeColor="Black" Text="Salon Adı:"></asp:Label></td><td align="left" valign="middle" style="height: 38px"><asp:DropDownList ID="ddlSalon" runat="server" Height="23px" Width="157px" DataSourceID="colsDS" DataTextField="name" DataValueField="id"></asp:DropDownList></td><td align="left" valign="middle" style="height: 38px"></td></tr><tr><td align="left" style="width: 153px; height: 30px;" valign="middle"><asp:Label ID="Label10" runat="server" Font-Size="10pt" ForeColor="Black" Text="Ders Adı:"></asp:Label></td><td align="left" style="height: 30px" valign="middle"><telerik:RadTextBox ID="txtDersAd" Runat="server" Skin="Silk" ValidationGroup="register"></telerik:RadTextBox></td><td align="left" style="height: 30px" valign="middle"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 153px; height: 17px;" valign="middle"><asp:Label ID="Label11" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text="Ders Tarihi:"></asp:Label></td><td align="left" valign="middle" style="height: 17px"><telerik:RadDatePicker ID="RadDatePicker1" Runat="server" Culture="tr-TR" FocusedDate="2014-03-05" MinDate="2014-03-05"></telerik:RadDatePicker></td><td align="left" valign="middle" style="height: 17px"></td></tr><tr><td align="left" style="width: 153px; height: 18px;" valign="middle"></td><td align="left" valign="middle" style="height: 18px"></td><td align="left" valign="middle" style="height: 18px"></td></tr><tr><td align="left" style="width: 153px" valign="middle"><asp:Label ID="Label12" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text="Ders Saati:"></asp:Label></td><td align="left" valign="middle">
                                            <asp:DropDownList ID="ddlDersSaat" runat="server" Height="23px" Width="157px">
                                                <asp:ListItem>06-07</asp:ListItem>
                                                <asp:ListItem>07-08</asp:ListItem>
                                                <asp:ListItem>08-09</asp:ListItem>
                                                <asp:ListItem>09-10</asp:ListItem>
                                                <asp:ListItem>10-11</asp:ListItem>
                                                <asp:ListItem>11-12</asp:ListItem>
                                                <asp:ListItem>12-13</asp:ListItem>
                                                <asp:ListItem>13-14</asp:ListItem>
                                                <asp:ListItem>14-15</asp:ListItem>
                                                <asp:ListItem>15-16</asp:ListItem>
                                                <asp:ListItem>16-17</asp:ListItem>
                                                <asp:ListItem>17-18</asp:ListItem>
                                                <asp:ListItem>18-19</asp:ListItem>
                                                <asp:ListItem>19-20</asp:ListItem>
                                                <asp:ListItem>20-21</asp:ListItem>
                                                <asp:ListItem>21-22</asp:ListItem>
                                                <asp:ListItem>22-23</asp:ListItem>
                                                <asp:ListItem>23-24</asp:ListItem>
                                            </asp:DropDownList>
                                        </td><td align="left" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 153px; height: 18px;" valign="middle"></td><td align="left" valign="middle" style="height: 18px"></td><td align="left" valign="middle" style="height: 18px"></td></tr><tr><td align="left" style="width: 153px; height: 18px;" valign="middle"><asp:Label ID="Label13" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text="Katılımcı Sayısı:"></asp:Label></td><td align="left" valign="middle" style="height: 18px"><telerik:RadTextBox ID="txtKatilimciSayi" Runat="server" Skin="Silk" ValidationGroup="register"></telerik:RadTextBox></td><td align="left" valign="middle" style="height: 18px"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 153px; height: 19px;" valign="middle"></td><td align="left" valign="middle" style="height: 19px"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="height: 18px;" valign="middle" colspan="3">
                                        <asp:Label ID="lbl_error" runat="server" ForeColor="#CC0000"></asp:Label>
                                        </td></tr>
                                        <tr>
                                            <td align="left" colspan="3" style="height: 18px;" valign="middle">
                                                <asp:Label ID="lbl_success" runat="server" ForeColor="#00CC00"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr><td align="left" colspan="4" style="height: 20px;" valign="middle"><asp:SqlDataSource ID="colsDS" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT [id], [name] FROM [tbl_salon]"></asp:SqlDataSource></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" colspan="4" style="background-color: #F0F0F0; height: 3px;" 
                                                                valign="middle"></td></tr>
                                        <tr>
                                            <td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr>
                                        <tr>
                                            <td align="left" style="width: 153px" valign="middle">
                                                <telerik:RadButton ID="RadButton1" runat="server" 
                                                                    Skin="BlackMetroTouch" Text="Kaydet" 
                                            ValidationGroup="register" OnClick="RadButton1_Click1"></telerik:RadButton></td><td align="left" valign="middle"><asp:HiddenField ID="HiddenField1" runat="server" /></td><td align="left" style="width: 120px" valign="middle"><asp:HiddenField ID="HiddenField2" runat="server" /></td><td align="right" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle"><asp:SqlDataSource ID="kategoriDS" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" 
                                                         SelectCommand="SELECT * FROM [tbl_haberen] WHERE ([active_flag] = @active_flag)">
                                                
                                                <SelectParameters><asp:Parameter DefaultValue="1" Name="active_flag" Type="String" /></SelectParameters></asp:SqlDataSource></td></tr></table></telerik:RadPageView>
                                    <telerik:RadPageView ID="RadPageView3" Runat="server"  Selected="true" Width="100%"><table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0" 
                                                        style="height: 130px; width: 582px;"><tr><td align="left" style="width: 153px; height: 18px;" valign="middle"></td><td align="left" valign="middle" style="height: 18px; width: 28px;"></td><td align="left" valign="middle" style="height: 18px"></td></tr><tr><td align="left" style="width: 153px;" valign="middle"><asp:Label ID="Label79" runat="server" Font-Size="10pt" ForeColor="Black" Text="Ders Tarihi:"></asp:Label></td><td align="left" valign="middle" style="width: 28px">
                                        <telerik:RadDatePicker ID="RadDatePicker3" Runat="server" Culture="tr-TR" FocusedDate="2014-03-05" MinDate="2014-03-05" Width="203px">
                                        </telerik:RadDatePicker>
                                        </td>
                                        <td>
                                            <telerik:RadButton ID="RadButton4" runat="server" OnClick="RadButton4_Click" Skin="BlackMetroTouch" Text="Filtrele" ValidationGroup="register">
                                            </telerik:RadButton>
                                            &nbsp;
                                        </td>
                                        <td align="left" valign="middle">&nbsp;</td></tr>
                                        <tr>
                                            <td align="left" style="width: 153px;" valign="middle">&nbsp;</td>
                                            <td align="left" style="width: 28px" valign="middle">&nbsp;</td>
                                            <td>
                                                <br />
                                               
                                            </td>
                                            <td align="left" valign="middle">&nbsp;</td>
                                        </tr>
                                        <tr><td align="left" colspan="4" style="height: 22px;" valign="middle"></td></tr>
                                        <tr>
                                            <td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td>
                                        </tr>
                                        <tr><td align="left" colspan="4" style="height: 20px;" valign="middle"><table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="left" style="width: 750px" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                        <tr>
                                            <td align="center" style="width: 45px; background-color: #FF0000;" 
                                                                valign="middle">
                                                <asp:Label ID="Label4" runat="server" Font-Size="10pt" ForeColor="White"  
                                                                  >ID</asp:Label>
                                            </td>
                                               <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 140px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label2" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Salon Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 140px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label25" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Tarih</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 140px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label26" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White"
                                                                   >Ders Saati</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 90px;background-color: #FF0000;" valign="middle">
                                                                &nbsp;<asp:Label ID="Label28" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Ders Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width:60px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label34" runat="server" Font-Size="10pt" ForeColor="White">Derse Katılanlar</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width:60px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label35" runat="server" Font-Size="10pt" ForeColor="White">Sil</asp:Label>
                                            </td>
                                              <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            
                                             </td>
                                              <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                           
                                        </tr>
                                    </table>
                                    <asp:ListView ID="DataList1" runat="server" CellPadding="0" DataKeyField="id" 
                                                        DataSourceID="SqlDataSource3" OnItemCommand="DataList1_ItemCommand"  >
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                                <tr id="row1" runat="server">
                                                    <td align="center" style="width: 45px" valign="middle">
                                                        <asp:Label ID="lbl_id" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                   Text='<%# Eval("id") %>'></asp:Label>
                                                          
                                                    </td>
                                                       <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 140px" valign="middle">
                                                        <asp:Label ID="Label1" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("salon_ad") %>'></asp:Label>
                                                    </td>
                                                 
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 140px" valign="middle">
                                                        <asp:Label ID="lbl_derst_tarih" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("ders_tarih") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 140px" valign="middle">
                                                        <asp:Label ID="lbl_ders_saat" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("ders_saat") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lbl_ders_ad" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("ders_ad") %>'></asp:Label>
                                                                &nbsp;</td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 60px" valign="middle">
                                                     <asp:Label ID="Label14" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("ders_katilan_sayi") %>'></asp:Label>  
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 60px" valign="middle">
                                                        <asp:ImageButton ID="ImageButton2" runat="server" CommandName="cmd_delete" 
                                                        Height="25px" ImageUrl="~/admin/resources_fine/img/mt_delete.png" />
                                                    </td>
                                                     
                                                     
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="center" style="width: 1000px; height: 33px;" valign="middle">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" 
                                                        
                                                        SelectCommand="SELECT [id],[ders_ad],salon_ad, [ders_tarih], [ders_saat], [ders_katilimci_sayi], [ders_katilan_sayi], [ders_dolu] FROM [dersler] order by ders_tarih1 asc">
                                   
                                                  
                                         </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table></td></tr><tr><td align="left" colspan="4" style="background-color: #F0F0F0; height: 3px;" 
                                                                valign="middle"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="right">&nbsp;</td></tr><tr><td align="left" style="width: 153px" valign="middle">&nbsp;</td><td align="left" valign="middle" style="width: 28px"><asp:HiddenField ID="hf_id" runat="server" /></td><td align="left" style="width: 120px" valign="middle"><asp:HiddenField ID="HiddenField4" runat="server" /></td><td align="right" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr></table></telerik:RadPageView>
                               
                                       <telerik:RadPageView ID="RadPageView4" Runat="server" Width="100%"><table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0" 
                                                        style="height: 130px; width: 582px;"><tr><td align="left" style="width: 153px; height: 18px;" valign="middle"></td><td align="left" valign="middle" style="height: 18px; width: 109px;"></td><td align="left" valign="middle" style="height: 18px"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle"><table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="left" style="width: 750px" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                        <tr>
                                            <td align="center" style="width: 90px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label6" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White"
                                                                   >Ders Saati</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 90px;background-color: #FF0000;" valign="middle">
                                                                &nbsp;<asp:Label ID="Label7" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Ders Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width:90px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label8" runat="server" Font-Size="10pt" ForeColor="White">Üye Adı</asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:DataList ID="DataList2" runat="server" CellPadding="0" DataKeyField="id" 
                                                        DataSourceID="SqlDataSource1" >
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                                <tr>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lbl_ders_saat" runat="server" Font-Size="10pt" ForeColor="Black" Text='<%# Eval("ders_saat") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lbl_ders_ad" runat="server" Font-Size="10pt" ForeColor="Black" Text='<%# Eval("ders_ad") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lbl_uye_ad" runat="server" Font-Size="10pt" ForeColor="Black" Text='<%# Eval("name")%>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 1000px" valign="middle">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 1000px; height: 33px;" valign="middle">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" 
                                                        
                                                        SelectCommand="select d.ders_ad,d.ders_tarih,d.ders_saat, u.name,u.surname from ders_uye  uy,tbl_user u ,dersler d where  d.id=uy.ders_id and     uy.ders_id=@ders_id and u.aid=uy.uye_id">
                                   
                                         <SelectParameters>
                                             <asp:ControlParameter ControlID="HiddenField3" Name="ders_id" PropertyName="Value" />
                                         </SelectParameters>
                                   
                                         </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table></td></tr><tr><td align="left" colspan="4" style="background-color: #F0F0F0; height: 3px;" 
                                                                valign="middle"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 153px" valign="middle">&nbsp;</td><td align="left" valign="middle" style="width: 109px"><asp:HiddenField ID="HiddenField3" runat="server" /></td><td align="left" style="width: 120px" valign="middle"><asp:HiddenField ID="HiddenField5" runat="server" /></td><td align="right" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr></table></telerik:RadPageView>
                                        </telerik:RadMultiPage>
                                 
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                &nbsp;</td>
                        </tr>
                    </table>



</asp:Content>

